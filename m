Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454C3364E92
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781162794; cv=none; b=pXNPW8saDebb/axWmHcaaGeumyLCzaDhTklU/NjMNI599H3S8Ebs7bOvAkPWunKxgDe2Sqku55B6ed6N6sTW8WTddWUqzR9J1i21gbQf49ufwbffEaD1xfEmTzTB+Z5exSg7JlH8IZsJHEzN+4Y7kuJ+mX2Dt5SUfOms5DCn+og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781162794; c=relaxed/simple;
	bh=VSJcH216YZJ09sialDPewBRVwS3EEnLh4CDYsRz0mdM=;
	h=To:Subject:From:Message-Id:Date; b=fmsUo4brdcNh8z1tPPFBZr/foTANMWEOQmQg57NVRjPxDZo0aIO3qcHWJByHPvEJKW6z5RoouL6RJjORdSLNYig3AYfGxiwKU55d6Mt3aUt5/gGIxXxTIBYYnGjfrb+hzdemMSdSfM+DRYhHxVhdJBlpyvdlDoZGYDRWzwie3Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpLEDyZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpLEDyZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D46C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781162793;
	bh=VSJcH216YZJ09sialDPewBRVwS3EEnLh4CDYsRz0mdM=;
	h=To:Subject:From:Date:From;
	b=rpLEDyZXS9aooSC8lrpOsT+juOJBd80usuEa7w5cHJIO9225WukUY653UFqY1rHGn
	 Bxx1B8M+H/bi428m8qYoOyetrcQUXrIs3YbvBbhAYL/ssHz4CPnv4Uz166jtk8Wc/D
	 9OF/7kr9Xyt1scvtvmpFnISPXjnleyHXY/BSO+F+ET8s8Qpn38twNOs+v1q3sChIFc
	 sqE+9uKFN+hrk9B9r1ZKwBcSyup1/+NHyFSbuJLX3iI/L9ExQdefZJhmEOtPtQTIlI
	 TiK3DcbmyWJc4EmgyQ59Bdpvnf9jNVwy7WVUnKnaw0Cz9+fdM6zU8zGJ2s0Z/Tum5r
	 saGfO+BA2mObA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD239CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116279369.23668.3176867568539186759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c6f539dd713b8ef6f9b52cbe38c86b1a81c028d9e1f1a73e38798920b11d48
Date: Thu, 11 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781162793
