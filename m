Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DCC2E3AF6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755799194; cv=none; b=ofJZ6e+cGf00sXvKYubyPdnjO7hI0876mt8Zmv7hfaDRRTARoxdZwEKXvtPqJmMV2Qt9ndkgqvuzrEEKQyGtgSkSY+XvxMTP6/DurbOynutPRhlqm7hYPvFrvVTvUNdNbg1MSmztblX4t8vVCSgP/rNAGiShHnJ597KlwrY/cr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755799194; c=relaxed/simple;
	bh=Hw+Zrm6lVtlcUcsOkhOiiWOxlBxquMRCQoJTZwJsraY=;
	h=To:Subject:From:Message-Id:Date; b=gMsUA8ATZq6+iERindhzeFFamF5HiIk/nze33Op544P9O/k8rXAJ1OE5nWNCUjxYgNqAP4IFZNsea20H98Z1lkByo+X8tlcPwV6OgB1jIC0K7xzEjv4ZOAXHhJYGOksyaPaDUhZR9UfPBLy24C50eWtxAWISU4EcdhRsZRXAqTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZS9ErNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZS9ErNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755799193;
	bh=Hw+Zrm6lVtlcUcsOkhOiiWOxlBxquMRCQoJTZwJsraY=;
	h=To:Subject:From:Date:From;
	b=tZS9ErNbLbgtkwbNmVWaV6sHKty39byYBTGeqo9lWfgS6FfCu6McpMlHt26INQ2LO
	 IT/Bb6QDPa7pHTb+zgo8nbOilwxShF67iHRfO2LijbjDkPuvRJHSb0BDK5zUzwx7mI
	 57ewD0+vxWV0iXUKmTw6cV6xtXckpLPtS9Y7J6T9SnBwu+yXOyftiigfGbgj1DX8MC
	 laBXWDH87LLvsP9NEEhrn2Mpve3HXA6m9rjINfjiT60F7+CTJ8E0LZ3RA0mg89nH07
	 zinK6tJfJ3SH/AmEh1TvzIB2WTPhYRsIZE8gkrBTxniBnBNBesdCW3RsdQENOCr+CO
	 vPLWjc6lHeQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C0CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579919357.18044.6283298083463090349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875a418e0fd92a762783a09186b6f38aed75b5e9a2d169eb4a14602d962f3118
Date: Thu, 21 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755799193
