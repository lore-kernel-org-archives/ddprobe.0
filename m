Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D2B2C3259
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764310974; cv=none; b=pEwPepqkNu8fWePrvpuptpIrEh1HdAqzfnu9ZlVjCTcq/VqOgWmEKacyKrOrKcoFGtgBBNytXHNRRb5hTffF7ya8WQE7pLdHh+OOsZVnUlwDqpyflV6qG6lhU5mdrAz7Ey74xIsMo2Fsaba1V4EUkHFZH2arR0IYdrMSZiHB9s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764310974; c=relaxed/simple;
	bh=XBDKlbnM5yqWbw84YA/mcNv1bFnQS8kR6iy5mOfOc9Y=;
	h=To:Subject:From:Message-Id:Date; b=KUjPK5cQvRKvUwJNGGbi7/htvduybhPWMmondvkmbsXVhhdDbepjlv/z2ze1WOIOjzvKv4dYiiSsXg52lUFiBfZ+rhuIQcTTTSXOzfFvN+bXXrdYLmhbhy6RIxuaeL1pvH+c/MVr910bkwPAaChK1xiYb1eK++WLAgzKJAE/5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJDC68CY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJDC68CY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4494C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764310973;
	bh=XBDKlbnM5yqWbw84YA/mcNv1bFnQS8kR6iy5mOfOc9Y=;
	h=To:Subject:From:Date:From;
	b=QJDC68CYDmdreJ4k12wbykfGYvAMraCDZVQmfFSIdb4eEqJzU6mL+M5PCPT1KGxMD
	 djWKfzanQQIDYay93Pjk9k4LOt2ZDkacHZ9rQDPP8jeZebIdoc5lwGjBYbeMMwL8lR
	 pQ0SgWZFdDkQ0RwIv8ii+P4LoXa1vlfRQIrQqQeAnIRdJjgwxaYGhgI5VvXPizNppm
	 zsnAK0ayDU/ShjxuqLdfEh8Y9VJa1Ek8EXRWqFkT3Mei96aL05z0ePj18J18qVzva0
	 5dzBTTKtmJdbOf6m5wV4klPSR2ZPpaASPIl+9etKsch7wXHqZHQL3X0yhYZlIlHufv
	 r+T5Q9PaHSEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A9ED116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431097359.3037.578377371210123576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26bb2ae54f5cd6078b77954ba6ad1dfc57577fb2b4c1002b8277b34c6bff5e8
Date: Fri, 28 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764310973
