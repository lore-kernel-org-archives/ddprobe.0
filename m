Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297AA17D6
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760184594; cv=none; b=PQIkqHVzseqB3oVC7vmU61TJvpwcO/kcefwnpINhCZcln+VZF5l+5DiD2SKp+fFoOftWjzTy3QqE9VllNFRMXFvZTPjkwatWFsUun20p6wyXOhrNh9vjjEgO8CehbUsl9kGLB0DwK4aLbdvw0kjCNlpC0jxZNn0wW4RAdoGV2D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760184594; c=relaxed/simple;
	bh=T1LSoysX17wY9G9Lh6GlPGTpukQt24V7EkLlzz5+Q18=;
	h=To:Subject:From:Message-Id:Date; b=nerg+lwTsH2hcOgSOykuCf+NzQmLc6l+sz9D/HwsibhDPhdY7R1vMqgDx7WmMbL8bY0BMOw3fK3oQwE/qAqYwL8rnhGBY0bDGJWmBJQSjEMQaJmTv5q7uwpg0p9tAUdlrERIs5dOQgbenBV7ORDjLa8V3Rr03Q4ShbU3d+xte+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4/4p+vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4/4p+vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62CEC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760184593;
	bh=T1LSoysX17wY9G9Lh6GlPGTpukQt24V7EkLlzz5+Q18=;
	h=To:Subject:From:Date:From;
	b=f4/4p+vgIP3EJ4LRxCjDvgUCstQxLooxbrrRGntJ7JW+i8OwxeHFvZs3LzRZiAZX0
	 rMFGAVL2oL0pSF0dQ5mIqT5SaDkHR3/f2ZURF5PkhP83DtC8Bn1IXueZIsYdxxlI/Z
	 xmAjzBH7qyuDJd6w6bVJ5O69oQ0DuYwM6NYcYfV70GnEqRFNWEhc07Xd1bsCdKj7Nk
	 JGMKu7E+4/Pi7gp0qHdYjWdoR5BGXAp9zmH51syl3xDiWeCEEBZJ/4Sm6YeucO7v/h
	 HcL9acOkkt4Tlwim0Klqx9AottsjC54T2i/r18pNbtbmexLTgr0EgiEcEQEJTZ6GBe
	 UoWo5V7M1P7TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A0FCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018459358.27179.11846382416503489839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b381e377bb77595d4cea5b1cb316406e9c24252cb0c9cb1297a0a6b245f12893
Date: Sat, 11 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760184593
