Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A062158527
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732923354; cv=none; b=TN2E7OtKi6yQHWmsaTK2GSSIvIzI15wa+bomz9yII9KE4ktofvomMstdYjughXDz2aRJ2kw3OCLwQXy7Uye3HaGLeLl7inRq1TRtTHk0o0C+S4ZA1D8gKO9RBw1OGgv1YhayyRjgMi1ztl6ZsLyoN/5nSBfGX2BD6FBIzWNIG0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732923354; c=relaxed/simple;
	bh=4YEdczR+I0yWrw+lXUAkjwX46DzNrX6BD8XaYbGPnC4=;
	h=To:Subject:From:Message-Id:Date; b=hBboMM30W2TzGG2ORo3cHVAh/+PXXkRZczdUhIJz9y0WpOPypv6asGCvFoPasD1WACEQJ/AJ+WMYJMZbolENZYe5TEt21ypW35Hq+1MbsqBGflRJpNey5UcpwJUhWdwuJ5SFQEEZhIdD+cX79Ntp9H7eU4EqBzMdsufpzzfCJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcOyAsx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcOyAsx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B3C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732923353;
	bh=4YEdczR+I0yWrw+lXUAkjwX46DzNrX6BD8XaYbGPnC4=;
	h=To:Subject:From:Date:From;
	b=ZcOyAsx7Gh9aqxKk+r7D3uUdeXddGg9wmjWB7R0UXDl348l5FjW1yrsGfO669hTsm
	 54fAHUzVOeSEwQWgeQ/eG9dUpiufe2YbP0Sw+ZEAc+/ds4YThGLqjbM+Fuaa0eqRs4
	 Ga1GfHU9+wPnxLZD8g6Zutc9Ac6XX3VbTgQmbAErqDbOw492x/E5CKBPasvqrcS6gC
	 vZ1aGHQ9mtd3V1cFhFngqSDnixh7ZfWQG4kw8cfrji4mOXAVg6bgTcL6eclSsPiPiD
	 WCJQTS4d7qRTrBU2lE2l3VgNcMA7OhTSLCET11ZQZ1E6FbMeOJQVwCPuoLrMY0Pb2y
	 UBboXrVSRFjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD5D735E4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292335358.20546.14789620059599431148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66262fbb26e97030839377d25693baabf59eeade5f01104658811c5f3c7745b
Date: Fri, 29 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732923353
