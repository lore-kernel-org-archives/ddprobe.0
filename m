Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228B72D322D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749769794; cv=none; b=owfDT0F+9bauLwDRYRi/OHCQfBUraQ4MOF9NPczOV/SArjSUQoMtMvlxJXbOftcMeiAfk2HST32usOqelhgAp21CHIeAXZdEGrav1CdF0XlvIHQRiGTZOdrDXG1hEsXBlY1d817y0DctK36pJJaoFFgrrpcSv2lbggRHFiOuWTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749769794; c=relaxed/simple;
	bh=gRyQ4/VoTJehRmeLiLM2dBjKcobkr+yKDN96Kz7jxyA=;
	h=To:Subject:From:Message-Id:Date; b=O0tYnqNUKgRE88dYJSyK3sClwu+6guEKBcIqo6i8ITDPfXMGgqtXeEhWyZHtC+1aFIlzqW5wiUzjOKwhN7vG3MgG4FIMl+x+SrntDRNEJSfogDBz/qcE6vjbOevz6V+iGVT3310ULKHyB7uyNelvLWPhRT0Czxr3NF6bfBQk+qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzeYYqzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzeYYqzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E85C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749769793;
	bh=gRyQ4/VoTJehRmeLiLM2dBjKcobkr+yKDN96Kz7jxyA=;
	h=To:Subject:From:Date:From;
	b=BzeYYqzxavz+CrZ2LE3GZGrQ3e1KFeEv1OnLOox8k23BUd09nHniTad+yTuNdgcrb
	 g64qdkoN+iPOuI3ppXSpH12uvqxeJCr44bA4tk72cvuSe+dhdiSxP90pRsiyS25Evb
	 MXBHMgu85sq6lVe7tO9urpsUcp75CW/Rh5TM77+fdhCfmNpGXSYrO+x8ZBCsJ4vOz0
	 /JpSKJNopZp3LedhGyfDx1+EGKLjS3rWFCzkxrEIW3Rzz/3CY/QlNP+iATsOAjpVUP
	 mlffdw2kCGlvgSm79bICRf9ozGL8vOjZJPEfHMiKXxU4zifQU9ZGacMg6wflHYTbQc
	 71YOXWfip1kyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90836C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976979358.24651.16309161532762814924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15aecbd56c8272e7a1bbb0d3121a01c7d86d522cbee94eb9685efa36326132e2
Date: Thu, 12 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749769793
