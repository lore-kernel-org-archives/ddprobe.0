Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0366A1C5D46
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757465394; cv=none; b=LcIFn3vxg61R/maNGxrth5u79Np8k3UMw2Q33Xf8gG8cCdbTK2HiuKsKYI8iLXOdgnmFstI0RCfXpMRk14yfVBRbjhxQ6yRJxDSpUihIvyT7M3qfG9v+2UVAOYY8XBrZuMGy9o1mbMV+3+Nr578DduGfQ0hGEgeUcHSXvC8jU0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757465394; c=relaxed/simple;
	bh=Q7EzSgdVWkjn38Hu3AXFjHzoAGAk4B7Hdy49jeHeDxg=;
	h=To:Subject:From:Message-Id:Date; b=g+6OjdDZj0+tkh9uyw2GRr0flF7Et4sxaERg4IzrlOsMGiZ6LcsXnsRFjmhvDMe4KC3KJFqQDE9/8vBFPrvrris60V4BuXoMB6cHNDs66iMWHuL3XOTO001G/GnrbedhBaicpVcMoLm6p1V1n92oMcVBnNFb9/+Q4ohH6QYq7yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO/yIE3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO/yIE3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C73C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757465393;
	bh=Q7EzSgdVWkjn38Hu3AXFjHzoAGAk4B7Hdy49jeHeDxg=;
	h=To:Subject:From:Date:From;
	b=HO/yIE3N7o3FOCu0cF+NSnJ0rTZanzwXgz668u5dSKB2ZNSnJgK2evPw0zgMezCFZ
	 xNEI12z/wDfXbufvXRCnLYGX0WJbB68ZxPXeadG7l0USlqRYUFGNIUtMl1SBVfkFcS
	 VE+AOwTzExEgNy2F58k4zRUnxJDhM/HmuQLddReYbOFwo6a9ONdnAezcmuhR8mhPdx
	 PiQtW4ApguCHDBfHkx+Y4l0CMhCFYcrvLffmPVP+yy8NiMhScxLqnSO3Smlype07ja
	 xg4dmmDeNPh2prFV0v51VLQCRBOImHi6HeTcOQClwsesSoQEYVq0ElOy0oirgG9Db/
	 T+gqTU4VCJLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A1CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746539358.32648.11065481128920289467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1823bc05de898bee0c13e2ed90c67c4fca8cc836e60e470fe227e12cc0f5148b
Date: Wed, 10 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757465393
