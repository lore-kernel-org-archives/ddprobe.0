Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D47911713
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745200794; cv=none; b=j/y/YzDn70KpbZjo9P4WBhHLryNLOLMAtzpoUYcR9fHWK1NUmfPilk++rCUO+Q72zMAgByFU2yIlIWExfEszUOUd2kxyXEM+k4tjMUw3G3w1fl3KZRqLkWK9F4lZzoU4NLcDDiZ5NKz1/4NAAfYu0PeiGiw0BU3CDSn/6y3Ycng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745200794; c=relaxed/simple;
	bh=j8EfflHxkgZIiUWhuw05W7tQ1qTP5l5twrKVRIo3yFk=;
	h=To:Subject:From:Message-Id:Date; b=KwhkZVmHX6SjUyvyFQZ8wPCqHMNOcwG6qYLuNvrvvIK+cRn45U/dDQvv528MXA696G2leF0dBWWWHRFTdf6agv3IIfwzaqM6u81LSFxyJKQ3v9nWH7qu3Wmn/WLIIDZgO0VpJKQbbP5H+Xmbt+q1DrkzNS/VsSiqSmiArWZSIXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMFq68Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMFq68Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DDFC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745200793;
	bh=j8EfflHxkgZIiUWhuw05W7tQ1qTP5l5twrKVRIo3yFk=;
	h=To:Subject:From:Date:From;
	b=rMFq68QrVWhzD61epGPsH/+gbChT/Q3yKOm+nx9KkSwyfSmozo33ywKT3V+pxpj1/
	 OygIMi6ywlIL6Sk/ruMBZB1NLS9OxPavUQezaAwY/IW8TiXpNpM6EZvjnb8BdQGwzI
	 AcXeawxN60bZ7FO2d9hz8S+Ac8ChkN3Fe4DgA6OZEl5D1iO5c4Jg8jvoWGqUKMIOZ5
	 tHEwZPovMP4o0Y3GoEhgvJGSxPguXfZGmD7OJCHyXPor0sJtCTlJBAEsAAzyp7mrAN
	 zSxBR/SeGIcrNClPGl/I9oSzBxupIrhon2yoOvDOolKXu7+IWSbPeDxgYvbGAmRKJr
	 hAs+OCLwLcDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E061C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520079363.29889.11207030989299525670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4850b34f1c010c6f68f9209fbd6eda6e6ece0cca90c065c9c45630d257526f
Date: Mon, 21 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745200793
