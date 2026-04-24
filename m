Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732043ED128
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777054054; cv=none; b=ltOhYvxfIpxG2+G9+z6ZUXQQ8FwNo+cZ6fhZczJ3tnxQZx5DOLttQXrMjNZ2Uam8FXgKG8mbuU8dH6Tav/vROiJfi0Z9f4eLmVqKHHSv2coA9T6gvoGECLPezIBtVPf7jbuw9Oo82QTIVPy9qvHoaXdqtUfekv7NC4/vmAo1p94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777054054; c=relaxed/simple;
	bh=U1g8S2Dtm/sjPkU+W0/yIV2Xd6VZ7O3/V5bQsIad1OM=;
	h=To:Subject:From:Message-Id:Date; b=UVpWgtXQ0v5H7GTX+M+CfRgUJj7A/PUy/Y9xl7xvF+z8L9MgicSPmpx2sD/0rWCbrsAB1agNW4+GbbqeM2k5iCGHnnN4K7u63eA9Bb+9gP8rOJyH/Sgr/fYgtBpBFUzYkKAUpvXj61ggPmE0iyhiEA0ww76fSzTD+PmpGejzrmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKZNGTpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKZNGTpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A3C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777054053;
	bh=U1g8S2Dtm/sjPkU+W0/yIV2Xd6VZ7O3/V5bQsIad1OM=;
	h=To:Subject:From:Date:From;
	b=UKZNGTpAiydrsvYj9osx2GA7OKsx8jOZqnAvewWr6AAaZe5/WeSgHc0rJeJGBrKqM
	 Ys7H1f+h8Y3M2YbYdIXUvOb8nhvNWvN3HQKiSSeKznwziqFlZIG9av9bsvdzyZSKjx
	 YpzmKmtJyBG1MUIPjwzp6DPRmXDV8L9P2YmVs9Yjhg2Sb/S9GCRjob7t8+H+mWKQnP
	 Hi2ynFK06ac7ofVR1g3AriRpg6r/dWpP/tA74Pr1960XlSh/ePFLY3piDpTtXYTz8R
	 KRtOhxzMecvUzJZu2VHOUTJmjzDg80yEDqgMgq3xUwxwkZy1AewjU8YYxngaH9aTBT
	 hklZbZTl/MMug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E9FED3F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705405368.7860.4706908378756886104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9c224902e9dca48210bf2e975de1e4ef13d86d2992373afe1f4d3c6bfa259b
Date: Fri, 24 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777054053
