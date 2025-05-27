Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF81D516C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748375394; cv=none; b=XloRIkISrdyt4XeJa80pTmKmFIvaA82wduZCQNXTtLOb6iWQ3amkEsxdpsXo0tYQsr5fwQrZGT3UwMNfyh5hG1TRLeLI/MRkJFvKXu3zxi+1rhWXfMexJnFuE19FcdtS8CWLCWfjjfilpLuq9fsYNUDoFgzgLCbeB8q67LsAHX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748375394; c=relaxed/simple;
	bh=evScWLxRSRHtGC5SdxHDhz1qxx9VPiy+54SYakHvBVg=;
	h=To:Subject:From:Message-Id:Date; b=KN5K1lz8silIghS/umR+myyO324gvmQsE5En15f0XS/jIy1/MJPsD1lEwQ/lTCnPfagUlQGqdv4NM5rEA+oAipLsB4jZZ8JNh2cl0RVu3iVSu6T1CV0VA5Oq60XwJ3VW4aDn5vS/MtfpoMQcFmS6q4/Pls2tCRPPdznQXe4Twy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC6csNBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC6csNBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AE8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748375393;
	bh=evScWLxRSRHtGC5SdxHDhz1qxx9VPiy+54SYakHvBVg=;
	h=To:Subject:From:Date:From;
	b=ZC6csNBUkVjYeHkoZ8jXC42i6Gt3shBqBTMOdOgrQQOISWzFJYPrGRE+v437bUUbb
	 Mkz1bdLYA6U6cwFfuuooezRdVt+dUt+BLpfpGBJptqSfXslMo1Y5/4U/47gbE4MIsO
	 dVNp+AFrBMem991AALHSoQIV4PhK1J57kNzcYVtFeX7ybqmDyaT5grAoqsLvEtJ/M5
	 d106m7npQvJTDdXoY/X7sm2n71remBw/sHKyDRu1pZ8+PdOBe8nxsu1tZuSWyP44qz
	 ZgW6Wh/rVrt1KMfjYq93gJCm4m4/jGvoTFyUtgmG+cZ7zYG79LBAsXNFHNvMaIKOEQ
	 uHmi0M07q1gTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA639C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837539368.24926.4319861864438388460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be81f7be8f868059ebc7a0766ff28ad439039ae36269d02b8cefafbd2f8dcd53
Date: Tue, 27 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748375393
