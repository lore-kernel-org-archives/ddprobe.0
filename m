Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DA126AD0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720530983; cv=none; b=GKzz3p6d2GBpNd6KArc8ND8i+/J/MeuGX+WWY1+b1+CBhhTLEw8xumZBeN3RMKe76KyGISvNxbaGoFS6mL5B4oBVeIshA05akIv4qwtkR9K2lEQNe4DbHYM6s2WL0W2/MJLh63J8INxvBDMEfDb0flybyr8C/c/4toEwVwgEu7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720530983; c=relaxed/simple;
	bh=qLohuOH01c9zkGuBMJoJGU79cohp9tVftBqNO6sYzX8=;
	h=To:Subject:From:Message-Id:Date; b=gUrhHET7ZpusSCix7gP9aaw0IMeAJ7fJVWZX9TUP9KjAqQR9ivNZmsDfbgjaqGpjI4I9/q5tEq/7ofACsMESSwMQYu4dn2Ht1+ewMudv6y4hjMcxklwrL57ewt6XyweQBlMSMvJmQhNduCa/lxZNYu0QI51dE0n5pgOHAWDWefY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLavKYXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLavKYXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF03BC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720530982;
	bh=qLohuOH01c9zkGuBMJoJGU79cohp9tVftBqNO6sYzX8=;
	h=To:Subject:From:Date:From;
	b=bLavKYXRJiW+T16MDQWgree5nk7TZHfeyWwHo7qPuPP9/Mck0pvo11NKZSqtj0gZE
	 8ycv8lhVIR9YOzTLTFmDTOWlt8W12krfIN7S730tL+Skm7jW69Wc9gGvttbFPXL0P9
	 Z6LYekyb6Rh7ypcFpOXIYLZMjsPbet5buSb1/Pd4dOv4pnzuIJkgQQ1BqLucmZdXbd
	 9QisQaG6g9TmqDTVe0WIFHoZj7EINoRiotRsbBq9x1MDQm3qC26YSbzAp+kO+XLqek
	 G0Por3OW+rlXUAHKtaYdN+yCWZ1jd8N1cRkggkD2ck+ntJMImW093oDpI0FOCatSrG
	 kBqRveVMpgPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE08EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053098276.16236.17339738209367641420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dc8250a30d63a18e45ca4a620dfff2e45e92c4f19c5a90d2209f0adcc6337a
Date: Tue, 09 Jul 2024 13:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720530982
