Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C653ABD80
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786644034; cv=none; b=mR8P5BNswr3hIsuqcBa901+6c1hXHWzc59o+09pYul1Tasb0Qt5uP5NzI4BeneLdxM3ItjbOQ/oUB3eJdHhf53ymNdkBgipeu3Axwe2pk9y1pMfGgC3MsbK1MYQii7HqJqKu77PmAhDDsCLXeSkY4RdkTcjqJiAgma3w4a+aoSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786644034; c=relaxed/simple;
	bh=YOLW+fWRvjHzm7KcB9nICQKpt9ajl+1Kzl+O/vRYlzk=;
	h=To:Subject:From:Message-Id:Date; b=AqbBktrA8Yw3Q2y+2X7zgvAGv9iswQjP6+6UrUNsB8YHRCjz2ZW1Rfcys6BsJUAxDspl2MHkbbzKoOvtPfm9jBzY/MoDW/DhqfyYjamRQ/QGy6LFejqod41Rk+2x1JTMCZ0+Csz9P7Mdsp79FEl7kWwqVKKRyJp5FYSMBbtkEQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QovmAEKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QovmAEKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF72C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786644033;
	bh=YOLW+fWRvjHzm7KcB9nICQKpt9ajl+1Kzl+O/vRYlzk=;
	h=To:Subject:From:Date:From;
	b=QovmAEKFLLwblV2XsoCOECByd5wfgUzt/F4uyN6ePQzIqmTCYWz/P2yC6wEyYaxxC
	 rUjpg0A+njxg5Hhi6NBv6BicV4+yNrqkLzgJ/lIyjLR+F0G/3bj5wa7VPm8NIaz3CQ
	 cfT7TyspkgXijQgKOCTZe5Xn0607kU44f96+oKyvfLWDz28D4HZOc+XmKVK9MTwGY2
	 jj8yACAMxGm/3MwGZnEPoqUR6eVf6x/cDMpRqqMEFY8xJSc7KT+r3uo8PZV/T8IYNt
	 KTMuzVE5hcma1ZY1irgDx7zZGX+sxGq0k1aNMCCJVvPRgbklLbdWqlvW+al7qgcsdm
	 kO+RMsHItpKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A838FC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664403368.15231.15722685086411992289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b1ddad07d0051670c9991ce9095788dc898f18a32242c6a1b638d0af03a417
Date: Thu, 13 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786644033
