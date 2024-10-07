Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E191D359F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728306954; cv=none; b=K8Pz+V6ZPKS8QIte7NY0oE3xaJG9qHliEbIHXE5r52SfEH+2DSHyp3zgF056fcIdgKxV/bYKuwq+iiAG3zHnY5imNhY17UylHJWdJClDfVZcv2PsEff+830w+05bX6TqlNW6LQhNs5CiD3/4lWvrsmyb+aQj8I3KMNumN3Wpq7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728306954; c=relaxed/simple;
	bh=F+FHoxD2OtBJcomi4Lxov95f6U8RXprKHHiwX0PuKjU=;
	h=To:Subject:From:Message-Id:Date; b=DJDeEnMbkSt/uX/UG0LdiDiuq9q0BpKW6+6hSNHLJR2h0ZthFfwKGbjBQimu9JB9/TxCZH2zi0z7h/CGQh9RscZuxLpLIEsuMjoPk5Nbv7Kn1sRZIcUkgp0aekcbT2VEX1l2zLMOPq+0WqbJ8NJKDjtDl4O7diNCGU4bM66OAkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfwZkLa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfwZkLa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A7C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728306953;
	bh=F+FHoxD2OtBJcomi4Lxov95f6U8RXprKHHiwX0PuKjU=;
	h=To:Subject:From:Date:From;
	b=GfwZkLa1GlU+Ng65EQaAKLiYCZaleq9+mbTgMNJUka1vbChNSofAbnqiuCaIUZDA6
	 tPyiXORZmECwvMMSPuwwq5RIt9OheBF4ly8N8xA64GfjveiYp/+vsq4UXOnCbovBIv
	 RoQCd3O7uHuGtM78p8KKthMP5oNCL9Ja+1bGY2WN2403dyae1d8wn5f1ub3OyaEICy
	 ZaOYIhXqLSEfQ+mjzw4HKGY5mzHWLe3UjDI0hzN/bBjFGEB4nUrG/dO2xj5v93b9Wm
	 7dOdnFmoBHC0hn4WMlftlzObh+7ghHnHi4DrF7GQP0wwq4SqMGU+OTGboouRvNXrQU
	 TYfWFuM06O4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D89CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830695360.19271.13676251154602558415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738974a1f7ae41dae001c74fc8e9534c23a88d1c07e5155a59e93e5ce83cad67
Date: Mon, 07 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728306953
