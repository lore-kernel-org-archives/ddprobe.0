Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0DE4C91
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743914994; cv=none; b=XQX34ZASC//qKAbP5z4n5p0nc9YdQUCYw+KY4JINKYZZvLRNVQiHF+UzcYnSdIRI7v2ZCnaALl96eBebN6EoSrPgs4CYzPxfUprvSSHq+zdtbBca09jl+BaNKexmDhoWaP47idj6gb9qXGR9NXhWUE7HNd16Fr2DSqo8dB6af64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743914994; c=relaxed/simple;
	bh=Q+149dDl8qmgf2/ppcqp1OlNgqKsNS8DNr2WPCyb9C8=;
	h=To:Subject:From:Message-Id:Date; b=b3QV/5Ln8kV7lfPNu9Q/+31tty3T1tYDYqLOOHQS5YGcaCcuzsEqf8FwGie9QUB0nNlyMvboQ91d4CRPYHIOFW56x9X6f+3LCMqJ7F7C6/yw+CGzk/LmF4iU0IumrkYH5smWTkaRTeSaYMOR8icLyRFEO3JEs6Jmjo0LxeFOzmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc/z0RyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc/z0RyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4474C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743914993;
	bh=Q+149dDl8qmgf2/ppcqp1OlNgqKsNS8DNr2WPCyb9C8=;
	h=To:Subject:From:Date:From;
	b=bc/z0RyHpX9u/NUiZ04p13ORzt7QWA35Es5XbE+9XUrmGuxL7O4C/6a9mgI0p/JAF
	 K0tk/AXeMpv/0kqxmWmJ4JiqlHBb+/etfgQg2E/DQxTvEQWDP3p5iHdstFXbklhGPz
	 2vXSJn1K1g8XNETh8BTJWNkethzb1da/0etlhnbH54uCRez6gG1KA2jMv/LLmQaJOu
	 dZJ91ntA8qu4SpfNJqai6hdhCwIL+2C2o7oZjQS32tX2woJp8Xh5iBOHO8OMTcrxdU
	 QlDBGw9YuvcmCTYkxlXEJwldXDfdWvT/J+noFnU5lwx7lzVMqpdx1yd8ukRiCAw+Cy
	 q5l/DqDqlXrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12D8C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391499362.27379.2160596533324224313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974c5e18b4433a6913f9e56a37362059d958427b764474a44694d60cda50f1b0
Date: Sun, 06 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743914993
