Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124C94C6C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768646034; cv=none; b=WAg7DC5So6r8S7fjM38/6QIUGQKYUZwqRD4U7NpWxfCxEDpvVPSUo8KhaXXrzEtZg8+Bw5o0ScG5Dr4N5bDeh5uyuexv1abyseEy/aYYdcjx/8nnHZnWaZwb+AFM2z+UJaC7510Cs2Nef1z1+GOvS5WouZSw1WYDbSmupkOBNd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768646034; c=relaxed/simple;
	bh=7FbBI+ymjaF/DiDqkqksxUOqW1wXWeqfdFJ318s+3H0=;
	h=To:Subject:From:Message-Id:Date; b=omyVDMbq8Z5TeUGCYhHA9YeBsAIU7Ye1Kf46q7NgXBSQ+q10l6MzbTFMh38/dLjjDEYYc5h32Xkmr+La2SnX1lCGSxcXceitJ7fSJyl/nQ3Bp/X/JIRg4Z1NIcV9o4FL/7zzNbWTeGyaMrBm22DEVDVh+1/TMYsBJnM/ZpC+GN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W57BH4Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W57BH4Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768646033;
	bh=7FbBI+ymjaF/DiDqkqksxUOqW1wXWeqfdFJ318s+3H0=;
	h=To:Subject:From:Date:From;
	b=W57BH4IkVLSWo7oGeCAPbjEJ4IX78ZuvQV8aaD5A4DmqVMyL4YwTh+yc/KTr7no7U
	 xvSJLJ/kJDKxYlk4zyGIpvTVh1SopJcrlPKx81sw/FPRJd11afDIHfM7KgS0V/3J9p
	 AYOn/UlhmcPQW36UFumBu2XyWLlVxTyHb2GWQV0HLykW3h+Bc0G8kwSVHFA8sgvGcG
	 qiZpIx0OUZIu7Yj/E/Pq/zXRPZ2TeK//F9K12NHs49O/6JEk68IN0Ldl4dJEpQ9c1M
	 tVDA9983/s8SQIaq4oJ5OJc4btZYLmDW0CICJ6Jjzgd/hMSocHuhDXaWiYf/x4r37c
	 Gy8sQF743EUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE0C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864603358.27799.17049928988340486528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d302ce2e0b891a80902ea0de61e94d2379d3b4a1f086cf92b9ace524ffb86a1
Date: Sat, 17 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768646033
