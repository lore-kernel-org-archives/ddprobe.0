Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E94B212566
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769252634; cv=none; b=F0zUepZtMDlxOswg99NuVsciEGVqT9MIfSsOFwsIVE/WRqpcG2R2/+sh5dPQ2VZlMEokhgbjL6MtJNZRwITePxnZVmFpKm2NAZIMb2x/SxrvZwenfs6PQEdp4Epb1xRUIjHZMXkgSvAm24qccBsa9OoYuxunHUmkdKaxS2e9Gzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769252634; c=relaxed/simple;
	bh=1K8P6lSbsZwz564c8s8wLW/4E0RNgUazslz4i0+T59U=;
	h=To:Subject:From:Message-Id:Date; b=BYm8IWwQsuOyd6IiC/OR3OqP48v1zMVRBpgt+TIWtLmX8G1SpKjClTfqyFxBoA9xmpS/m8Q8WnAm4DrxEJ0qJtPMRGB/X7SqZIshFlHdusL+edS3MuMc9fVA8Q+43B9VK4ZixN9HbEURk5TbcVWOr1xR8SNN7DF2sLYA0nRSn2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6d1J1qK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6d1J1qK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B62C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769252633;
	bh=1K8P6lSbsZwz564c8s8wLW/4E0RNgUazslz4i0+T59U=;
	h=To:Subject:From:Date:From;
	b=Z6d1J1qKqt2xVNZ+wodhmCrnTqgHZ64/uQxN/yXMHzZL/iJ4Yr06n6vJGCHBvLdva
	 K3C+yuhFCuplT/+6cYlLSaXQubR07LgZ+GUd8IC8EjBtIGfZZ6Q0F4gdYPjLxTlZoG
	 X9wVxM6301yeRAPVyanoZYdUxnAlNlNer+VBpU4MDBrJA4OSUnFdn/O04JgQxtK8Sq
	 pVuLZDIQ5YFzM6yVlJBUjF1vnOrTwAlhhWN+U0gMihUOVQiqgrAioD/ZndDTKAlMOO
	 behwX+PZdG4+rSgtUDHvBdWeFJV6jE595T8JJaebGT/zI37THEgUfKrdYwl6ar99TW
	 RYRMYLKuOIYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E4D715E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925263357.18162.1541808394393543473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade4775fd3eaa439e9601755d8bd251dff5fc850c27d7a2e5d2580c9e2b2fb46
Date: Sat, 24 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769252633
