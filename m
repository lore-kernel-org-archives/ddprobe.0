Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6326428F0
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714288943; cv=none; b=khafTdAkdufvdPOjXATn/d8zpkyhkBtXUrx8+zMYE5dHLRKfl+QzFLjdr8n73OoKo2I7VFA/bNs5QJ1TqupcdcvLeLd3caNKb1OjDOm8uNRmxGnJY7Mzr8Ew+Y2quHk1DCwC5enLPgbD23FojFm1zsrI0jOUC1T9UWxZJKgsRLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714288943; c=relaxed/simple;
	bh=FHwOpAq/9nWEX8phhYnFnSsW5yn+4IzbkLTAvwWwaHA=;
	h=To:Subject:From:Message-Id:Date; b=rLXwHRoSOpKUpdkazHvMC3gkYqDe7lZ8cuA5/3GwJA9JMDiJiUUWG/q9ksDhpac21Gkifcgiq92bVVXKAPe8llezs40KcSasJyO2uqlAQwaYlfvjaIaZMx0e5ctXlSVNaORiVx1JpIlpXwPq/3RLBZ89udJ2oDjJxORtyQSaktE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnfi4hf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnfi4hf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB65AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714288942;
	bh=FHwOpAq/9nWEX8phhYnFnSsW5yn+4IzbkLTAvwWwaHA=;
	h=To:Subject:From:Date:From;
	b=rnfi4hf5PsbY9KgwhsqvvAniBW5Q07o6phzwhFzyKLQfdIK5duZYOSE/Eeeur4wso
	 0C7fvl7Vhkz8PGVIrbHU+cBowr5Ipulz02uFff0RMKousBfpn6SDylbupAfgZji0Ml
	 r+0WNlmh9+fFoSEpREOZTh3tuUl3VPaN4R6YTuUI8bO4mMWZSDV3Kcyu40guOmGhZh
	 i07XseAun7nuC5PmVVfYkcNECLpr/rTQ4wDiMTXtOpeoVfZENGmDb9h9LYPOhxPyi0
	 ct5FjeY/yLhi5qJJJhDnQlq9A1OhZgo3zGU8kEOIm4GnGVXnh+MfZUnjVypddKcvsm
	 K+XqoN0i49Icw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4647C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428894279.13522.10572879847992548917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1d08765e1458a38b7a92d75d85d6813ce444df6d9274e87d0fad9e125d2234
Date: Sun, 28 Apr 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714288942
