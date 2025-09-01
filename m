Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433111957FC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756703394; cv=none; b=AbHhj7Jwh9BU2x0gFp8QsS3Z7ez6KLDDWPovW/ha1FyYCZ6270UH0T+pRPMw7x0i3vqsgl3lALTF+RHgIYVFRGxtsdGth5DcSZau7IVwMlaUoPGQZt9nw3sev5Cm7eLBQfhGqDaBQk65/FRiozpt1zNT60XOpLaA4rRSlHiqyKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756703394; c=relaxed/simple;
	bh=ziTnIEgNP78isEXBkf0XKWFmKwDHJt5P0zd0VDZB9/o=;
	h=To:Subject:From:Message-Id:Date; b=dfbw1Pto6i33kcX3qeYnXjjRG9l3JDXoPOydwcWYPGwlZMPKY94h+m5oK+UV+nabVgJH1E+XpjaBgMFW2nG0Rn2otWN6R8HwbX/6oM5J4LTwNczKKWiqqTKCSDcrauW5K3LL6MVxSwSxkjouhAl/0mDgL7Mq6PDp3dpFt9XDi2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl1XA160; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl1XA160"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756703393;
	bh=ziTnIEgNP78isEXBkf0XKWFmKwDHJt5P0zd0VDZB9/o=;
	h=To:Subject:From:Date:From;
	b=dl1XA1600oZAdcBJjcR/KbY7D3Rdn+QhmURXPSVCmuvZ5Yg0KMireLNl8/gk9qR52
	 VInxGjoK2qnKOHlVk/QaFZDF0v/pynVaWFqINRochl2gZtLuGy40uhwvP1Qb3vRE5H
	 OECI8Gb2o6nTEc2m7DrQX/9DGAAKqPKs3pxW+oV1Y2+KpycBf/GTonCy9hwdUUEvam
	 1bZvCEqY05MaiAXRUw5nAz5V9KwGw+doTc1C9qBjPkjpJF/wBCh1Wwk7Bpkm1+XVH0
	 UivWlEc50MMRvH82X4wSWzBcz36ZYiJa16ndIPWFcPCNWzs8QUFljq2oxF6eLX3IVt
	 IHBIXZYXBVEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D35CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670339357.8628.6880377125718521958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d0fbfb06c98bdbdae055faa068207c9c33fbec18e6bdda0f0524de43cb0d33
Date: Mon, 01 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756703393
