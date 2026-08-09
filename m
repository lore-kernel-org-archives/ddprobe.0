Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E24F1E0E14
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786279834; cv=none; b=XxglnoyYoKwVLyxRN1IoUuK9gY8A+sc2/5T6Eia7WvJnUMtZtTAtiLtV4DG5zfKbYLx7ZkjkarTPCEqnKIJVlxrKVtFNdG12fT/SsVhOLublyNzGUrGnwWTy1tEEBT8BAsKgASerZpMVjAPp26EyBUEPS8W366JWG+rXIFWYjIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786279834; c=relaxed/simple;
	bh=Px5dKhK2kn0b4Og/DEiZ1PxL7KSsDaCq6tjNCTImwZk=;
	h=To:Subject:From:Message-Id:Date; b=dPUD0cONC66zxNXpvQmntsf15H16UTgpkrKRcxz3YQPGg1V899oJixfoETIwU/DpXk9q50316g3SeaogOwjWnpH/eOs1RM5/muCDHARLDi+tCYP+Ct8FyqV5nlyPhdkVofSpjLUh+HOIJqLa6r0QntJv1CYoUkCFIb8CYmqNa2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOi4leuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOi4leuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF23C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786279833;
	bh=Px5dKhK2kn0b4Og/DEiZ1PxL7KSsDaCq6tjNCTImwZk=;
	h=To:Subject:From:Date:From;
	b=HOi4leuQ2SJtnO1MZVlm3hbu3h+0mRf5wSmmAoaj0vOSSQ746DpGDgOvZtrSKkQuw
	 hc0r3v3UFTgSDRzGxa3J7rCzMiOAogp+FSTIzNvKUsUdEnSP04/IZ+sKqDz/1iTYvD
	 i2H2Hvd0PWVTWCXOUYt85Nf4BmBR2uSNc+6axCkSHbOKJNYcBlfpvtBgaiDNWF4Yfn
	 OECI7xRm+6v1Oo5CA1b2pGyxK2kpPEAXunjCuszbqyfLi1zAxhxVtThRWvIWZP8koc
	 wIrPlEN5Dp5BIz/W3qMnV68pyNmI0eQjPHg8VvPN4PIddH74MhTyR23S7ohEnNoxZO
	 ce3rtkM+g0TIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2BC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627983370.1266.3786670178124338187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf645534ee446dcf2a83b1c56bc2b8d827ba756d343877043ab4c342f51ac765
Date: Sun, 09 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786279833
