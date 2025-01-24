Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EB184F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737687954; cv=none; b=RydK7zdOs4ssMofq5sy1LH3/7cQRhZZqvWRozx3g4tNR/+oxNnVeTdTujWL68a0CDDbjmMF2B3tyWWdo0CwD6eH/vjvZLbxGvlGFYYz1Q2U69Dt+OmXw9wvY6YgG78CYEWIS8ajcivcYSbq0VGVpGhNk3y6nHMirhYV/5onc02Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737687954; c=relaxed/simple;
	bh=nJ57WHLxaxV88lOmS08ombeD4arzmW5SYhaXItkOVOI=;
	h=To:Subject:From:Message-Id:Date; b=nTf2zYnDEn6NlEZEsAt7BDLT+fjf0Vmxqwdjz4RXebNGwkQTS948dCyyqKG/hCkTbRlsscp631QsCrCC2RA0JL+nw4LG3tDvhtTGl8LBPsIDpD9aFtyEBIlk4okrzUqTQI1RDBURPHRS7ObGFFf7hnhQNj6Pz6vMKw8gNdkTPu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZlGEVv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZlGEVv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83B6C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737687953;
	bh=nJ57WHLxaxV88lOmS08ombeD4arzmW5SYhaXItkOVOI=;
	h=To:Subject:From:Date:From;
	b=kZlGEVv+gAvIL/2CB5H2Zva3AwtL9kx1tPbHqSvUy8RQzmBXZAybrc/1HI5yzy4op
	 zfvWNCa1TBz7SKUrVm7wiKFI0NKH4UXMDucFCpZNERhtpejph2zcTe00+MAzqAhEQ0
	 sEBBWVkTyQXqUFBP0XniGlYUMqI9dWrPQyRwrEi5t13nM+I7Qr0yr9H+cuWp9y2ejC
	 aAgC3BwDU4K1ijYeVh+0y8EvGrftxjfXKrkff/5YhjeB5UYuUXk0roJtu40/cJL3dS
	 PUI7aVjdUt4mKlzYT5SvS0lQF7E0macG3QyOkOHOO2M63xVbALqB61bCDn47PEZjs2
	 wvoe3snMlq0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C80CC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768795362.10802.10602125355102379648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e46f0b2c2689dc9cef0bd892eb15cefc5b4f8e60eb2b4d03c2627a29e7f0f36
Date: Fri, 24 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737687953
