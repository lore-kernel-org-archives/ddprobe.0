Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013DA95C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737138354; cv=none; b=ecD+pIuh10yVU2YIbJLTgWTmiPBK535a9ajGreyLvqi23x8eruz2BPKuRv9fpIJxfJIdrhJrmSh51u2J4xzyRUnCbjP11MTp6R7HMja+hF557s9Qwgf1QLBGt7klypsJLE4mnqqmLwTuxKFW1WCJZQSrmR/HPrbialrrfvDKcWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737138354; c=relaxed/simple;
	bh=K6B7zWFt6J418+BZ9TWduLWA4g62vOQ/F69iYSYcFK0=;
	h=To:Subject:From:Message-Id:Date; b=jd23NbgMSYkzYYkbpD7TF13KO+T86VPRYeYnzXSDYOpKwfWbBdP/acfw20kYV6ur8N+Sa1ANdYLE8w5PZU7y7PL73RbCnSVLF7bBxHfD0T8xWfLZlta6GQ8CxVmuT91MH7x94fqZn/gXnnlWIqgwVYg2PaV2Ui+nUfkBnptOCm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X31hnT3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X31hnT3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04EDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737138353;
	bh=K6B7zWFt6J418+BZ9TWduLWA4g62vOQ/F69iYSYcFK0=;
	h=To:Subject:From:Date:From;
	b=X31hnT3WqWUPLfUDMQYDACbgy0yLTZbWwVzvnPuJsuRSemB4YtjKGpmgjjtHewGeg
	 sFqOvbvnKaS8HaPreF7qmUM12tn8qLaFuwrZWmA7Rj/B39VTLmGilvS6+ehf94P49E
	 Tk1bDPNe8bkybC4gm7ZTaKUH+FaU3e+OoCyHEz9na3VNSqZsnSs4JNu+E5u99Hx07L
	 IL7D9XS9myMpQZMF5KyBVuDaL8iGrvIj3mZfZxD9FVAVhgkOfm28RYOYMknnKPHLmX
	 dWxPT8kb8jT4kZoEhFaEst5wl6PuXTULFBbtfy34T1hBi5wQ9UCakE6tIuBhHAWU+6
	 8X/uwo5CiQxHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713835357.30226.5056500953159427115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae580378f52cc7c705f75a87d17f898243042cc3e36015ef51455705d141a88
Date: Fri, 17 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737138353
