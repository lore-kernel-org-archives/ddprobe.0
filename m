Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D35930BBA4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757539795; cv=none; b=WbPyIrraM8ZozWLzbRSlLimF5DBaeHxvHp/VuhbGqfj5R0TvJlP3V8dDy4q272OC809jIB9n3/6F1DspCC8COlC6ypWYUqx7r57armviQJMWnW5syYqqzQlUSnmMytxSY/KDz6U1r8IV6/EAt3vc2w1KfVdi8+qAG95kzUZz6v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757539795; c=relaxed/simple;
	bh=9nfC+7RWQcUETdlnkh65yf4yf3AbvOB+H9ESMh5lKwo=;
	h=To:Subject:From:Message-Id:Date; b=kupafGy9wVHAsO8k/s3143YVxI2jKBYlOvIzwsYRkeuSkAkYU5YwC1gVUmrK334OyqEVD6gv0nUPq885W3OOi2GLAncZfA6dyH0zE3v0DLXjzfKIbL5uMWyuUxPOMKi3kOQB09FbHaz1OxwFRlVG6Fj5QmyAx5L4lRDN+OYxSOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBiAjM7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBiAjM7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1969C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757539793;
	bh=9nfC+7RWQcUETdlnkh65yf4yf3AbvOB+H9ESMh5lKwo=;
	h=To:Subject:From:Date:From;
	b=tBiAjM7q8BOKUBy24L2qs1bpBJLLStKzqrr/c+/DGox3ldah4RE9fOhPxToGyTlT+
	 2B+l4ZYJtp+Ls9JNc2cL/ZibVJodXKhdxX6ncdXHrt14PWkma3zrlgp1G/mboW5X63
	 CsrqJ4s+Z/mEvDTeB0Cwxzfxt8H9cO8DKVz4f76PxOmfXnF1bW6tXgqlYAmcSBYkpL
	 wM9WH/ntaUSVY2M4GQmhcaZlLIYQYVHT4m4UseBTjylvrd7k6sQhPwFF3gWT2A1P4i
	 YLdwGDwoulSF/EehuQHNt7ZjZJ08IF9rqDEFarLa+hThVnEI2t4qm+b77SU+uH5alf
	 r/S2sSAm+Kfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10BCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753979357.21763.5211214805324582434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4943433abe7d0b0d5a94bbb9d9a480ce6e93bf1d498ec325963f8b911ddc8c75
Date: Wed, 10 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757539793
