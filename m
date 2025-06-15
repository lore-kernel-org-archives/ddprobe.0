Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E2D2F2A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749950394; cv=none; b=VmG9YJlnrhY/bUHaylyMJMmq6vjrrzCmstQS5ZjzozbsD6xQodcz6utU7Ds9+/y5Vz/rCjzvyjtrngwv+XDGGA8PZEFeio6PGWiEkKE34cIjhMznqWzwyjMylZ8ioZBeSh8ov/UFcAw8wUMvOTwu+sIA8rGCTDyq+X2MulZx9i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749950394; c=relaxed/simple;
	bh=fl+uqURXNq6THY1RKQzEVsFI5w9ZjO0kelY3nr0jsMg=;
	h=To:Subject:From:Message-Id:Date; b=j/MenY35YtxRAiGR94lfpuEi/jMIRrOgyKAlsFlP1t1CjNpjvS9k3lLg0wI2hxIXhMoJlixmHi5DUK6pxbkNpEF33XcT111P8UnZOnBepafn9Ly6b+ArA4y2hvHdB7YCio5alYHALMF4dibIpR6QVFlOqYyBpFUc1uVK60VEKgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN9kD6fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN9kD6fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6612C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749950393;
	bh=fl+uqURXNq6THY1RKQzEVsFI5w9ZjO0kelY3nr0jsMg=;
	h=To:Subject:From:Date:From;
	b=eN9kD6fGCaJQTS20aIDO2Rp6y9i8lGag0RQroqWVN9niOnCQ9EyzSSgIZg24FKR5Q
	 O4v8+ia2CdPaC6L7VM1HxD0gJa4WURPZzME2HojKOwCSGp9NH0v2jqWhGsP9IM17Lq
	 b48N64O7r3XRQJRZvUpCFWWg115oYctuC6LsFRK+j5EuDmKXU0BQTe3sHp3uraLqJg
	 wEPWt2dSocvVa3qMwLTVXvXtV1BtBQYKV2hi/3vaIqV6EIf/BtRjrklfjJva7SKBCJ
	 IA8D1Nn1kjDwsqkkAR4cs0di/le4Tk1yIHO2rrxmQpp092V42N7+QMUSWD9Ig8jQUO
	 AyztAEVXXlIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBCC7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995039358.26859.10612485767833318679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949a7a82fbc2e8057d16bf949f2baaa2120063b5061855c82b97422990d597e5
Date: Sun, 15 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749950393
