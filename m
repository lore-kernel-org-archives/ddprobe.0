Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327629A5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751767794; cv=none; b=fmkJ0Tqyl/b9vAf4pSprauYBx125ImEH82FyAOnm8334LFfBK8Ov5D2zs6Gwtj2iqdbWKNkRVZKJ7kOasbL1oMCjX3BFn7wZtTqATi+MfSNSCpwIc+nGRp1OsS3icNzdGqSWNn6K/ZNITCetcJcUzfkwdmE75D2UzJ1j6YYCLmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751767794; c=relaxed/simple;
	bh=NkWKQwNgJUlVMpeu0uHgrpypGdll9yDIxtcU60qdqLo=;
	h=To:Subject:From:Message-Id:Date; b=Vo/Rkri+AsaQS1P1is7llJda2nn93KefyefsBR35rN71JhXC7b9jvmSRc0/8q1o56N1mkQhBLEH/+iTqBEPAzECuy7Sd0tXu9MZFdNx7LB3/zHD8mITv8fPTdURfdO8QsfPaBjHEODU2elhUnX9jAaa2hqjbt67HfKmjW4GhTtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSSjDs16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSSjDs16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C50C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751767793;
	bh=NkWKQwNgJUlVMpeu0uHgrpypGdll9yDIxtcU60qdqLo=;
	h=To:Subject:From:Date:From;
	b=VSSjDs16NVJbO2RFL233dRmF7PPYh58ROZumlqNS5xAtjosLsE2JyelZJf6xlzo02
	 nuE4sFc7Rw1R2HPzROXSVRTKTxzLOODPTG8tI5CxDDrK6kY099eTo203hd22AqsBlt
	 hoKss99INbYQ14dS2zsfb3ZcCTIBbovyvs/gdLBwktTfiy8bBYl51nnNkbfftNaxKz
	 dpZblAe40nEmNQ6ckhE8zCBGqbfxNI53A5EVy1L2i+xmPbuKE8A8V450fzztcA3CqE
	 INGF6YQovJbRBxxH/cnTa4Rtx9rDGNByTfrtsbod+ZOxjwvTsrawj9HzUQK6iPfaHt
	 0SeKH2yBkfbwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E773C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176779357.24076.4118738681127603646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97367c3d0dbf0236cec9f7ee13ca268501d9cd58cf8a94b55c1c542ca18ce424
Date: Sun, 06 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751767793
