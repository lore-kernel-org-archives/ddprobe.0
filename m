Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BEE2F2E
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759068594; cv=none; b=hNGqlc2KPCyMY7c6Ul9YwHft03I518hmj3fPqbmZOsK1XEEIFK99he33a37mrvZacrRe6HoXQZa+NW2uyD6mz4qOt0eLxi/wd9ed/gBlU1qFPnz7BJXPqtKDFnKRyaDiiX/sPCwR4jmnMPAteVsIRKfEr2d/XZgt/EIowgynucY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759068594; c=relaxed/simple;
	bh=SEjNzKq6exGI6XV1GJWLV3vOmwQeHQQSBw7vA9cP+wg=;
	h=To:Subject:From:Message-Id:Date; b=RCMX/36bz2igwT33F8YDWcjrIbErxqpXr0yXY5iEPlYfay/NhiL0gCq3/Zi4Sc9C5oV2lCjIreAiW3OUBP19uoYnX1VtETdiX1Q0TP4s4sLTw6mbJ1p7rNIqohtjo+ishaFP6xdR3DK6shLiiLdxLWSmDVKIrkpqsGzrb6FFxb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNb0OLJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNb0OLJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA003C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759068593;
	bh=SEjNzKq6exGI6XV1GJWLV3vOmwQeHQQSBw7vA9cP+wg=;
	h=To:Subject:From:Date:From;
	b=aNb0OLJmt4lE46aH2BBA64d62ZxbZ3yFRhUZOYhKArZUyBmpt8RY41xyN0qUC9aBP
	 DorcGOfJiLrXLmDn4Vbz6l2xM3kgkOzLt4T53pwzwGBV6x1OrGZqpFjutFbD0L1JBE
	 LNLy8bj1dUS38u2Q0tp6UbFD8wTPWAruoe6N3LQmalO3zYeIFkTSL2kbP/lM7heTFZ
	 jfR/mgUR6ULw4BlYueVEcRAOBLDpgb835X6uffkzRglVD+EsF06IrzdDXKeyRp/R8k
	 RuCZ7eNYbP9bZ+tsw4tFWmhqxL+WvvpNTTTt5mrS7PLtZl09fB+uMuAdfjFAovymqt
	 Z2fJ6ackKkjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C9CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906859361.21049.15403649132643056526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b576115199867f284105a310ffe3a00b601bf59a18e3f3e339920e321127782a
Date: Sun, 28 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759068593
