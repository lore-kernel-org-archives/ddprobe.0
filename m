Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3011223BCF1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745583594; cv=none; b=mXaiHP74scZvw/zdt6jsgdSPxMsps+i00KD3t67Q+ZZMUc9wuImns+0rlHYKyZu7FbmOP3iRivOdxKMJtK7ZiRxt2sG/9uEaTPBnzLsKW6mteXj/xMplhWpIfgLqSFXMWI2RVB/YOb2SRCOqxYWBZOhrQ8A3y99HfFSb6YiAiuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745583594; c=relaxed/simple;
	bh=dCOuRNHnPaszhMc1Of5doTUBLjVzHNeFWaPE9b8BCLU=;
	h=To:Subject:From:Message-Id:Date; b=qH2TET49q+EMFw4xZRpfwz+u88GxNdEZOnD8RjOwnNuvaTNeb2PbyNDxOU6Zu9rBmxm7LJBYLF9mBQNu93/E3NetAhSDR/nlGCm/oiCudT3jncV77GluznPJfVZ9ctCpI67r+qZFO4X4QMs+XP0K6fksItA0LW04C1yb4PdrC1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK37dubC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK37dubC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4815C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745583593;
	bh=dCOuRNHnPaszhMc1Of5doTUBLjVzHNeFWaPE9b8BCLU=;
	h=To:Subject:From:Date:From;
	b=IK37dubCtSvR+zC1Jq41DJIy8hqr+KL9vPJsaVXl30MDo7LxB6s3MeBjGVn9sfLAS
	 vdI6q15pmhoVLE0AdBrc3FfiZNtHLmmUqwvyTzWeNYo1zALCCOXWopLF/KdDQNTzly
	 QooEUGZITzLQr+2Uo9wPnaUEnaaJ1zLIodB44yeXPH5dgbyQQ91fGdR5Ey58/G8x+0
	 1m8jaeKQT55U7ye/3K8o1nXrRRZSo95IJWr4Fv5cMtOeOmm25hUX6oeggRrIF0j4BN
	 H/Nsb+okh4PNw7O2IMO0U8zesC1mR9erUrp2ZB+MpZqjr4Sy3I67JNzmgj5YfuiFOg
	 BHLzCXgGG5c4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F490C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558359357.758.7728178187884654654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bee847c4f01d768ff1ffb0ba4d3097750e9fc983cd408b922ae9227ce1bfa7
Date: Fri, 25 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745583593
