Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A21F4180
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769913834; cv=none; b=Dc+HAL2vVbnyiI4MGoPDfvGdzb5+/xPKTwxYtuSKwJApmtVLiNkskwsbMV4N/9hDSZC5+HA7shjVyDZTjJkvbXyKIa7wtLQSW9QYpCE3hBj87My0IzIXJ/t+w830/4OO6eywVT+Pc03WZh5yFaU6TMg348MBQkGJ9EXVb1P2Krk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769913834; c=relaxed/simple;
	bh=WEo9BH57PCXjF8St5BfwthZgv6LFlOsZtk5t9x3QBDA=;
	h=To:Subject:From:Message-Id:Date; b=XFJE0gL8/5LQ45cTHKjfKl/tXXEucaBM/GZxNaydVbTYeHN+SYhME+G0c8WD2XtDBOJ+cfiSzuhvkM5ZbXf+9Sfa6JID9K3By2FX0xUMhqY7IRdRUjiD7x7gkG4VivoasnBERBaZm7seisDLD5G0qKxw/0WQElCQfmt07MgIc5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0is9N7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0is9N7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769913833;
	bh=WEo9BH57PCXjF8St5BfwthZgv6LFlOsZtk5t9x3QBDA=;
	h=To:Subject:From:Date:From;
	b=S0is9N7Maj8fc2o38p63cD1eWdaSq0IVfCtY5lfVQLLZpC7tyu8l21rDTs4zAaqVF
	 r8xuuJwrlgAHQw0c8zhuW5ChkAAal1P088nZjPynluO+mSHmaahFnOyJsdC+sGMbZ0
	 SURyexJABUnhpqObtXx1YvXRPBeKhXoo/36x3kFW6QKcr3d5gqLWiDO6PMwoSlBB0I
	 JWXuA79f/xlPUdlWViW7Jyy+UniVHX7Xh3pi7jcF9Rld0MpP2p4z2DqUuBsCkgcliN
	 ops0lXKkenTO1GH6/VYcY8SMBmPkBNEpM2PrOt2LEnOZDJaiXTgmp5PVW2uxRGOwuM
	 NDO1uHuL6vruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94798E7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991383357.29665.4276702760684952796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c42d50843956be0478dc91f47afe957668ef83b21444af5e232318e9a463ec
Date: Sun, 01 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769913833
