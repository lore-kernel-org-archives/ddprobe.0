Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474A519048A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747981194; cv=none; b=hnKo/Q2CLCujK8qzzeh7TmdjZc+pfFg8NpmR0mS6cZJffZLefIXJW1oSrhVvjXP44CH6dUIa0TpBtKJ8tX/s1oRmKEQq6GKUcAkgTT3M4+Wy1m/iQr2feq7vGb8iIcmV0lsz24WdK3hUZQWYDzf02ToLBIDY8u4lBN276XyedRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747981194; c=relaxed/simple;
	bh=cs/i49NdoNybmF75nOJUSje08Po2HbJvrOEgcEKcWDk=;
	h=To:Subject:From:Message-Id:Date; b=q0JnYWPsdbWcU1k+zYUvnj//LzpqSMu83iWk647dL2KmLkeVETKK+tbhZTllV7/WomIYPCGFoALI8BOrstNiNH4Oa78gsF33aoMSwRMiFsKJot1AYtOoFYoXwu4u8fadOLb0+bQzuS6h9n8cYu7E8nLQbvssyamT4coxmpkyo+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk40WgOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk40WgOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AEFC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747981193;
	bh=cs/i49NdoNybmF75nOJUSje08Po2HbJvrOEgcEKcWDk=;
	h=To:Subject:From:Date:From;
	b=Bk40WgOW9mpVTEx96t3/ipaK8Ko/yMmpXBYw3ihEv6OLY1Bmv05L5j60tdmruLW3X
	 TJKBClMTRb7mTHZcCvrtU7VEh5mYO7GT+n5VMOVEo6TusTmcfBuwLT9sY9IR4z1QQx
	 Eo9ovzgdoThtHpX2nrzajSDuf3+CbfvugqoatZFJqVe0bOpUroOX2aJ/ljubjDOFz3
	 AnM4aNzK15dXZx60qIQNFbvSg+8+b9cQdD5+GJQFnTJFsolWAA1iUKe7Yj2slzxOPG
	 LyxyrD5lRWVkaIfgHZ8lG+7HfgpfmEIIluK9BPANTdiweXVUBEM/qKVG09l8/gY6hh
	 gJlkzi6043W9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A336BC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798119365.17861.1936150961714046672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b925b1b0b302e8804d38aaca7fa8e0c3cbb4e47fc0baf4565bde264004e0bc78
Date: Fri, 23 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747981193
