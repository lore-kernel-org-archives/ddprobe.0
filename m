Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA0423EA94
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766900634; cv=none; b=GSza4ej6XCb8J9xTdpNlSHUGCFBhbXzs3g3XalK2BhYPiJ/hopkjXa6eDrr850YVKLxkAla+KoKW/l0KGyqnttEMlXcjQlnAKHs+Ti+iH48HwdBLJAvi+TrXtZkklND6K5G7KDmGacND6HN/fLLZshHIVfdxYnNucq9ku3idY/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766900634; c=relaxed/simple;
	bh=3sJS07avhiHekqxtJGKUU8Wo/v822PcJsDt+VyLEWWY=;
	h=To:Subject:From:Message-Id:Date; b=mt456S18o2tUcGTXRTaRdvEt+8+hWJMRPOdXxhos8qfsQ/YPBBnJ9zKAUY3JIcNkK8LRuHngGDnJ3D8AAdZLfDoJw0Fhrv9yrcx6VeD6fWH79clsJ6PA/qGVbzxmT5lHwfxAA29b/2gza4LlL7Q1BrqFtI9pp1OMJ4L/pD0z3Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxgMa8tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxgMa8tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC7BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766900633;
	bh=3sJS07avhiHekqxtJGKUU8Wo/v822PcJsDt+VyLEWWY=;
	h=To:Subject:From:Date:From;
	b=PxgMa8tZDqVxpH5DzzT2eJXQ2iVtepjBTYMNijShHjhz2SjT19+QbI0gcEeWxgA1O
	 cZ4XizePLqBmlYQg1rtGbGtM4FH3NDXaIHAicv2pplckd3C+O4PuaTqsSwh5qtAoC6
	 Mvu0rczmq/XEPhfOokpggnFVseN6+/grZsWK2jNPp4dmmSTlJngxCRvSxHWjk0Aiq5
	 sJEtuAjhLRbZV0674GIKTFnyKYOV4QPLRUYIOwowmO7MHKt8mBngitorcvxCubnhAI
	 B6/3XKOx9ClVnC1PzR0DX2pPr9b5LNrCEeDbQqNJxFdoMuImphH/yZzyIf+B69IqWA
	 RgGn2s1ulYoUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F4AD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690063358.1377.9734828691661122629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e76bf3e091c09d2f71014c4f48ede90b8574a6c9c14c913821dfd1ebd54bc5
Date: Sun, 28 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766900633
