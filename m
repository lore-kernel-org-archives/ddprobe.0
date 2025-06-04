Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B82525EFBF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749035994; cv=none; b=tvaQ45pX0CxTEcpxvHhCJsc1VzaCh9JDPhMjjC2TMckMwe6imK/B5i+hc5PHqryVty/fuTTvXCrKDnURR5YzSYC+QODOrVLKstzTprItJjcp+mRSvEgSz12OCZyro+Z4wKZHO/OaZaE2pdWYD3ja2e5zJt73XF9KjahMZSFIUdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749035994; c=relaxed/simple;
	bh=wGKkqINLsquS+xEwQNYD2IR3SyG8eiHNqzAZLeILc5Y=;
	h=To:Subject:From:Message-Id:Date; b=kKDhpIqseaABUSFD6OdwzVARV9OpYv5VuNAXvFanmFXglcQhLNjHF6x6s28DHfW8IP3fhK82TKUAd3TuW6uvq0fydafHETRzVfyGaMvVCRS4OIqnWUi4eX5fQFOkMZ/89gIlAfHHb8/H6HF7LmoGOV7p79fCf10KmVC16+7VpcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRLHhmV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRLHhmV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2625C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749035993;
	bh=wGKkqINLsquS+xEwQNYD2IR3SyG8eiHNqzAZLeILc5Y=;
	h=To:Subject:From:Date:From;
	b=LRLHhmV+O63mb9CMzDGl5+mAqBKgKtNB1+e+DePQN9FeITYPI+lb+oTeFJDeTMySA
	 K8EcKGXzapGENTDrBi4tgmgyO/46coUDdZHy51UZafJK/4mxVqg1f79OVio3AgGBJL
	 8LHm1+CR3wD3IURb+WHdfKbcBcWxLWM52U8x7x3hGzNxpYP+jwbbyPkupn9hLWbgvC
	 DJSsXr7/ay6Ec61QHpDgbzDiuH42ir1rv3n6V24pWMjvjxk9uTcDHyOzZZ4i5tO+Eh
	 IqPyO23Qq2CC1jufHtznZ3CBJc6ZcvkYJ94cPQpE/r4Qf5Az4nCf1TVfTQIVPARkRJ
	 rEKlsMGOv/lxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003AC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903599358.17402.9292703738573839503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2779e4573a0a82e3b1d7204b841127e258fc51075992b0804dfed8e893bec7a
Date: Wed, 04 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749035993
