Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D91EDA2C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753731594; cv=none; b=C5p78WyXnlue7Np16mGAqvWx5Ys5/zRhj4CVOLCSR2WC8PQYRd1W13UomDefSUZj9nvIEbpNFpxWIXXXVlyhZqZjm8YLRT1XaxhP5s1bhAqXQZBZaC9Pvlqzx2rjRCG7n+PiZGlAcr/07ZeniJCxtKJbK77bR+d3l57VQ6JQ0fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753731594; c=relaxed/simple;
	bh=WBKpyVGeyaQNt2WFXxC1LWFvpmBLqtNhhSAlRz65Zl4=;
	h=To:Subject:From:Message-Id:Date; b=e29AWq3Ti55+yum9qEyOAwiknlUxjA9x4FaRg6fnEFjAEoPvaT6nbmNVInD4gwr/3J6qakvvvM7ynjFTzSSmJNI/nJOd0/eXa9Ki1VeCariLBzR+TPcFDjiSXRaOp2P3KO26XtfxEI/It4MrwYf3oY4eFfX6JD7GT6CQwyJXtBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kD3HmaHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kD3HmaHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753731593;
	bh=WBKpyVGeyaQNt2WFXxC1LWFvpmBLqtNhhSAlRz65Zl4=;
	h=To:Subject:From:Date:From;
	b=kD3HmaHz/lQqurgZT40grX/WnRKLh/g3fbTOI69WHsqq65YBLqHNBsMPgEz1uIqL3
	 jCv+p4ON6QWqvK1K6GtdhiWR+4Z0g/bP1ott/2y8IzMPhhboxOnUX9iY9fzItuBrFV
	 0mQGZ7g/Y/znQhCYDX7JbDQfVZUnOBoN2qY01C8ugf1fOH5VClUTPYhR53N9h0aFRC
	 W2Y6PMRcZ2PRQ3oEDb4hTlK3lDSimY1o3ynVQHPie8U/CcUAigetnFMPdDgvvvv5xy
	 XKwRVtQ0Hx8AoST0gtCtQkg+U4COk2J4Q5Pc19iPwt+6PbgtTHrl4jBGR1ODQcme44
	 tjCyk/2XLD0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373159357.16133.8869375683365278214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e098f3228c470148a86e81fd1ac067e191ebe53d2559195f3a15c8901031137
Date: Mon, 28 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753731593
