Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C53F29CEA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720500383; cv=none; b=WmgCMVj5L4oXmoEZSg/9rviTAfhvaOtRb3rFCiuYmrzqr+zy1Re5NBcEZIxnvo1nFfnfcmTHQxyHmI3K5Ku8M+ILNdX9vq7zhdTT8RomP/7CT2PtxDPQkhc8Yc5PH/lfAMy+LVve49qZY4pjh+OhUakz143UfQkggUW6NyZsJAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720500383; c=relaxed/simple;
	bh=IA8QIljhLoL/njUTghGjFLT4bmqIazIMCFiChkR05Bw=;
	h=To:Subject:From:Message-Id:Date; b=qrvat3gYNVoaTKHovnxRZntQfwXoteptiIW39voTmqeqMzp66TB9KopgiO1ResT/drTYmSAIx9w1hBzWc2OKXmN5oSKs2dGZKHLS6VggYEhK7o/apeDsiCuTXcwFYGCBYtzz7uRJ3VlSnm4TxIDwUDFbpWH7uRIGkbvzvc8LuAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR3Dhh3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR3Dhh3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D64C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720500382;
	bh=IA8QIljhLoL/njUTghGjFLT4bmqIazIMCFiChkR05Bw=;
	h=To:Subject:From:Date:From;
	b=bR3Dhh3+ULTfuYLf+1nOAl3vJuqXpAVLfx4Dr3mK/kiqo6d8DRbCX8Thaox+VyE2D
	 8ZzZQESIcMb9Pd/Wst9BcfAaMObBCCB0cRGQ7ZzKehuDxgSAvtN2SiguJLR2SiIesN
	 +8FbrJeja9YY0EdoU5/CcKJ2JIjlJSpSrXX8J75lVFIJ6/LRcHpVFSoFBaW6A5El3d
	 pbE9AWGWYgND8VZg+o1NTirZwGlgXFAIIqztll4JophMTKn+jr+LHqbwQNkphu8BcD
	 u15USHhEdLfrASFpHtWgMuc1Ckx6aglWOm14/94eAZqGzOKKDpXZ0z9aIsUqXHWkVT
	 zk09wepv3Ca+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01FEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050038276.17489.8386096730252902930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496af78afcb5150d2d1db2ff45ca53cc9d7ea9f069c9efee9848caaec429184d
Date: Tue, 09 Jul 2024 04:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720500382
