Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7D2D46A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783604314; cv=none; b=u35JJgQJ0dPByiXNNTWqJmVtRvpCzuJ1ls5ASCyIso/uUPAuleGBdpW5LVeBjEgyEmuy9OWN4+djgSy7rf+U3s4ueWj1rbFblXCwiNOSKX9ylHHJHTS1M3j9rF//l6b53iJbZ2chfdAhsE5DhrKd4S0z2rhnwLEnu0v7xHXXSo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783604314; c=relaxed/simple;
	bh=sgEBfabLgtbXg/Mf5i85QOeQ6cDTCVjR6uaQ5scToLs=;
	h=To:Subject:From:Message-Id:Date; b=fnFQJ1TbFjOqbPOR9z2ekd1/FGt8HdWRaDTSGwahNDulXnb+bSeWhwDpslKB/ahIhy0tecYt/spdTzCBYEW4GgD24Bc+gl3h0g+bju6Uvu4kilHKwEZqjjMiMFyNS0Sq8Dg1NGhAV2FwcqwIXKakQi58xc6dSKS8joYEJlUnmqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGlF7n61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGlF7n61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05DFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783604313;
	bh=sgEBfabLgtbXg/Mf5i85QOeQ6cDTCVjR6uaQ5scToLs=;
	h=To:Subject:From:Date:From;
	b=gGlF7n61koohKeTw0aH7pjVmEkSN0LbRTjlrIYvTatFogms7A3qONfShpkx+7ULD8
	 KD4Bz8MzkjJgF3i3iMPjrdt5TTYQCt1jOe88kYcAScQH/iHP5xGz6Y3J6NFXPDDP5k
	 J+BMAnq06clV4HG3XuqlNDvZkvcf0OFdo2tjFqoDvdUTJfm2Behc0gB+64bNUEkmTp
	 JcrcNft3XhYUBlcNW8tpvYD5fSXU3dySci2VQc84NpBqZa4BE3ji1+VIII1pklLNoM
	 enx0jKP5tz0bMYh47/n6dnNOwmSvb8+ds2VEEGnKmHmTFW3waGEguJJNhpnIuVUU+j
	 xWVdvSM1VMGLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360431368.4548.3361922055160130109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fd91c0035c286700e6ba752a6fe9b9c1c7f8373acf02aa185da8f816e98ab9
Date: Thu, 09 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783604313
