Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A447EAF9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717971443; cv=none; b=ea3vEQjqoUy9VmcQuemNJ0mRzo/K6KrQaBdtYZtEKWJS9ktFVUNQThYl75MCV/kcLW2MlQPCWbZzfAarFRnbQD/8BdSalL+meh4WJIuLYeWajqGYDmeXBQ6AJaZZ7SeiNcTKdO23z3sMnLLjsa45pSz6Zm50gCrnGv5+XXOl9uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717971443; c=relaxed/simple;
	bh=3GBgp240CA3xfw22qlqhjXX+ISvhf2J1qglncE7LLik=;
	h=To:Subject:From:Message-Id:Date; b=Uec/33867gB4SRZ2HnDAextYkAq35ZtDE05LZogh7t31j8U/bBoy89UiCfJzUCF1yILeBMdpLuhEAqeX4ODv3knG/UDP8tN7oVJScy72w4RI4CsSrWxM8ArF7YfjjynxkZFuah1+7UfxHBQio6mefOsAANputMUgs2PdBtwdSHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quVhXNHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quVhXNHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF40C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717971442;
	bh=3GBgp240CA3xfw22qlqhjXX+ISvhf2J1qglncE7LLik=;
	h=To:Subject:From:Date:From;
	b=quVhXNHylfLEznuHcwSN74rVKxB8ywTjwrIf6Y59Q2HlpWdYfnSTi8IbIyEmkll2D
	 HnH4i2CLSSOf2OJ6VO9j1rHgjL9cvljdkt0WyH6hGBB4eWrFObSj5wdgXXpwmIXBzV
	 oJXXIM2K42V8Rm9sGmK6AMZRxKZBwIyQz7ZV36H3BCAYWEhj61+rd+PgjIaI8vXr6z
	 4WPLC3XzyS5a90OLXzisHMYa/TM7ONKFwfo50WKMAZwDa/X3rOr0V6wvgjfi4lDVCy
	 SzNDdgh3rtuqvYt2Cl0WLsbBFGv6oJ4fVMNIl5gGR/FAbCHsgZQyb01IBNcym4TuDj
	 9RYLpO+t+Epjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C406BC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797144277.26615.1958381502793545739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c423fcf5b280a7f03ec7203d41c71bce29ad869030444debb0d563928e88ab94
Date: Sun, 09 Jun 2024 22:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717971442
