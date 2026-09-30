Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7CBA59
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790742634; cv=none; b=GkAUKKzmsLvH+J+Sse9CtZep04yuKwKrYCah9NQFZ4dZvov42O5wcWkPjiGIHwUDUDw00OVOUVCI57WMvsG3I+aeoUuz3i32CBYDvSv7GbYReqadry+xWMGXv4dmT/O6uDkiOdTgetPXzg1e0dEHwCv4Lp9Samw9u5/+ZWIGPX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790742634; c=relaxed/simple;
	bh=jdf0CrDTu6AxtP7AT6QGnFlCow1hGW781bMnLsI0f7Q=;
	h=To:Subject:From:Message-Id:Date; b=TNlSBlzkf9DstJTJI3As6KeP4RDpQuNAuAt00ptXzZB3yRBQyRAnDGkV1NqRz94QQwo2vRP1uziPnK1SDW8xFH9vhLpeA5SpLM3M931WFnXndCsF4Dhp1r354T04EAuuYR31cJPB0VSzG6fOvhspTDPhmCM8j1t/jv7gL2LgPKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4fBYEeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4fBYEeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BF0C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790742633;
	bh=jdf0CrDTu6AxtP7AT6QGnFlCow1hGW781bMnLsI0f7Q=;
	h=To:Subject:From:Date:From;
	b=Z4fBYEeDOYQtaO6UdvxPeympuyGLrf04slnwZPGoUebIcyN7z8TBpDNDBuCW8G8C7
	 9tCWBQhpkmiSwQQdcv+0Q/ABsd5zNA6PXNllVI6Wy1ZEYVSOpDrP2ziVqmOiDIIeRd
	 qbeuO9tdO8BCY5KgismQ3ezpiJJQvQ9SB49/erjVfr1TIP7lOfcyuXY3C6j8w1oGzu
	 K7l9hcSpnxKnxoodCl7pmxzoJtJSPjthVJmnFbKT+yeATaMZjV7SCE4B6FBP34HgAP
	 9MfGuYCRC6xVIzdlnPLrsmO0MrhDjGQ1IoIm22xKFoz61A1yz/ZFCzhae+lrgja7JY
	 szdo379zY98YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB0CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074263369.20123.9158700288269026488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce166c9775f6578019829aeef9ceed91c4f550330cc31386f50f42bedfa751c2
Date: Wed, 30 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790742633
