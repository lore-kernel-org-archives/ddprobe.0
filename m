Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3952F3815D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784055514; cv=none; b=per86sj88tRPTmttMtpmUHe3VcmGSvxWLoOca1ZEPLlAotWt58CWYzd5vGy6Xbgk/e3B8SxVAbJEecqt7Zo3fuSdu/Jtu6nO0gY6c+JexEuieyP5NnNrtKIBi9HAc8IRcZYrTD3KR1QW576OfrS+q31QPqXc7sNR9I2sFcM5rGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784055514; c=relaxed/simple;
	bh=KL/UwDmHtt0+DsSjF0Sg5YLW9BVlL1XThyQGdg2uc28=;
	h=To:Subject:From:Message-Id:Date; b=O1P9W/4bNIy4PEymrLzzN01iEdhCeJZaFZOh/Wb6RdEW543vFtldKF+9eQPmbBlDqwj3l+J32LQB78RjqW8EOCpCaH2STgEly0+xkDG1l9fq8UnHJua/R35PwBc/D21DS81WkNMJNJ0+pT8DrXSt3HAxylQtJoptgfV0xqm9wz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww2ZRnts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww2ZRnts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCD4C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784055513;
	bh=KL/UwDmHtt0+DsSjF0Sg5YLW9BVlL1XThyQGdg2uc28=;
	h=To:Subject:From:Date:From;
	b=Ww2ZRntsgzThSYdJ7Koll/6UoQvNTo23r2pBaBIni54E5pz955ydcCBtCVhYDzyLv
	 kSiOn7rwYrLDteMfS0XWgOej18rDMi19ohty01OLbbpGEA7NL6hZcY3qP6nBXxeRtA
	 MoTTqCgkfXeniSTUYl8cK8SY4sNDXkQBfToL3s5XS5bp0hIzs+YFCkDZE4JpFSf1py
	 tlZm8E2WrBaHArihhi6tNnXqVRpAdMbZuSvQbUa1pVKBZz8D0Cb9MfsxpvtQHx8fKp
	 Ghz1loj4NF1TL3/eeUIoVyiGi/oEfaMmaczgRBt+sPiF5ZXHVr2a1o/VVR9hVWhXV2
	 eHxGeO57qc+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD3C4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405551370.8018.1851082925594710710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9872a66584e082c7f04192c782472f81e3c97cbc36ce0bdf246e309eb311d7cb
Date: Tue, 14 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784055513
