Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF91684AC
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734117354; cv=none; b=NpGbw4gJ483UbmTf4tZvgr+4aKMoqSux3NU4PAnobcSrz4jc7F9z5Ml9o4fdtyu2kXqA11+VSW8KoR9w/TaU73d+oQ1cL3JH1NqZW7xn2uhH6V5C5atlj9FOxi9EO43vInefW8p0KiNDx5xfigno6J+tGy8CFkNfczU9eJgmsuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734117354; c=relaxed/simple;
	bh=kaDGVZIpQUsMGgiOVakrpyYoj39B+Lxax8Hqf4lBff8=;
	h=To:Subject:From:Message-Id:Date; b=JLiXkNftwJ2kLdZ4ZmnjgBhqhH5lumBC9BbobKDsRu3BFJfKrhl5QeD68q1YSw6LBKsykNJYXGcJ4Ozqnkjj8uFC7Kw9sFDzDT3psZIwKSgGFsQvnfoeIRo8LYU3DBfl2w9tr4WWoB3zR3Vlrc6NzXcMm3eD8Kg8YiJYtQhN1ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKGLdz+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKGLdz+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D2EC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734117353;
	bh=kaDGVZIpQUsMGgiOVakrpyYoj39B+Lxax8Hqf4lBff8=;
	h=To:Subject:From:Date:From;
	b=BKGLdz+8fThsjdX8PNEv1gIjAizl4OqGdiNy6dwSh2cUXs6/wrqBOINy8xrpO33RE
	 Gqx9j1XtZ3SWljKzlOPZvATiOq9NYoM0KTJnUWQWFHsIkuJGG2sYBDIr5d4qEVRhVf
	 BnxpRiOu5ZCyZAOeJoJOdlkWiz+7LLRmFZG20FoGYA+IbnTvg57vNLiPwtXS+1dYLJ
	 xpd7mu1NE8w4h30tb2zafROl3kaENoY9+ZETk+fXjTcfe0oBoYyyCJqMXg5TiPZZI1
	 GMpHuOFOtu7FSx11ZpppZVGQ1lGmTEY6Yep2qNNBC6cJt61uFYrgi2CnpdTgS4my1X
	 s/QU1mYKZvkaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A795DE77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411735365.13692.1359654665107443559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1dc192f06f0665cf7071cb35145c9040b5dd9ede16cc90a3db733c995b0e3c5
Date: Fri, 13 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734117353
