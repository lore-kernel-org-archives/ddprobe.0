Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CFC1CD1F
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708161497; cv=none; b=tzWot+Z2RINk7g4m6cb5HNkiyP1m3PrB17zaIGlfuFyz+MRZfzow6R3NqxWqsYzO7SEOb8zSifPpzLsz7LEprETymXm77oo1fhrHlD/RzmdKCJEzYh3gVRCLDnR94ZeFCvL+l+1+tYFuO+Cq+D967N2ZDjjupr16wPF0m58ahq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708161497; c=relaxed/simple;
	bh=/JjKivowbMNSsQzluEc5k/X0FhGrO/esqcQvV5lprh8=;
	h=To:Subject:From:Message-Id:Date; b=gw1rAAjLn7BozX70CMtL6M6G77GJcQgMcOVctrTwuXUkoudYCVUz2Lw33MLDqPtAbfStp9W7XsO97caB9pEfI9HkoLCMaX5vJo2US3yZiW1Mr5TO6xhnfboyGGpDFXI2iyyNsUR3VLv6XbaP0utfpgdZxVi6fhTehgqMIg8JEpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMu/FIDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMu/FIDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84210C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708161496;
	bh=/JjKivowbMNSsQzluEc5k/X0FhGrO/esqcQvV5lprh8=;
	h=To:Subject:From:Date:From;
	b=YMu/FIDdTNsjc4L1dE84PwMYFE6lO3r/N9Rh5bPlwnOXtxzVIyOHb00OQFEtzgoo7
	 ThECH0naRr371CySQRwBEDOnpWoiAF+EG5cfNj86c13BM8cztM8KRk4XgOHSGIaZ5F
	 JG+K1GBrEiqVQO8zomi/yVQlEZFbIQ8tu48ISsg+Zs3Oesq6+sJP987x7KmmYUUQxV
	 0tCk70GsCLcfT3iD0pRusECA/b2iMl0BmBg3cRts7GxYRVsCMZMK5WNYwUkpH+SsuP
	 d/FxAZaMgxNmKmWXhztQ5ne+43GlMLZjBwKzC+yVUuq/Ohk/CmqJ0ZKzFa+9MotVEC
	 rzSxUNkxDO6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697B6C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170816149640.26295.229602619376160959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0f142d3d150e45e1974cb3ab1b63ce51f3b6fc41c8c913417a1ff9b272ce93
Date: Sat, 17 Feb 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708161496
