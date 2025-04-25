Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CF21E0DD8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745611794; cv=none; b=EAGiC5qxetq1y51gp1eMwBDBfCOpii5tHnbrAy8mFLxBjlfwYpWB36/WfQ+FqA9tX2mwgKkmgYR0X4yhkLeoSWyHiuvWJLK/PUe7FDLflWZfZdn7d6VtHCsVy8zAVoEhfeXG2K3uiPLNTny9c14czXxrTX5dSe3eC2H8SZXBiew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745611794; c=relaxed/simple;
	bh=cC/gOozu1be6yc5l7etxRP9EbaS4yzCMMoEPOafbIEw=;
	h=To:Subject:From:Message-Id:Date; b=Hd9odVyhFBYttyIfG4gokoouRmYMkzrs+OoBteWiQahrKXTc7ZQ8+SXpJgpDzRqmwmllTK3Ua40drZBZ84XXBsvNzC3AeZSUf8IGPMbshpzNTA6idYpsYBebKUunpvdhGNTTf5RNCtv/h7+/GjLvff2X1WJbsPPIuxNjM2NFNl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSOz1yHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSOz1yHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745611793;
	bh=cC/gOozu1be6yc5l7etxRP9EbaS4yzCMMoEPOafbIEw=;
	h=To:Subject:From:Date:From;
	b=oSOz1yHy1E+lwdyl8wv16hQs+QNXekDffERYAOSugaFVluIZuDt+DJ0Ln3d4vcluW
	 vKMelTpxohfnYfwZDWlSUqlH0jOTG21wtls5PnlrKNAM9KrOLE5LANKf/6TWvHpaDk
	 BC5ZYj5Cp5fRvpD2EzxMXYyO1z24yW6tn6q2+smmYM9cmEzCB9xvG1zqlLjDSB1PEP
	 wdH7Ul239UdmTfZQXgU8Kfldvu6o57/Pgc6Xrd5xoaAEHQvcJwBFgqT/BBFF5Ul0cR
	 ma/eGn7BL/tz1260b9XKCMoGkEaGzu4f23RTdmy5VALHAT7XkzK51/oFTd2Cbm3VYa
	 rPKwBvOIv/aPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E327C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561179357.11404.8413722193641462931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0685efbb807d3a9cd85cc54284f929902d2227fe05c506435244624241ade888
Date: Fri, 25 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745611793
