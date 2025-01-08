Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AF2594B9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736304354; cv=none; b=SIwiKbSewl43fCM0Gf3McaiKwhEZFOBP0VdtkOWUbJjacNV9k/OP8IhmwpjBebPIabThUhzZtvTbr8hWHWQVeeYCjiYxvSWBGeag4+ic2u08YanHHEepfw+v7JhBuo7xZowqreIE7U/Dz7MXiA21kmRDNiLQt2cr3vvWaCw3e4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736304354; c=relaxed/simple;
	bh=ypuN8izrOKj2qTO4pJClNu6Z34ASyMcypWK8o4A8hsE=;
	h=To:Subject:From:Message-Id:Date; b=MmdV0cVdL3kkuPa92MXdGffm7gPDY3IGSFSiDQNnaHcswQ3650O6wFvg0x4LUtThIldEIe2YbF9K80UfGiRn8TV83ap9rZKRKx4P/RSuxPLK33dfJaCO92xeTQqwfegSNOdrcetw0QObatfYPNI2QxE8YsW0KtVYNz7fOMu9MG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNw56gyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNw56gyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5969C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736304353;
	bh=ypuN8izrOKj2qTO4pJClNu6Z34ASyMcypWK8o4A8hsE=;
	h=To:Subject:From:Date:From;
	b=ZNw56gylW3In5QiGnRrAKMnqihNyCluV2dEE981DiP8mhPtDl6Y9vm/QBy3sP8w3T
	 YdixlsX0siuwaGYvfR9LQ2i8nKSah33up14Urwy7Y5hp5GaRLIYqZNOP4paxlpfgOU
	 QNhacPPCcBh7ZsA4LchzlO44PhtQtJ780yALVhiGiiOT28nMSc86pQjvselqA/FEpy
	 xkmgIQnFLu2Gg+QIMM0s3e6PVPkvuhen51svVYJfAMDzQdalEOwPkxURHwJY10tS9e
	 7pZ8C0KsL0qIiGS2HbDIJtJGE0OQHMca2slfvYqpee6Nd6CZE/POlbCxlT3c9WgCDa
	 foLZHP6FP+ZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157BE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630435357.18442.18391534434272256805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd060a2dd9cdb74d8c5387b14f17487ecabdcb8405507abbd4cb3e51e744ccb
Date: Wed, 08 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736304353
