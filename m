Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845F617E00D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727421954; cv=none; b=b3wZKsAjOGUMpJ1HvuaqaR5U0Kqn5FnB+14kltkpNBLKcwRwkgkyJfavCMODNibpxcYvLSNBvvI0+wOUKcwZnQ0Fd4ZR3vDIAXnzESRgI1ZrRINFcvHqvYZF6uyuSbQG9kHPImTCIgOwXIkolFKCZ9C9N9i26h0Mde/Fd+Y4VAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727421954; c=relaxed/simple;
	bh=STeriE1nZbHlbIr0Me4jAOjzPv88XgXHr7FByW3SSI0=;
	h=To:Subject:From:Message-Id:Date; b=NLeMJjxIJw3SlTvVEzZOdPyqYwHA3riqYjU4sNIS75BoqbZ7H8CaotO5/0iqfoXBHMQFar41TV1na6Pnmi3+JsX+tbGMePCrvHuGBwiVP5yn9LeVo0S4FLbwU9xYU/Ej2kXslCJyIzrvJNGAItz8NGWmPKRSdIzq2qdM8BcCkm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNl4x/Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNl4x/Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB2C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727421953;
	bh=STeriE1nZbHlbIr0Me4jAOjzPv88XgXHr7FByW3SSI0=;
	h=To:Subject:From:Date:From;
	b=oNl4x/XgHOm2X8qRtZbl5gKqmV0fQPcsK91VaJIEZDgV/iSszqHaahgdOKmDPayL0
	 x1XzSbc+B/OkWoquHch7J6dwSVhCdLmEUN0xE/IMeJt5E9mOWu3mt/LDUs6WpUKGc3
	 /fYPxva/iFW0/cH8IiNcwnV2GmvJd2DGY0mtKVfkJK+T0m1zhzlLomwV/xdo9rO3Rl
	 grLjG/5UH/4r7VfMKrb+v5LzbP5BbyNBhYV31hGw1cOI0VnXdRys6b3kPbG/YwGgY1
	 ii9IsJpatEmo6vTs5Ht92zrVvGlSsr1kuJi9UTHTGqKOw4Zrnq4ciSsgXaFzVhtCZa
	 RRUV00hpNnslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AADCEBF7D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742195360.22683.13979638628628692938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46456764baa9e86b1dfe84246394d76a7fe73826d58008f35d592c21a05a8b89
Date: Fri, 27 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727421953
