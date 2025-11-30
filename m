Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE9336D510
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764504174; cv=none; b=dgaiQ/SoTgbdtSHyrxuWXJ6m/14T4Ve0YD3CtGqgiunSQ/TCycukdW4GzDPd8yAEFm8HKnAipxJmVSYttiMiuYnrqGu0IBjI/GVOm7oyP4aWpAgh5iE1CMsxWxCR4VuVtF0Rc2sb2aKjY2aPtZ4kC1AjcU8JN4ybv++iooCsivA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764504174; c=relaxed/simple;
	bh=MuwHUQwDAuoNeJvtPzhgf/i8dehBPuiy3mcSGJNl7ZU=;
	h=To:Subject:From:Message-Id:Date; b=iLVpH7u0QwJBWgmQ/64zkIiEB9vx8iK8efKsSHSacYfkH670pMuqTmp86NajkgJONebsLbV9KL+cgiHN0SOL9jPxg0KmoZZW4O+7jA0wcQdxGmekGhFQN60l39v86ox0HaQKiaf/gyMVp9+2ckPZ6T26RUCPyZAljPu5f7rD2uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH3l+rwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH3l+rwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764504173;
	bh=MuwHUQwDAuoNeJvtPzhgf/i8dehBPuiy3mcSGJNl7ZU=;
	h=To:Subject:From:Date:From;
	b=nH3l+rwzaOSvaDsKFudLO3GnGznh6LW+QFxrMNC+n3ktkeGQvpgqaWLfFqOgi+1Va
	 gBhaz7KoX8DExty/6pBHfew2IQjicm4cvp5XFMucO2G+f71irJ8X955TfS3ceQwU7v
	 MoaxZ5SOVzucbzE7LQn+W1GgRPGAj0zJnHjufD0q1wocdoe4rvcPpJGYyvu7UIuBNH
	 bfG9WKPLVZtFLDAGw1NTG/5QQF1hwcX7rlyBdTKzLRZzupeWhChxCIbsu0UkAd9W4t
	 8sX8M5vOW5ylj99PgyACWDhhwJHkqYHV8BKiN6Q+1JyGiGAOB6THu3uWmbgocJAkUh
	 FEuqS+3pHZocw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB1D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450417360.5312.2691207876241944801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234387c84c932349c1a62261131600daa325d6b4d0e2fa11fb0aa9fde32e28c2
Date: Sun, 30 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764504173
