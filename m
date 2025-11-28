Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27140277C96
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764345174; cv=none; b=MOqXFJw1htUHWGvNmBm4snJYzOqb8h+2ZRX+dv8Vo51X+7RIYuBDVQU+V1lUT1TujW7J/ZA1UY0c1N8q6x+EC87/1SGC+Zy0C+gAkZXmGV/DlPnxa3rgF0x0ns64eUZL4zyLWtU4JQ7Nskl/XtEaMMcCFKxGY38oI6Ir4wBPZ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764345174; c=relaxed/simple;
	bh=sWu2kQ6gRw6ZVbmg0E0SyBK4nKPbP6zkeXX1deENejw=;
	h=To:Subject:From:Message-Id:Date; b=TP+6he8nygl0WPfYzipFcdzeXOG9kbXbcsiN9/IINmAvB7ybR8k2X2D85biY4ydo142lbWYSfffcvB27jEaQlrJNQK/GSQH//9ftqsPUOzw3jCB0Z1WKBlSqqfsOuFygaL/K0h7Na2ZO26IOKFZnChpD4zSdveJ3VBeADm4lB34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5ak/XDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5ak/XDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA16C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764345173;
	bh=sWu2kQ6gRw6ZVbmg0E0SyBK4nKPbP6zkeXX1deENejw=;
	h=To:Subject:From:Date:From;
	b=h5ak/XDfWBwKjktIE/JB6kveSdovi3YKsinG6OMsY2vMJQawFCOv/0tHP00uLJz8Q
	 lvLaMg/97b3ZYm10X1Mq6CVtoNKavJHsJyH9xs4mYE6abvZ3M3Kui4EdegsM1DELhs
	 l4RmRGT1+W/bpx08Tn3hoMb58N3LwJbKC/kvrdtC9oPmYO6mOhIJ+CnKEUtLYBHBTw
	 tQIPLKqeshgzpAgnVfNHaR66FRldoJaV74JvUM8pTru/NOYuIm4O1BMOygVHfqIaaa
	 sPKmosygJMmPa8iIXqc8ZIlKEU+mC4/JWCIHd+MWVoxzJ2duLY0OkzlNXe/FE7oFe7
	 l4kZ7JnZ0e1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8BCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434517358.13136.11685025647485647168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09f9227f9db5435df098dbe2c2793abc72a1bddff01f1c462b586066ee1f0bc
Date: Fri, 28 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764345173
