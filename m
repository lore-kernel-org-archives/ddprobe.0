Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C991FFC46
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714194; cv=none; b=Rf42Mx+2nlVf7uWpdkqLeZkDLxuNLOyTlyUPs+F+5xiLhqX7wVQ03ZOgn1G8SzcibF6i0Odsu0YRHXtAAIZ9L8qeX6lD+QTZePtAU36flKOp6MCCbvtWhGp9DW/DVbYEypLiHIrYWsqY5LYa2q2o3z2ubKVnIuR7zU9PmwiiV9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714194; c=relaxed/simple;
	bh=eCaMcvg4vSjeLEMCUlP4Qwz50lVXC4fGztkEOo8YmJo=;
	h=To:Subject:From:Message-Id:Date; b=RhNK22nBf78NOGwgcMFLNMKVeIhU0fsZvMEKNEWMT92icfOQ8VdRyVyCyC0LMUuW/ZBUcNrCSYPWxwlbmIuWoBDW3Be73f5/9dDa6aYzfZD4U18892DqjqEZaXTWO1/aEktqVzXQFbO7UZ/pBshBLflAT2GA5GCf3srAJf/1fa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxtfun1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxtfun1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1803C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714193;
	bh=eCaMcvg4vSjeLEMCUlP4Qwz50lVXC4fGztkEOo8YmJo=;
	h=To:Subject:From:Date:From;
	b=bxtfun1ImzCcOF19mIF2oOjpvSaoo5/lXbUj3+d9QqMHeDJemZA9Lte+LOS788zIH
	 xZFe9/wS58YtHdbsVj08S2v0OkhLYshj8BxO/5mQkIjvYcF6AG1ijKeg3pGqFoGLGg
	 uT4YuS7FtZDzBk8s/+HSlB/XtaHL7TIYB/MLyTFU8UFVvw8XMWIJ8/4zAfEYtLWqiZ
	 GwTWM+HFVCbco0c1J8Hu/OtgzZuPjR41J1wvtPYrCs3OA0pJPPsZINFYdY40ewJtx2
	 oAwkU5XWHbXeFNWJWL/zjaE/GwLzBY9fufPXRKs8ocjvwFZa9qcMKX2cEmTjLw1Gdy
	 pfvaXdxwJVUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90337CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671419358.14417.15212240357402925228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad72d58d301bdc3faaa0cf834ccc4736cfc3dbf863a9d9f819c5babea6f0a6ec
Date: Mon, 01 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756714193
