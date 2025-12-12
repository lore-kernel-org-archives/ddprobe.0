Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B2D255F52
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765525974; cv=none; b=WvxQGaCQzbxFFvVvQb2P4A9C3TF16fPK0QhgsxYIijMWBHZFTJr0piyTZGIj0VOEL2vNSL70MyxaC3bz1XgUl9KyGSG6FBQbfxE0jR44LcQfZWVWSQQMNI6Jf0prtE1QhlAf1qT5zuj3J429ZSldsT3MkcvgkQlijGcWPFTMXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765525974; c=relaxed/simple;
	bh=XyP6YmcT7Lah1YUc/BRE6qhfgZkPhKBJPy/Gg2+f4ds=;
	h=To:Subject:From:Message-Id:Date; b=YTeg32qVCiVFvRanDYbIlmgcqBcO84BduGiaYOTazWRVCGYYMB0z9RDEleG6pG92L7PDX93mBPBoB3ehzXae5xmcmm7SP0VcunlbzhOAuLGnLkM9xURGtk5rPgpMz4impXlogyTQlkFE0BWqrF95390K57D4Blc/r1SsBopcgoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFKGXkfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFKGXkfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5DDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765525973;
	bh=XyP6YmcT7Lah1YUc/BRE6qhfgZkPhKBJPy/Gg2+f4ds=;
	h=To:Subject:From:Date:From;
	b=GFKGXkfjfNa5ubbrFXXiaTe3eYOahX4l/UkFi5qP/bxuZ85EVleojNLcedoV/uBBS
	 Y+LecS9FV9xAHeb8lvUKSSP1DEvJoTAe/KmN3UC51ScXWQ3ube37iufb0ufVXa7R3d
	 Fr7JS1cipeAUXFsoi06X/RK8cCP6nYENyRtI7pe4WaooPeqc9u/DzyUBoaIOVaUUQE
	 gbRqXAewt1w+SJH4O3e7hk5gesZMvt8F8ukiU5/r7jctB30tCB9EhHoofeUp+XZbCB
	 +rH2kQCKp3etHYzprw2PlvxhnURPxmTPuVFcyURRoULKPrW9VWGZ/VnFfeDj3AGHae
	 7tZEBqQ6RvgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0BCD43370
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552597362.10797.4939901777842147634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9d24879211f95b101a5b8e331d68da6f876d2a2001f403d846256e3c7f3986
Date: Fri, 12 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765525973
