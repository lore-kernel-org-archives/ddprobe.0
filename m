Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F1B610D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748725794; cv=none; b=XJvKoZWx2mbPWj7PWW0vTW3K4I09pxGZE0uv3sUk+3bsvX59wTcmpmEEqA56R400/km5xyaS5YNCxYZsv+dVmaFtHnx39nsVGoCjvSJN/S7Ptk15amPLvqWuUuntyF1Hhi8wTvR8dT9dtBrlghXT5orIqt7oVTdwOfiRlT1zKOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748725794; c=relaxed/simple;
	bh=NXbdSOwV6jfDFg8ALQRbmwZ9n73FMIm5cuct4LnPyew=;
	h=To:Subject:From:Message-Id:Date; b=C8ZpMR0hOwCpsyLEI+rf8RbmJ/3Adki/q7XhlbsfMPZig7SZb42j3xe2FBJexEnu/shaYYNwH9j1M/5F03lKR9KLPqMJZaBmPUMwnDJfdiXL5qZaWOrHLGZcxHVqMrHcXwABcJ97hopVlcMOjETiGzzV4yCmSo2tVW/Gu+ifrGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKo9vc8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKo9vc8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C12C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748725793;
	bh=NXbdSOwV6jfDFg8ALQRbmwZ9n73FMIm5cuct4LnPyew=;
	h=To:Subject:From:Date:From;
	b=AKo9vc8HFNeN1qTcgYC9e3eKbjgzo1bEJzs52xBwcwzDZQL4rSqQQTi4bzTTj6k0i
	 lC3ZwkIHMCSfOV6yv3wfjOfz5jweW/8BpUycfVdo+aiUu+/uQ/83MLKVNbMS0fSSQn
	 rmLaFEAwLii1fYiZu0t0Ux8pPZmtrxr4QtF+vRqnoLTx/8L5AxGx1sw2c5PDeS9YzL
	 0l+CYZVwwyu1Wu0G5ZW4diSs9K7nBj/CnG2zp8En2dkIxN4CAREgjknYYjOsTSzTmp
	 wNTKQt6I8RB3V9DsYp4Nn7jrwgrhp+rChYWzCTGhD7E4CNCum9UhIPxJrtfURAfESi
	 xQrfv/VfuXfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B7C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872579357.2044.17097719462118529969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94513beae26862fd5ba0e6f38277a6836aa419025892a4d75a817a4f7e0a9de2
Date: Sat, 31 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748725793
