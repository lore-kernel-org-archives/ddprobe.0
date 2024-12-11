Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4333F1DC99A
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733906154; cv=none; b=Yd53JkGtJyuGW8rDDJ16+ndSiRRDdIaWB64F2b+DHD3735L9E13NJ9wkyuB9hvb4KRi+vDxcCeRwlMVo/sauWhRogACk/81xdWZDPChkurON/hDhspIQZ0v8KZ6ZIdf0dYtLEz76TU53Pav/vMxjob+pVSe9BUK3DXE0hQUmVzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733906154; c=relaxed/simple;
	bh=hMbhWn4owSKKKDoK8F2ElYq9ngxdN8kWICOFqg8O7CI=;
	h=To:Subject:From:Message-Id:Date; b=nccSl4CXhKz8YCsyOn/qv5WV9twlhoIib9dlRSh6dgbNr4a1tbZJiJOZ6OSKj95owXL9lTw7qsiViNhnIxxXZN3keDKVspWr++BKlcIt8Hr2GxzUUu+KBk2XWnxp1jJfGCe+udk130LPv8ULOzb17qLsoivxAX9orUPxY5jyY0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDD/z7dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDD/z7dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCA6C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733906153;
	bh=hMbhWn4owSKKKDoK8F2ElYq9ngxdN8kWICOFqg8O7CI=;
	h=To:Subject:From:Date:From;
	b=sDD/z7dMz22To5r69OQIjL12BqfOgZzA7HwMCM+1JqH18viQseHij15/9bFNpODKe
	 em/xkC6HSMG/0EFWU9FDmLOTwVZR2PLvsCMkUrz68Ho3lWrgbR2hbiMH8SUo1hiTdK
	 ats47Z+A2AjaCgK3vSa8SGgC3XYeF+vh7kQDuWJuqB/uRsfSC5K+6iujHaCkRnOPvf
	 BHJIdX1inG9laecedSU7I/B0lhIyfuDv7OmJy7paX6SvPwtQ48VX7knje6E7dWyGhj
	 McdsytUyGtDPElmDfzkU6ymjOC5qJOnslFPpswxtPUTwL198Qvtv3pCgVeXBSgp9Jf
	 ndfLVuV27fGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A744DE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173390615367.4364.18288295249340851531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9b7eb6ed6935e38623417f032436646fb572b172573c167860046be63780bc
Date: Wed, 11 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733906153
