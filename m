Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1439528312D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758557394; cv=none; b=Y/cqnT2Z1RMZx5KHrdib4ok9tNG8F3w43s4gb13m5rUZsWTmMtYiKRRK2ps5+ri7rqabNpRlbrBjH/KrQHDQ++milOGRnmpOR8eI8+BWNDaadWSNKYAL/VPpsQT5Y0MTLuNWdeA55tZD83cY7y4S2Y99ND5kffgHvjxfCJzLM2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758557394; c=relaxed/simple;
	bh=eBPPIwM1Ae0L0ox4zBf4cie8XkMiI5PmO7ZS8JvFcCQ=;
	h=To:Subject:From:Message-Id:Date; b=HbDjOmplSB1aQQ+kHyB9jeVySTk+CQQSL5/4cxkSzzPKDX2HX2Sjj8GGawrEkmT7xaYAtCzAk//q6kM8g+aoV6a6w+31zsOiQSc1p32P1AZP4RfYaGocI0sawzmSsZT7SG3PeQK/X/Q9U3VCTK5eIJZl1oe+WkEnd/1NsLGOIrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHD7dr18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHD7dr18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3640C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758557393;
	bh=eBPPIwM1Ae0L0ox4zBf4cie8XkMiI5PmO7ZS8JvFcCQ=;
	h=To:Subject:From:Date:From;
	b=IHD7dr18emFsLbu4QXJcbprjoOZQZCnlTasEc9rFi96fwGXiotx06//gq8SFvYIHB
	 yv4NyuTzR69GoAYD1dxJ/SMLV1ucy8XU8wxvLgVkpg3G+RZMgsfutogdP67eElZxsO
	 +FiM3d0+rZF4FYSwzmpGfjmWjpTv1/3BCOrXai/XqOF4Xqljm+Xy+Vup/XlC6WMbIS
	 Ay5YOtNfYLq+Z5WQTjjMGykI3B0nbkaaxRaEPEVnjmvgNsl0PuYFyJ5nltlq6PvQSH
	 dt+OPkn4CuM0oKIETQx4eaqXAHqngsFgLfmEk69djwKX9Psa+FettlXxQgXfJIkezi
	 Mp46/ns2x4T8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4CCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855739358.17253.7418517413339622939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889bf9bf9c2ed27b8168365cabd7b3b0489d0d7302dad02e6af95e4dbc26cd89
Date: Mon, 22 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758557393
