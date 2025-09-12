Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E332168BD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757649594; cv=none; b=ucI0tXQnMyN6JdKts+6tKW8XNnvPebHibM7/CcbN/EQYVG7E6w17gkvHPF/YG60T7tSi5rbp+qW/dlQQI72AijhgTpYq2Y9ow4JE6C/MKDgQD9dxXcCgtf3BMc7yFcaV/1QTKC4rpA0P2rYh3fUbaQU9xeZcLneBnxkIgZQbgaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757649594; c=relaxed/simple;
	bh=a348BuXr2buMd0QSMe1io5WFbBRwEpMzUpGdRd+xS3g=;
	h=To:Subject:From:Message-Id:Date; b=YxRzz5MctGdIYyonbsIa0RFFYT36DEJOT7tXW9YTfphel73BOgV3sCzi5qnFEZyKqjzPRDckzQmYFncdI1u7TvEoc/BjR8B/0q4rVOGMtApuE2mYBMmb/tcbGN8kXVBKxDnNQ8guupS3hWFUPZbcrOb6Rqugs2vHEffmfDScVdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn9v5o+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn9v5o+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757649593;
	bh=a348BuXr2buMd0QSMe1io5WFbBRwEpMzUpGdRd+xS3g=;
	h=To:Subject:From:Date:From;
	b=Nn9v5o+kFTT+0HxRPFBdJREkaHFu7yr7Fb+rv8QpDhK0Rr6DBLz72JStT3DO4kUdE
	 gbUP7tMS1WRCXEkCbNF7RR+tYj/En3KqonkQGpUM2EnXVqHawkG9fCuf2JINqOWYKo
	 IOrHWC4jKbV8KQQuNU6jHzrmmOZz0P6IMoU7fOw426SYsgx2ByPZKuiSTb4PxaMN+z
	 LU0NBwxbxUv2BUSF0gyOGp4b6tZY8TQ6bwylZsf+ta/Q1ia0v1CoB1U7L3ULxisK4b
	 nrn7tAfLq4UpdTDcRta3boZ3XduZwbFTpWyLIssPTrlX7yVYlZaAtOa3e7Y+iwMoPp
	 3asv+YFmAQbHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95407CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764959357.22678.724182204020249805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b6c81f4d12d6d1b67a519176b4191698e27f0ffa6743d570631a06d01dbf95
Date: Fri, 12 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757649593
