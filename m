Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AE92E403
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748792994; cv=none; b=tYeqgib76V1mHBPtbad0gT2CW3lnJV5miKgynJ6horA34JHMjbLYWKqPDh4q+OMO8o50JIuyOYehzkqz8HdQ62DB/VXJXp2kPGcn0K6uBV/JqctlAW40RMOAGWK+KY4dP9jp9zVblW5SrEz0OUzEajX+kVsnjh2cLlJOfZFdZ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748792994; c=relaxed/simple;
	bh=CyjJakx8317826aWVO2+PUO0dmWvQVZqpyLt7FNAm10=;
	h=To:Subject:From:Message-Id:Date; b=d4/WQ95RH+640GTs+5l4Su3+ZSZnWxZNc3smAbx0GuRa49Rz2RDtSUbnWQoNak81sReuFIt19ZQ/HC4shWpL9E6jPeFklfwYh7rm4XzxznjTw0xVPJ20eOnRuckCQmbVVwY6GLeOE3fq9LeU1sEpACw4HTFLVyMZPNq8//eNmKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhqVV+aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhqVV+aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748792993;
	bh=CyjJakx8317826aWVO2+PUO0dmWvQVZqpyLt7FNAm10=;
	h=To:Subject:From:Date:From;
	b=VhqVV+aNOGdtG4mr4c4giXNr6mXDSZA9gMbWLRsIlTykGco9T73Up5ZXRGxHtoAUg
	 tGchu8yooXmi+5HoDEAwMLWA4vNun8VsBo8xN5y0jhli36w+yAsAc1RdnCKvFexR77
	 kC0j1DgeqpA360HdONx4+9gzdWL9DWmvAgKA75H3oq2yMh5X8fZib1DWWLw283sNRk
	 jW6LRNwDh17eORAVSi79XwVGafGDeGqh/sPRA04clFj3FWM1ThOYjpQU2ie9+SH9eV
	 J8Tk52GLxHqoB1ZLBUTAbUrSvjIb2GfBI13vLc7YUjbWNOILY2AozFckJueD5PKBVQ
	 bePNLhy9VUJ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922AFC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879299357.3229.1019061257866275610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c11f18814f3016c29847bcb2239d7bf5eb15e67893b044929143b981f6259c3
Date: Sun, 01 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748792993
