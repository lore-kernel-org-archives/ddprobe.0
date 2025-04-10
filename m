Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F8528150C
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744284594; cv=none; b=CGHqN2YcbhsSGMImFgMHfCe9Kj6phU8BQVNaNf2cCID3lO1Mi/w5yQFCG8wuT9nwMGi9PzSId4iJBOv7ivxO5OYqox+BWG8ls+o0dmk7LDsi8EOg1ATq4j5vxVLb0Xd3/5ChcTYjJwW7XXBktVXX7WhQ1yEWa1Ns/Br8E8YMUik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744284594; c=relaxed/simple;
	bh=+hpH3Ml1pwKPKoPr/Dd9tDikvUm912zB19d2fCdCrCc=;
	h=To:Subject:From:Message-Id:Date; b=hRAlZECp29u0xvPacWcXUAHuFXESmqgQw/SV6F0W6PIKyFedrg2fkJryAJnMswOybatVyCDxp0vGyXjZNf5EJfZGNaU+iVQSORZl/7FJ98mibURbms1UJTB9Qakt+t7f0lSn4SDoE3W8XTPAUIB+F1pgqv06Kr+AhFZa3b3JxKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Hdth/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Hdth/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EA0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744284593;
	bh=+hpH3Ml1pwKPKoPr/Dd9tDikvUm912zB19d2fCdCrCc=;
	h=To:Subject:From:Date:From;
	b=p3Hdth/gWfiV8XQgaqcDUWbHdTjWsUzLR0j3cRRjm2JTQkwdCYWT+PSUJ7tH46vdy
	 o9WrfOTqfbizmPXusLlz+XQWsbFQh0Z5OpDdGuzePx5lRcDIBflb14yiOoqQqIHou8
	 FEf/ojHtcoQ43UnAT59SWYPq0B/RN39Xc6dKsCyY2gDhh5rhkKqWMpvmthlfdosapT
	 gdTktP1DY+t/DJtJkwtP5MSE9+zNfm3UDWLhuF+WuVUotgPUuGeVUtwJTXtLPCSd1t
	 0p/hylrP+yydPRb8mgWFana4q+/9T6KQjA59ZHy3pro9py8TIZeD/2jCKVXyZn2DX6
	 5QYCZPVENfQMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1404C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428459363.31034.9172009917675545827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c646895b336e18c294cbfe1cb93328e13de839bd1e7957200378947d5f39f3cf
Date: Thu, 10 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744284593
