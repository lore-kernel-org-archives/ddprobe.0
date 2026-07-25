Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60560318EE1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784955034; cv=none; b=I2MdNhacN2oy7z8cbiAbherjLY4BIdQIsM5DkqvyOS4t5Vsv52fEclv55HiTvhjF4UT84XyELySRdAkufqj4QslLg3UlyeEyhhI++OzWb/Qb5MFWQGDJ99jEX6j4/Kr46U5ENRDipoYCdPtHsXca0eYsMHL7YVnjwHxmoEC/NUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784955034; c=relaxed/simple;
	bh=aAnL9zAEKRoTyvd3w1627TcjG06iMjHKg7SKOOxFxMc=;
	h=To:Subject:From:Message-Id:Date; b=dtpVLJ2cnD4gz4iviTNv2+yn9VgaCDPJqRIl7suRT24nPhcq3jgRak1MVC4nbFtBQMvTxVDqzm6XacMt4Us2bVHIosmjiGWmifS64rgw0w1CdmESW9+8kZ66mhqDS1oXoVSHpCN96iWRwkIkQS88fRm8jkUuWa6L8r7l1WMJrHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inc72K7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inc72K7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477DC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784955033;
	bh=aAnL9zAEKRoTyvd3w1627TcjG06iMjHKg7SKOOxFxMc=;
	h=To:Subject:From:Date:From;
	b=inc72K7aTUO67+8wAeV+b036lmxwYc1KLe2QJMAm3WpWO+JxvSKzpFILrOjClpt5i
	 xhu2mJg7dU0m9J8djoXxl1G1vD2cwf/DV1ANpRCpw81lkgnPTbmrDTdNfX5+ZdB4HG
	 7cCKyvbcmG60sKWBUqLyztNFOOVtnxrQ6jxf1pEPaPR5pPFGJxSXMydmScOcjGS6Lh
	 cthFDq89dVduxOxNb04c2DYskaoMI2I505wna5ugkvd90hjmSEjdBs1QG3MsttZwyx
	 n1Mw/JPboAE41iYR3fIJBTvyyH0b85krL98L74IFaKTVdBhkiZwcQPBuSsqM4Et/Is
	 CLxZZzMsaJKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1D9C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495503368.13619.1900883726175681747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6953235cd6f5d0a087f758e4b80174122feeabbd3d4354988ca839fb2f13429f
Date: Sat, 25 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784955033
