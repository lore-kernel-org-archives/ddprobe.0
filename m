Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002DE56468
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705946897; cv=none; b=Qce9/eM6YnGmX2T+vCI0IX2sl/XD4fi1CEV8M+PQF9MW4Iw9tbxsMSaOjtHMvQ/dEfPO3T6O03t4HxHn2WMMYaTiGqAWy0btIGtf6jJwypNoGtoGPHDNSe3xLKnhWsumjC4RSvqQJlR7SnAJbDMX7gw1IFrnCuaDXqX0k6MXlOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705946897; c=relaxed/simple;
	bh=LEU0Ss1Bnt5XKH7YdzZiYWMMYOIDJyCl/Pu4KYtOaxQ=;
	h=To:Subject:From:Message-Id:Date; b=mRjkZwX+p3ekSf8yofggVyrdmX9iLpyMcGBQYlm7HQGOM2rijoxMlKatRt2pCtAGyZLwfKJQlmkDXKmKqsKiVsRS0F7BSh7kv6pvP6GfKB0zQPTgr7eBJvTK9mpkQsfoc7uW1pcNhKNnl+FU4AIGQhkbNR254ytBrW98GW/Vn84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpf6YOkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpf6YOkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762B8C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705946896;
	bh=LEU0Ss1Bnt5XKH7YdzZiYWMMYOIDJyCl/Pu4KYtOaxQ=;
	h=To:Subject:From:Date:From;
	b=gpf6YOkZjH417CKrgp7UxERcWYsnxtKCP8yzMcCxu3mpRKzxSSAtR1hNSsu4J7S9d
	 KdRoqrgIeKwBPDk483n2/QxqaSECJKeRZJ15g7VvRTFirRNcDnFrMO7zxlGcpMNQbi
	 sSM+G9gC2oSY+oXl6FC99nelS8ux0jCqUiQ2GqJaC6WR/5zAugHIQ4sDh3NwkTUj/J
	 fFro8rZb6eGsGOBT2Gj/M19YtJYPWwCMpOMp0T5iIZWxul3NCW8nt4WRKKsYxV21hj
	 WSRZPbUoohbE9rRMzkqRMTjB0o1O33U253nj+xWYb8E0P3dAyMIDyrNsjoFgKjEj9i
	 4K/woSxkaN75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5AAC47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594689637.26627.1875787520343330575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1223dd6aadb7f1792deeee208ef52a2a76d712a98353f9ac5e136dc2989a758
Date: Mon, 22 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705946896
