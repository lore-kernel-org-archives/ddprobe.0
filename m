Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F15358379
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774044894; cv=none; b=u/oJi+NYffHOz2FOa8v6tF32RyI4nMcdN1SLJmtQIatMH02S1Sp7/aFwlIEtTe2DpxH78GdBR6re/vC4otSjddNfGpu7xDCOkszgJ+RSlwLHqj60n7UvjMVNeJo94Qmn5ZT170rWQwJCf9VaglsTc5m67+ynhnca5csO74iIN2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774044894; c=relaxed/simple;
	bh=jwuU4yARIS1xHFwDsBDRe1NqDPMZImzRPnpbieew4Dg=;
	h=To:Subject:From:Message-Id:Date; b=i92rxdpYkxO1uVWjYSDPW2HYxc/6Dex6B2GHVKWG5eLZVtV6g1YepJWvTw5+drbc4cBgXoJAmtZX5NEUVaPM1mjbIRvgOynM26zXMr+VzMv1IUxwdZ5hmst1kxQW3q4QcweybpF5HB6y2timvx9bWd8kz5ThqXl1z5idcqK5itA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPn58QWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPn58QWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774044893;
	bh=jwuU4yARIS1xHFwDsBDRe1NqDPMZImzRPnpbieew4Dg=;
	h=To:Subject:From:Date:From;
	b=nPn58QWlUbM0geje6RTSAlYwrpQA0HudKfACaAAcRcuxIaIsF4sK5A/DkJj8udz8O
	 U33zxTTs2o2d3AYrbTwk+7FA4yGg3xEASwXvqGowA3QL15B0ywPE0YfkoYg5HY5let
	 jSp+HHh25N0IdBf8vxvGqVqzpeEiiPuFgoehmtJMpie7dFKFLMjGQxisZedS0mQhvl
	 zk/N3OdiOoObsMH38f5F+Uwv1C1ISsx85azvwL8yDrVQuzEawUUUq2rEWy3TsruVKO
	 RGKIzLO9jzTqciqxlTb0yAu713/cZ8GGznYCcXjqh4cQ3rjrLNR1TaD3Emtl//znYa
	 bryGxDLSdfXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9C1099B3B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404489358.9424.12733881771925713793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2479f2c3ede7ae67b3f6ab25ca75e4d22e28f739c1c49a6fb96ec1a23e1a6855
Date: Fri, 20 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774044893
