Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84E1A76BB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771751694; cv=none; b=eojdHAiWMG4Kvk205QrY4mpwqqbDeGIdR5T2u2LZw+ie8UD5ywQFmPcbLUWp0jLEUy1Oi+j7ef9KilJ98Mlym1qJDFaG+1i6oFZW0DwB/FAxpaVreAOJnv02NsAjwKf+XNdq0+TSy0G41Moe9hjO7DalrULKIUZKL7jmx0nvqFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771751694; c=relaxed/simple;
	bh=HbXl8/wvBOqWCpg1VXbhWIcFfenhnkuhwWpW7NMVjco=;
	h=To:Subject:From:Message-Id:Date; b=GH8xnaQnnXRyEkmRAs84o3riwr8SzI6D4m9FJKceZOCOkVtnT0RWawPOvkFyXOpU6vd1ZVqTdqf8vFm2BMWqtdv/42/qxAONqZK9/k7U1X4aVQltujtpe8aTIae7rzEi4QYyh4ugZf68H8u66hMNXexEODPTj+1/6LjduzA7D7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us5cVnLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us5cVnLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB643C19422
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771751693;
	bh=HbXl8/wvBOqWCpg1VXbhWIcFfenhnkuhwWpW7NMVjco=;
	h=To:Subject:From:Date:From;
	b=Us5cVnLSPAwArwY4tYpgV4mXuBp4wYxazjK31IbuohyoHwnOuNRuTDpjevQstYoUB
	 wKEKXOpH5mbvXNuVqxxOEA/zWyMjlQ22+X1MtjWNq6cGaFhBk7tWtlJiR/IGpfemz9
	 YdqbToVzmJ7FQF3enRG1jxwK9kVB6qDpbTTtW1zPfp0KiUNXeEudo/7xcLIguxGlcx
	 ZgHLtT6mqt/80QfR41A2yL9mTyYrZmfAYJndDBXhPhJg5Y4NKkXwg6StZOBmEoJqbI
	 xE2WMHdsm9KV2MLEwaC7uwmjCve9LpwqncH4GHnk3e6vEp0KHilW+zciAUgGUSY26q
	 oYM9MZIosiewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A81C624A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175169359.19390.9934628043654820119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc2b235319f2328e83ed1ec2115db634aec58115c1b7d5b4c95455d7f8d528d
Date: Sun, 22 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771751693
