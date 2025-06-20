Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113D17E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750402794; cv=none; b=KM4T7K06v/cpPubBlxpdEqpYWTXAtwnxh0GwmjGfu5NqWysH4vAdqi9pAc1eAMivNSyVBZ8f/LXp9Jhj8AkmYT9z3efHL/fcv7XyJC45XGO/EM3LTACOEwBhKgNR2xUgSsoN9TILKzEPgSze6gdKxdQC7qh8Po9JPth2X2C9lr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750402794; c=relaxed/simple;
	bh=uM1UIpFOMvE0Iv4Mc2MEoAXg7fjKPKEAnoVyL00J6L4=;
	h=To:Subject:From:Message-Id:Date; b=J/EBqwndhCsRxFAxFGx+++/ui4kI8o6ZITs1C3FpYSM/NSsLZpgSUbYv1HgXtbXhpmR06tWobkP+jRGI0LOncozpFwnF+vZcXRjdRulPROUGHwRY2VO6HEwtUus0wzaFOh7UUfpiQknuhKU8GJGkMPXoErNGtz0YX73HlycLWzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKvRGzDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKvRGzDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6D2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750402793;
	bh=uM1UIpFOMvE0Iv4Mc2MEoAXg7fjKPKEAnoVyL00J6L4=;
	h=To:Subject:From:Date:From;
	b=cKvRGzDiJUvSTUsu3DSgZTYcO6iiYXca/uhO2AzzmuPTdQc8eXaLckPbZVE0YenRb
	 rPM+XyWu6UeRTyMigQm3Ap03GduCpWjTZDdujH3O8R2Xj1pF9p1yh65csNswP410hl
	 4/mvQ5G1P+ulUojUiM2kUpy8GSfRT5FYavgDBIb9w+3Jh/tfRvXZ/QH6abILgXaOWA
	 nBj9ZaD8FKgotwjRfk+HEi/DKj6DG3EERX7eeoQL2rWDcySbF7be6HQoos/UiSnM1e
	 3Ido3zsW3pCz7J/eLoQA4h5CGSIshKvUF7+Ubx42bEaY9fE+MlSj8Lpd1YCLZLjeCQ
	 MuefU4KR+70Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B6C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040279357.10306.8927243664843687649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8548d69341d3ff19e5c81fd1dca309790f0990e4f5895d96d8ee702dd8d6d3
Date: Fri, 20 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750402793
