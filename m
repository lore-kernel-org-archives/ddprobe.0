Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925F1B86E0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722059154; cv=none; b=pSl40qNxBRD28igNf4e82owvPgS0cQ5DReToQykpcohKdDKwx4hyQ/iTKq/arIshzJVHgnsD9WSCL2iZqMDU9safoZpedZcF94aeeA4rWL5EMJ1mt9fqs/b/r64T7IvW4dYIAXCYvGY1M3MqLWzmFX1aWOGiHm2Turj1UX0oL+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722059154; c=relaxed/simple;
	bh=xtyXO5flySidSrs3Cbww3JBMt0J7WpyYj1inPCoZrPQ=;
	h=To:Subject:From:Message-Id:Date; b=aI4FOAytv7JhKrgIqmMIYTYhNRcbqRsZYe1MeBmPLMgdtIni3BbSmMnLDLCowI9E0lBlUeqL5TKpm6w66JK4ArzxtRfagSFrZAZL9FQ/8MM43WALCStNwaqxoeEPsrpdB61NJPKY9FF7sGvVS5OaK14A6Xu+kTyKgjX2a6tmZKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3i9tMzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3i9tMzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0AC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722059153;
	bh=xtyXO5flySidSrs3Cbww3JBMt0J7WpyYj1inPCoZrPQ=;
	h=To:Subject:From:Date:From;
	b=U3i9tMzuw2RG7Pl8MvQKQB0Ls2jEd0ydnzYvknt6XZ0EMvAuZB1aAlt3vgN2IQXtp
	 rVmQ02NLwTKaaigdLh/AGAZjcQa1jJyOfRUaCJTXh47PRqBjiFOpj1q98kuIVfC0TJ
	 n6UTA8He7IJCS8b0tg8YQL1E6LO9A6rRkO8uafKiluTkSbdOtiQZ2Ov0a0bqEnF+MV
	 MecHx9bJVbgGv6EDrAmoQ6D1d0S9b+Y9omP8Edf/Z2EbQg+CGL1Y+YgOuCbh+CngLJ
	 pjDX7jhUOnaBUCTMEbtKwbo78Zph0q/GU//Ppk5VhT0+kYQWtOyTcz+qtlakxeiveG
	 R3BU5RcykKAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99058C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205915359.9364.7350626308300893189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ede935fd65310ded5b5d823191a7c1cd452350ab048cb4b1441966e3743c070
Date: Sat, 27 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722059153
