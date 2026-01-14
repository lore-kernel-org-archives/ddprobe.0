Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AD534CFA8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768424036; cv=none; b=VZMSki74u0IoGYNVkl2zbMF9b3fjMsMT8id3IwmrOkTK8j3SI3IlNDS9eQHkkxXFqpgubOHVdZcZH7xODSAK3WPZlVheyIqLgBS6JWfdCl1wpGv74tg36JT1esrmgZX/k/4/cR6+hVUIgrZe6WfGMhJbdVjzWeMgy5nCCikDTI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768424036; c=relaxed/simple;
	bh=Cm2pZSyNa0QcOCHuTExA2hWRJrm1I8MWljX5DYUMi28=;
	h=To:Subject:From:Message-Id:Date; b=Ew/alpfF/d/T3KwGzRwPYYnRHU8Cf6FOZdM/Ei4g+swOwY8ssm3HDjRzmiYEbvycKMhu+7XVoSh4Hsa4KWncnjv22V9gj9ts4g6bxDt7mC6T6GIuVnhByEFgKzd3CfeECo0SYB7yx/0I+uO0c6uwXKY7LJxtLc4vdm3ESDYLZO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq5xqZWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq5xqZWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768424033;
	bh=Cm2pZSyNa0QcOCHuTExA2hWRJrm1I8MWljX5DYUMi28=;
	h=To:Subject:From:Date:From;
	b=lq5xqZWcO+lVrI46/mJs3XfLBONa5OAngcB1b+9KwruVRpSZ1HlCSQP5UHGbokpww
	 G+9Hwz9YhCqwyII0ocRYuGTvO8s/Y49tZ6Aym7XVOjnpvP2OAnN3N918Ivr6nUzyGi
	 wNEUYUURtCCGCLTCQBwM0rpQ5qOr0gZIATA1Iu3GunewNlOErjDY9V6jCyOdSj1XzZ
	 J+NBCIiE+YprF9aclySzDwbvnI13wI41HFNVw62MpDp46mFJuQ4i93PfcLCPTlcFYy
	 SPkP6+hYSVSTxJZntmgKLpKeO9RAXQFLDm7+pQpT/OilMr2xlWSICmkMLKknX83SOn
	 SDo2S/PpArV9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90293D3901A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842403358.10154.3573082206333600609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a40e28bfe52ac6265eac1facbf0d4af5a21806230711cd994d9107cddcbbfa
Date: Wed, 14 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768424033
