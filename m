Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0C1DE8AE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763601714; cv=none; b=QGSXIJdn+VW9p4uLPeV4fGp8zgDghb4EwQNcDv5nPBfu/ce6joEpEceDCddhcKZ1bZ0y5xkwiBZlrdgEOSwCw0Hs5pwID/RSBCe875Pp/yGBY1DhDNER4X2vHEaXtGZ9GMCh+w4DdfCXswh4zokFvPLEBaFCkJx8SdrwdXnKNdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763601714; c=relaxed/simple;
	bh=ObOjyn/OURuMzSlfffp2s+i9lVkJim3hako3auqOn1U=;
	h=To:Subject:From:Message-Id:Date; b=NFTSJWKT0ARmL86BwaLpV1sddkLea2WshvtwfgQ6ukI2WJyUeiyrjocSU0hF6nVfE5Y3Za1D4XfxUUJtLiihuY6RfMT0Zt7BJn4NmC4VOdz0aHZeh+DbiuN+IM8bVvzS1YymwqldcOhtLJs1bhLtCaR4ydnUpiq3hOg06wxvC/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlhBiW9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlhBiW9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42A2C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763601713;
	bh=ObOjyn/OURuMzSlfffp2s+i9lVkJim3hako3auqOn1U=;
	h=To:Subject:From:Date:From;
	b=RlhBiW9NG8pQw/LBSNscKqnYLNR+QkdblccmV+SAuLfQTp/BqJTDrpOvVjOA2mq4G
	 s3Nt/mfmpDGagc7y3pW+OTkagXg+N+HMvy3r4bUsjpGgDsmDBfLOWidZjc1te1yEGj
	 BRu63Tu5CEKjw1tQosHraAQ+WeeFUv0AeUawE/vrCZBKiUAILJ1JuHjYPmUpeHWGLJ
	 a5CApXgV6xBerNWj8c/5zsyWms3v6M4aQSA4zlN8K18Tce5oZJ9+mDzARlRW4jBRKr
	 gRdqocrHSfEsqBEwpmq3sRbdS12fpbIAXhk65MnIIMkYgsY2OvaUvov4XFM/Hic63r
	 bhgcwjjjK8C/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBDCCF649C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360171362.3607.17741314865998292083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcfb4fa49cc3e025795ce815156db0ddc02c4dd01d3e06e3288121229713e4e
Date: Thu, 20 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763601713
