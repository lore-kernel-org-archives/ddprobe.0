Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A09D2D5425
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758706194; cv=none; b=MnPy5BmBf19oZhijnflf6MifnKqjUseO1ptCVApyBWGfO6pOzWavFXAdFcfljTpFI/5a4RNdIKQ+i8aJj6s47TCSNHmJnXRwPyNUE/gHn8rJjzxnp8K3O2+TShJwcjKZFG7umNRwhVUQRFwK244/WGnQJq8+fYPPnNgEM2sDh0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758706194; c=relaxed/simple;
	bh=rB6ntFv3o9g6XA+krglUX4a5PIRE+yf3yPX1cSV8XQ4=;
	h=To:Subject:From:Message-Id:Date; b=EkScFPEH4zh9Sua79u//uvDyHWPpJ8jRUGoQHLtZ3/4Fdtu3wwIPg38rcR8kNH70/okSG7Cl8cnzT6IFx0UI2VZfgudovQc3rRCtn8l4xN3UPsCl+Y1tNjhsHgDCt3iAQVGF4OaQpjPWk04TO0Ijbo62NThVro020xFW9I75BbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm1MUPwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm1MUPwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA5EC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758706193;
	bh=rB6ntFv3o9g6XA+krglUX4a5PIRE+yf3yPX1cSV8XQ4=;
	h=To:Subject:From:Date:From;
	b=sm1MUPwnQvqnKi9y88/ITaBhifruNGh7FIas99y2ZCppzxbO0gJ2dGuhu+J6XTRsZ
	 M2tYirsgjdQfs8r0YzyMkCj4PFtNklU9GqwHWhVLTk5uzRE4fCaZsOYKyU9BRpghBG
	 8HE90jFoSQ8zfAlo7RLQo+LsJEWiosBGymSSSMqbG2HY/skqySmPDYthKvm6tQVPTK
	 LnnYcNBV06dFjHk4Po0uhWbmGpqcLxfAl2jwRBQdn9zAk/F2EFrq6hFd0bksn6NXwS
	 mJNMpma2CsThOeuU1Q5YC6vd0NgtsQ3nF9ujqStvWDUFj/nEHEfhUSCTsJYybNlc85
	 QDDxvD66HGDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90412CAC5B3
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870619358.20192.2114345380758154401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bd13d94fe02492a9b48ac20dcb7fc517d4d035e5a8eea05cfa10ea06d2a98e
Date: Wed, 24 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758706193
