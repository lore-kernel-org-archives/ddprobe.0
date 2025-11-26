Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8DC219A86
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146574; cv=none; b=Hri+n1kx9WgwHeNuPpdvquPqO4t/c6wf7Zpx3cUAluzJtUqB+CWDjk50thffwmuikQG4F+qbwPR/BdOm7dG5EzmLQ4hWzvJvYdyvHCwg/1J6ITC4nFHNRGf0QiAR8B1sY5TL2BhwRtO2H4Rod6mDFsOsZuMHKrVyn+2zg+mWNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146574; c=relaxed/simple;
	bh=MAFL6iZdyCBDvBJM9MZMle8SwoOIp6et6D7E3IpjzkU=;
	h=To:Subject:From:Message-Id:Date; b=DxH5hQUtAAbUcg0vGmjLpA4Hq5koEDpUXATZk9cv33ljVjkv+g4GLvEFSnOP/MqaAas9N4CLoZJNTKQewf9e9kWAiALBSqr5FjNBS+ltF+I06TMD4gVoywX+juiNOWPjqFegCrMwqw3+Q8n+uAY+VJ7OQuHM1XS7tYgPd6MZLnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L621ULD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L621ULD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF5DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764146573;
	bh=MAFL6iZdyCBDvBJM9MZMle8SwoOIp6et6D7E3IpjzkU=;
	h=To:Subject:From:Date:From;
	b=L621ULD3gsVUUz3SAeboHaBOJ6vlmpVoiBtyG8gRLUa0k7aX15gRgcUuyqTRPmGMW
	 kzm1Bwxe1YugKcEPZfMp9s0EqmXF8mmsZl2wC2fZ/wRsAFxD0w7t/17fqZteaB114u
	 cQbE3D9OJkzBDpfxcWk+VySAISzS3p2o0VDHAosOWWc1qpVBll+RS/TB2FHfQmXzXX
	 8mWuLzL4DtQdfPpSOt//DfMXQJu1yr4V9lnCROBZdhxtDo9muBr0hOwyi+TxCs8aIK
	 KynBJbFYPR0ML4/VU7TFDs4HlAmYU0QwiKKrCjAno0IlKMuqS8owM0JTHa+TqKw/mq
	 RQDsAS3OMmeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A89D10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414657358.6186.14758063797924896406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9653f870ada10192de751784a45f88da537de46401790e336406e2d1dbbb109b
Date: Wed, 26 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764146573
