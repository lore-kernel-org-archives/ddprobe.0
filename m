Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1785D35CBB2
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762895994; cv=none; b=k6KN6f47LOpHFbeYb8lqeadPyVtlJjofoDagRWh1O0kQgFvG/mcBgyN+25eeSlGTW5d2sxVJ7OtLNuyy+HcqZT0BiN2hO7qjL4BRiXiyY7FnAbB5bGUmE/SyPyBOtfFN7f99u1SBdIUaWsNP37TBJMAGEgslda78O496TOG9p/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762895994; c=relaxed/simple;
	bh=zp4Ct5XfCzF1IkpujmUd8zy4LyQiv/PiIc6nFnqEZ/Q=;
	h=To:Subject:From:Message-Id:Date; b=WJlJbWonHKZfMuru7OApMHX40XATc0hVIVY/ygDC1iPDEycVPI2KR+wdQKhAqbmgUtZdmJqGB3W8uTCRIKyT9hXkiaMPHDPPIOZ5YkOMyPvImW9dxS5txYEsS6Bd3brYyl4CmpYGbQY7Z1V3TOmVCgCGD2qf0AubCQ0zZcTJpyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPE6V+AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPE6V+AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BEC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762895993;
	bh=zp4Ct5XfCzF1IkpujmUd8zy4LyQiv/PiIc6nFnqEZ/Q=;
	h=To:Subject:From:Date:From;
	b=vPE6V+APYEfDIAG6nUzmIxlqcZOLMkp9xc9LfQp8bn9FH/LxzoOjxIR3diinUAGGR
	 8auZsy+nNpcCQk9VytSl6K+rThsh+pBRoE0+fcZ6HpbKXreQ5JTYtu6ZT76TTjWT73
	 4VGjGoGZWfJNLH3plqRtlwRXx06oc/vMsIIJAYyiFq8cfHypNX17E9A2pAwk6bzvPX
	 2mMdQhVshRVjFzdEnLPac3sEa2whtkChNj7jsyHRPG3sbIUAKuO7oTguj8sryGFlBu
	 AVwo9wkNibv1PAlIy8c03sZ2/GvRKE5U8zHEN3PxUT15Xzt/mfdbJfL6vQNa1Grosi
	 vrYqjlf+9+t+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F23CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289599358.8889.6068227000847564394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdb9d2d7eee522bc5d488ba3069744fbb1fd59625ddb08df2bb194df1813582
Date: Tue, 11 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762895993
