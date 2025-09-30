Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928D14D283
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759202994; cv=none; b=IGQ6A/oTxnOLt5PG/H/RlyYuWq9wwfq3eUKTKQNlyw+SlamdgkDclpRJ7GszFXp1sa8xugXkHr4QLAHAsFLCiq8q3+A7l2fG4U2O8NvmlNN3ipVJbEebEC7auxh5PUBCiC05r+6a79vzuxJroKHKy3Q3ubvl5xXysahmgvp6Yz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759202994; c=relaxed/simple;
	bh=hKCjEM4TFiXLBHX0MgP48KcjpD2bSwCcyDvnBuei3FI=;
	h=To:Subject:From:Message-Id:Date; b=TGMDaHDTRueFjOSHslgQe39Z8H8lL6B4bzwfx0PaGDK9DC3EmLb4CaA81WLkU/5MOkaqPrj6a/9PY/PxwnRatjtzeRs8fClKKrIRFYBcDnOvXj7FYB9H1flQnSWzwRaacK/j51klz1rEVLrX/DKc7ks5AwEFZVqKLmA2QRyP3vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzldLH9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzldLH9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759202993;
	bh=hKCjEM4TFiXLBHX0MgP48KcjpD2bSwCcyDvnBuei3FI=;
	h=To:Subject:From:Date:From;
	b=NzldLH9F0vxprMNfP7SHEbYfwOS+KHIYFEDl0oKPBrLVQNHAKZXMvIKMLKQptHtYo
	 BKvgSDieMi3BW77RZj6l7sj6f9FB3akjtHgsFj13l6VRyeBPhapK6SvpxykFD1GHeQ
	 NzMSveabBQqX402NB/o9OxQoct42cPoK57/dz/zS349l1KwyOQP6VmIr7c89Tu/4Mx
	 9p568ZVHxy2rArkgs5mgnaL73wAgjseZ8eoavDh6BowkhihIIurOgKN9PNnK2WAFrN
	 LF8saG/llqZdNqeGWB+35Aahj4p9GiGAG3uh4HBzp2l82SwdgFZT/xbBmZmxnv6URz
	 pZe0hv+OQvn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96477CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920299360.8969.6170874139850570753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfb0fb9a902e2e9073ba613e01b0f6a1deadc27b0c09c27fda9c9b729ffa96a
Date: Tue, 30 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759202993
