Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F6C20330
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743886794; cv=none; b=hd6pDFIniK3aQAXlOSrK57/HCJ2G/BESCLv5Qwfz0LD8GUpSTfu4fs7Z6fdpH7X5jciEEcHIduHX8ebKGLKnEUJ1I4334w340Q1JnmsnTLJDA6XZOHY8WyJ9OyDuIhFQCyos1kptjvb60edBtRSiG6ALWpMzwBLJqdL84b84dFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743886794; c=relaxed/simple;
	bh=M3tiYAmT+ef5c+0wn6Pb16OYSsBb61TWUqMoaU4w/Kk=;
	h=To:Subject:From:Message-Id:Date; b=aOc/m9K/1xnAKlyBXWMOfT8dbJIWxPslS4KWi4e9GCLPCE9pG82hdIZaQ2K4RJJwMs6Y8D842ODwEMOXYjgiwGwSIH7jgXgumLpCfKJ3H460jeZqwi8GW8v/F6P+Z/Lb6av4pyn6hOtMVBN7Y2hdxNX3S9ZxRPIaiAmIN77Q94A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbosxHDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbosxHDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC641C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743886793;
	bh=M3tiYAmT+ef5c+0wn6Pb16OYSsBb61TWUqMoaU4w/Kk=;
	h=To:Subject:From:Date:From;
	b=MbosxHDdMpPh00bIHOcSq2qTTqeIhR+iFtCsXHeArgc1XcDNK+uTMGlPJOQiCCDe9
	 foer0APcRpOXBnm606XiGikv1FTu6YZS6oF7JSibtF/9z54K9QQb6HNKYnQuLwJxdC
	 xUR3cDAEDdYIdUf/3lBqoGsi3sdvqWyQhGAZiKUCiRkk56uBZzFu2yplu6FG6L/YRC
	 IEcCfTqkQ/lUvPGm4OozeSrj9TWQ04gJcy3PEnD7MqKQiqKaDV1QdyZm8kuhBoGgnY
	 JHB8WVh2otX6aDUDd3R0XSbB5XXjRP116CnbL1gKivtjKpvGoYmFaKBJoSna4eN/32
	 gdPYoR4TNhW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBAC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388679359.8904.17428784633107817383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e79806cdfbc52f2daeb124d32ffcc9f3064cf943e349712752bbd1117f8629
Date: Sat, 05 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743886793
