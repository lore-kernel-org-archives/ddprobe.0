Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397027B506
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745870995; cv=none; b=InAYunI1Bv7+z3nSlrXwkFwm04uyghlHardf/sucEAAbYr0U3ZE4WguZ7rFD0CY2IJ4CjuVaXgH84CCwl1L2C+Cj+FByqPS/xEEZkggBWXwhGrCoDJVURLiCT/ZEFoIhtgkSh14/II/rBgY8Dd6UVVMp1dTV5XBCdn8k47UnEtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745870995; c=relaxed/simple;
	bh=hyuM0A0TCee7Vz+BiV8wQdPa3L9TYwBJ4Obekvfv8uY=;
	h=To:Subject:From:Message-Id:Date; b=IECbmZlhXSNpZaFifbVoSu4Kmxf+SZ5+Eq91j9jfop958QpLefdkoae2bnNjMCokxhHgIlyEtfmkVLBq4a4H/exF10WQs3HGH4itDvxNe9h4FhhX+rPrF0nLE5t2z8TkuUmwin8k8WjBd9PcnzWMcGEeToMqfmrD+yB31WF1bmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd2l6U5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd2l6U5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ADC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745870993;
	bh=hyuM0A0TCee7Vz+BiV8wQdPa3L9TYwBJ4Obekvfv8uY=;
	h=To:Subject:From:Date:From;
	b=Wd2l6U5VXj+MNGWXmSQuo/238jO7DvG+epFDJuIHPCn4HG6xCi/WlT9xp1ZKX3zWG
	 oNx8Oi0CJUp6tKMuD8oBItPqR9eggg6mQXiZ/IXgm8RzHflNXRsnIEnlKDEcc+8uI5
	 nbDW0NTPaLvYVZe00JEajBgU0vxsndWjoZwxX60ey0setiwqXKQyKvRhcnUv7aKT59
	 Mp538o7CvrXKqyy4CzM84zQVqJaC3oMOaW5/tI1yz2fdwIHwTMCQdZz7iypAxa5EJu
	 gBaOU88tmqtSby/WOxX8a4Pe0UkDJ136bBVRl0B/L2JEOPHnT6OfYhtFuBPPUhPC11
	 0y5iPmcGDUZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EBC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587099357.3848.2756039986637950062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c09eadf2fd935335e559834f1a13f41cdd9ef6ad6259b2e6e9855a745b90195
Date: Mon, 28 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745870993
