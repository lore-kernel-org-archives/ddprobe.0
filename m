Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2825325F979
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749635994; cv=none; b=HT6t4n3v+UIfajT3uUTs+9SlmLu6zMcJ9mq/GJvbjREw9enummsqIP781lRpdFxz+1scfo7splAQBU+fwKYl+ZWWbtcPbqVBoMldI2IGAi4EbY4oUYgwIKfDaVG8tzTkoVHLaMQBNY8U6Vl3Dy31xjUR0nDNS+6ZxVqQ38vzCKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749635994; c=relaxed/simple;
	bh=n74RT1dDZcx72Pfu01ZP6l39JZ5XmDu2u/RSdwNVr+E=;
	h=To:Subject:From:Message-Id:Date; b=EH/ZCBvAOnzc2GpOU8YhKy1ZVwttYChTJzoyoXqlS/ujqifxN2cDNwAAC5m+x1Q/KAZJp/xEByXqFXTtF91iYuwnjBa7Rkbi5UOcFJzR12W8nwpdEe69sQnTygu7gwEsW9nCzc02FOV5ZfAltWTEHrKdwcOrvvVeIZGcg8AiNJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGsY2Xkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGsY2Xkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CACC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749635993;
	bh=n74RT1dDZcx72Pfu01ZP6l39JZ5XmDu2u/RSdwNVr+E=;
	h=To:Subject:From:Date:From;
	b=hGsY2XkvCyPgcCURcFYzg7pQp32mJBam7Vhy1VDbEG5M/0J8JLQe84N0GtNTavNyA
	 gZda6t+WCk6q1jFrVaRBM95seg5UUKtbfV16/4Qxde6wUwalif7rPy2VJOVUkW4X17
	 lZFDwej6D2yCUg2ZjC0a+FLAZOTFrqsBCqO8xrW2sqboaR8UH1vZG2Bo91Oc3e2+YD
	 DIqlwIUsdt3rlLnaiiiEsAdsiDory7ux9Cm6Zx8VMxKeuvW59NEoxFOLXJ8ucOH+8N
	 8iY91pqdOlamhlBUZVBeLFQhETKLZIM4FNI2o/8ShYsXbh4l1wJdBfmbGI6NM90dc6
	 6vvpSNjuqcb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9994FC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963599362.32394.6753073050555131602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d141e0dbfaee4d60f4f944bedbe1a6b7394af217aec11ef8666d103919f9fc0f
Date: Wed, 11 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749635993
