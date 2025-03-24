Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217725FA38
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742827794; cv=none; b=mhJveJ1ZlAe3+mnwr5LR12h4ESzgIcqxFJT/UODPC2z/dyfOQxJNnyQk4nULTyDT1ORL8o5wBOhvjyh3EkKjO2h2Ho95+h4dQ+6DKMgWsGk7Mt5uWkJDODHQ83kvspLckI3ohIeFr4kMDSztDQvvp9LS9KmtRSLzC0pgCMsI4U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742827794; c=relaxed/simple;
	bh=947NsexpCYu8HnpTYZUtn4y7exHh8TQ8FTNvEau5hoI=;
	h=To:Subject:From:Message-Id:Date; b=CEVTTjYooXADebewjl0uwdidsawC3VizjmAzuGHMSS51yCUtKr5CVhlilRYCV2E25jLZV4mLGcudlXIq1x5ZYZ658x372B/c0iYIlPQExFIxaWegbioBViPtbeEpGVult+MgjMzHpOU90L1y2XUzG2OiPe1wg1AwO+rBBe2Wahc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZBwbNIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZBwbNIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8EAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742827793;
	bh=947NsexpCYu8HnpTYZUtn4y7exHh8TQ8FTNvEau5hoI=;
	h=To:Subject:From:Date:From;
	b=DZBwbNImOVbNXxYAPLkDEscae9jywxxtS4Kt9GLcTs7O+hlM0TzAhifagstta2+/8
	 1c6CdlsgshyfFVqiELz4lGArgNcfCufGkDYRX7EXfwgQu6baUWj8mc94KQO2sIYii2
	 IpK7QpJSqoagFmKNA2ISvxpN+/ayXcXxGZLX50WljVdlNJy9FeL9949RbMeHN0WkM3
	 UIpVGOsAaeklOfeKfpzc+UiW9p/HUMjuENpqd5uZ9Uo4YotOGymQ8z+12/1ur02AMd
	 d3XKhKdenBFw/iRMqhWnvC7/z+MU9aG5LzVHUnlntxMykWCTphGMK81aeOb6NjFQ8Z
	 FwkPkmSRsalFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944FDC3600B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282779359.1548.11511727121019098277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450408f7341073505d962284053c80dd28d17f40300a8399c3bfd334bd4be55d
Date: Mon, 24 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742827793
