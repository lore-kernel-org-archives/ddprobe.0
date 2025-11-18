Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF382FE06D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472116; cv=none; b=NJH+firxTkSZkIxNZobpzT/RJ5Ci5awTCYfWa4i7sIrWYZgeEgn8X3uyk/kgjzufrP/4j+zKdOEHnm7OSTgiOVkMmZZH88cJWJ8jhscsZt8X0bKeiNU/fWC5g6cZAVcBIPrGIwbrB4L2zOmKRPnEi35gzplItomtTnpopqRiCzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472116; c=relaxed/simple;
	bh=tjboEKXsaLPDz0bBcKH/S9q/4UT3/JJTtEKXZ8/aBhc=;
	h=To:Subject:From:Message-Id:Date; b=j/qqnbvCCnXuwaFaSHkxBw8OVVwqUezAUDf8pPYph5Npbe5WN5TqRh6lPPQ5ML3hdvWGX0OeuRCDAxT7dZq7MQzQV0hrQpnsZ+5Mw00F061sQnjRar3Y3jJlBe8t//it0aOTv5FK7irpbePDuLfsDePMmHKGWft9QvNhvm8i7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOrTGCw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOrTGCw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B31C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763472114;
	bh=tjboEKXsaLPDz0bBcKH/S9q/4UT3/JJTtEKXZ8/aBhc=;
	h=To:Subject:From:Date:From;
	b=uOrTGCw46ZgfhITlwZyZD1ChqxHd1O2DZ+YotMao0NdJYU5eCaU4RfHEmSLAcpgJz
	 iSuO3fRkZnpS/JbshMkGjpGJ2A9zmnJhYV1K6/36csNIzeRtAz2YjYHfLDHtohZJjc
	 YfktRsL/l2iH2LT3XNQfQ891wJlTYgUOgfY2e98kVM/+SYAbAynmhMVx7Xmy7/6a0p
	 N1D3KnSJPgw8dUOMaGakdxPxnOMtrwrcdQPkDjfqbi0NCamcsGBDzgDF+6KHn7MYEZ
	 +nGmbjFXTJ8GiW8/+/4sFoDLR/YUQJVLpf83x/R+lQGJkfy1wS+PO2fHDFuo4OlRkm
	 YR/jBzXYaU31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9ACEDD86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347211358.13431.18222338945830645733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64452dce99888835a553c766b5177578f0d4ee9caa8862812986bfb10255b0a8
Date: Tue, 18 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763472113
