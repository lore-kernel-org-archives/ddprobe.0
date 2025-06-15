Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B3E1A2632
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749988794; cv=none; b=AHqtM6zvEIFvFBwlQcdvFVpJ7K3B6t/WuQUQzrt8h05jo+wt+pIebWNYd8Ed5O3zJ93wnHW/kmOefgYxDiqGZBvzUm1SdjRtg7O3FwY5AIon3Cp09xLBqyn4i3kGUg5ojcH7KG4aVUUeiwhrKEYEZ3LyJn4Me13Qwt0Whqg+Jss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749988794; c=relaxed/simple;
	bh=MRaYf0lstxJNoHP9brLYXeGojOH8JKuSovgq/x6FyfU=;
	h=To:Subject:From:Message-Id:Date; b=Qnm2ldyaFlo7xd+KH+L68TpFnpqy26qU92ZWD1zc2d8damPBTeJ5VPyIpI3woDcyk/TVJnbFMnbGm2mb+CuRa51QiYO4e/Evq4vaBpvvxi+9+0b0UgXMFzBYLpAPuUEbWuEjB4FBA+5VxVCIw8f4DWV+WzE3KAZjqrXbnqtRZqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz5URG1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz5URG1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA845C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749988793;
	bh=MRaYf0lstxJNoHP9brLYXeGojOH8JKuSovgq/x6FyfU=;
	h=To:Subject:From:Date:From;
	b=jz5URG1TB/642jlGeK3o/kY5My81g9zGd1jeOYWIb50ML/BkXaiWwq+CyTSrccPrn
	 ZbZDNO8dQ80+DVsRUmGNuRpWEmGy0G/VSyEjWtJKDiahGMQFamArPFJ8Qz58DY4f7/
	 R89Iakd/pCuxgypugOYWptg2Fcfh6y2PAIMaO6WIcbD7XeNIjNMtxi1c3thlJtJGJ/
	 t8GiCDiQ2oWlmSXbDtA3bsJKt3a+a3NYDBNYBa3HY4AG2tT15KRYJcUx45rNv0ITRh
	 NY0wzRm9c3jL/hUW0ava3A8fbDFLW7svZ0Lmu2Fo9SXUi0KpOV0WMitYDz/x2noaIx
	 cOinXfF+ljIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E7CC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998879357.11709.6792014419444818763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c197c3bea82f702605bf3231af228d29ec997326df8ca0e6cae643ac2965c6ce
Date: Sun, 15 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749988793
