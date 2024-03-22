Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C19D6F09B
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711133896; cv=none; b=lYEeCrXeJNRFq64963OxycGS7ex/GuJzZUZ+pUOZqhqmGu9wH7JKAU+2n1R7S59jF2zSNVsZpOg5vE0t2juox71KFLfC6h/HXcTdYLZIkAGG5htxoPqv9zyFGXDw4Qj6LUz/DDqWYahbBiCQIYBoM4Nz1oFzazh/vrjXBWr3UxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711133896; c=relaxed/simple;
	bh=tBe5liznRyZlp0wqchoTGlry7izfkpkgC9G8quHQJfw=;
	h=To:Subject:From:Message-Id:Date; b=Y+tjs/dBs5j9k3w8o1SY6jrQSl6R3g5Naip4/MJ6JLc6IY7sKrVms3eF7TesUsUwolia633apM6M52Clr02xx+UFYRV494vXLs50/xNJ9yzXkKp0KNVJjovbJqxyU7W52ILhdjPqcxHqKSBfgFToq7RcPsawz2zKIOuG4OxU9ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYkHsL1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYkHsL1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCDCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711133896;
	bh=tBe5liznRyZlp0wqchoTGlry7izfkpkgC9G8quHQJfw=;
	h=To:Subject:From:Date:From;
	b=UYkHsL1xahehDL9iLcpSRIievSmmcSMBD3NhzsGaijWrGUjIC6kmT23eDP2j+nuZT
	 Fz6oaauH/mGdciHpqlrRSlBNggZTBDszOSUjbtNF4woFAbf/O50S2JnVxkf2SdApBl
	 lEMm5aM5HqFR+vgEWgog8Q95GUIZ4zBhqOQdOMGQW6uBLBIU6GXAYtcj+mzHP6lHt2
	 2tAvoLAZxoz5qHA3C0CKMaNFLgGtpofupHc475vSudetp4eqQd1ZfjCO83FfXLCQnF
	 xKGWw8OnCdY3QwrqAF2Z06tgF5t1O1wAKMbME8asJUIAKSK1vNbSx5p5jI2zQj4JsQ
	 8sKMuwSYeH+8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DDCC54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171113389639.25647.12182353098797760566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f164aa38ed5ba1346b6ff059959a14cf32906c1940dd3be4ba8fe3c7343a18f5
Date: Fri, 22 Mar 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711133896
