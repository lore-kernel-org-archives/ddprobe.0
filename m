Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D92310645
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790758234; cv=none; b=FSq7LMavyV8f8TTzBts/d0nuYZybF10EluBcf81rS41u4V5iN8qEcGpsjfyAmkanJMmMS9NlrwgD2biTWdK9gYvmwx/qMJnO5WOaV8CjBbO7pTgloDykeKsOZZP3INdpTVpidsa1ESUfyZoEoQg0tD8gS2RPut11dpG17dflLoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790758234; c=relaxed/simple;
	bh=SNadF5ok/PNbz5YiomkTwge3o1Y/Ns+ZCHtl3yzsl8o=;
	h=To:Subject:From:Message-Id:Date; b=nGIW0zz5rlknGCG321D3OU6fuC1xM2nlgk2LtvfV1ajrdS7vLDbjniOCaThQ6HLxXrXikJeNe6BJIYqt7/mwg5pvQ6XnBMj+TP9N0iTAbJy+mcwhUoKPNgAnLln8bQAKOvAsgvhBHXE53+LFSB7LaS4sU0pPBKO205HLO+6apSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThQwR0wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThQwR0wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEC9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790758233;
	bh=SNadF5ok/PNbz5YiomkTwge3o1Y/Ns+ZCHtl3yzsl8o=;
	h=To:Subject:From:Date:From;
	b=ThQwR0wp3QQCGgJR6xwYv/0awSWP7Gf/a6zGsGDG+9qbJPb8NzYJhdEmkTGYsIq4b
	 htRBu/oYkx9qkdF2He8Pdx5a+aVYLylwXveuW4yuMymimrQPe4vLjCVsEi5hVLkWXT
	 UYjP3sjkTE1fTMON19KKAKy48bMT+mRp2fARwwSG3YgxUFZf8sArJ9/DNF7MVkOqpA
	 3qTEV3myM9eqGjhlh5IT7C1HkRSQIQkXYBwO/QMQpcHS0oaFvjEUPTh+QgTqC2fAbX
	 kGjas2kp7kfJzR9OoZskXDpZML3BQY+krHhyF8XLeih6LkN+KxRQgrr1e7x6DQ6Q83
	 9qzVXibiWpP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90CCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075823368.30741.1070809037780921601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a732994ed504a1b1a6846eaab48a4d177971fe65b333b9bd02cc4f345f372ca
Date: Wed, 30 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790758233
