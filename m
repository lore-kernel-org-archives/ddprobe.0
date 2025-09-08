Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5C25D533
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757359194; cv=none; b=MRf7IEll0CdzEHU8sLV3XLH4tHrfVDTyplj4FDEqXMrm3HnvqoN2VGUfCyV1/BeRWueXuJLB/4ZJ0f5jpgKVgaEIqUX+LhTRQhAboJI5SxRGO4STVYWg5ke4jnn7WuJ7blwyn8BHYf6r/DrDgrFUvKBFKGWb2emAI41rSxht680=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757359194; c=relaxed/simple;
	bh=4GRnWS9HvZ6RjMq7ivW+6WkxcVJi0w9uDrYszBVrqAU=;
	h=To:Subject:From:Message-Id:Date; b=B1qmrVAxXPilN/ppD0ASj5zfQXuZjtEjx3ogH79wHISvPJ6gr/iYT+1HaEuEj0apd0Bb9c1j9aLXuM0YPo2DZfoIVxUdINeMhE1d7MTZnE47J9SsHGcSQxgymXNKRpJ/tdulDyAvrLfJFjuhOyfGaQiK4LIctH4jgvGlPGqTgFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEbUR5yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEbUR5yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0021C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757359193;
	bh=4GRnWS9HvZ6RjMq7ivW+6WkxcVJi0w9uDrYszBVrqAU=;
	h=To:Subject:From:Date:From;
	b=fEbUR5yloMeeD1wwLpkgop5LHJGm/xuj2JbcjD4f4Fu4ekLaXkphFmDnDdgbqT0xP
	 hbnm/BMTwPcL+ZLQraG7BmX5huawbocNbWierBJXxgz68gJtzpIYV0SV4xbuhNzeV4
	 EiqTCghHTdUrE06+RXHaj+DCqd2JggfmjjmnzKu/KvWVPe/YwhCeTe7mGPUSSTKD2F
	 jGUvLgqswYLLt4D6eL9+cFZbj20pOBEruoQ5j/T6SFfAwLPsZTCs5pWF4OP75N3YwK
	 XM0/fccMlBuopZgvdT6YydAXFDpGibnpw3PItGhgF3QletTHZO+Kir6DpCjx/mfP2X
	 6FLKfWuqzNEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F3CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735919357.27895.18265826375616228781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6874135aa9c59052528b59b130cf93474b9d337805fbb01d7f720dd95e6399
Date: Mon, 08 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757359193
