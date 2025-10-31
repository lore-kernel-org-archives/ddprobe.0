Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05937272E5A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761937794; cv=none; b=AqD9tHfDz36dChwoDpxbtuG4UxEc4d4S6wKpR8e5qYaCJcQ+L/QRiHu5CFxyV4kz4oLjrE8GogIAbpKJHJB6rbko25uHpsSMHWQFjX3Gtj8dr6ZMF0yihvJ16nUDhQ3U52V/g7sdbWLxSSiXz282Cr7KtD36xCFMBZmzfrDa0Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761937794; c=relaxed/simple;
	bh=ylGPsLiaDm+jed+CuLIoXYKS4iRHNGCKFkEOKWafCyE=;
	h=To:Subject:From:Message-Id:Date; b=NgWVcJhpozZQw3rXiVOKaG4jtU55rLmQg3kA/HNxxX+70EA0WTQjsghBzlU1L4eJrRbmlqE+v6VSy+bQtYvG9Bx+gfUOuFFKbZWHrsvOISss4+RXN8uj2ymPf8NcF9hsplNolbJOLmWzbibF1hOG28JQXAiLlXiAgOFmOglnJWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP8a2Zcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP8a2Zcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761937793;
	bh=ylGPsLiaDm+jed+CuLIoXYKS4iRHNGCKFkEOKWafCyE=;
	h=To:Subject:From:Date:From;
	b=aP8a2Zcf6S5oBz3sZWgjuGzV2co8ZFfSACJGlVanyA+P93Y49+YeS6FUt6WkTT5v5
	 AP9lGTuOVnKx/g3cCHZG+wAQWs3XKaxP8L0iHpODBbO55Naeb41+oXy5OD6HZQGnGt
	 d1jKJRnxh3DAnDa/Qoqy8eMIc2ON6pWKFn8KIv3M+nnb74M8JZh+6iSnNsVk/dZLHw
	 Tsefjw58G/0/LJiUBvOTNVmcYA06ULwwxUqpGqTdX5NU0+r3hVDY//Jgm6pO2geEae
	 Aw/337X6CT/OtG9Qbo50Q+Tj3feMx4jtS35vqmRmNlVZ2YhMuKk8P3xVdHbvRSi7Dq
	 Hdr76R6cCw4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC0CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193779358.29200.17524213779245995994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e221dad82b10b5577d72c2504b8b62b636ba4bf2b0b6407da4c4475313549677
Date: Fri, 31 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761937793
