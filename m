Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D32C4A1D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748236194; cv=none; b=Z6SBV0u6aasywl6/IVgUkyjXFzLTA0SD6RzTN8nJlwfh9r51pu1Y9JhtEqQUQC3H5SRGpyoNY8UpiSYGlA/yVim+Mq2ZWA6lNvi5+TliKoYq4OmRKbS0SqlaFgdAQnGCE0h9CNHkdBAWrF8xWSUEhlzmxsRSi/uw9NwR9ijD1IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748236194; c=relaxed/simple;
	bh=OGSL9X/4BfEDyrZuWRrvWXeYBanvqvmF1p3D0O9akmU=;
	h=To:Subject:From:Message-Id:Date; b=dMkgpUa6r/mQw52KozL0DphCglKAyPuTshPVDKEZ4gicXyyTRz3ktGeYW49mal4xHsjXm0E/RaLi1Io22YClj5YSd7GBx28VyTYah/C2FfdXiCVRSLVejfg8Dc0x7BGH0t/6pWTTlr2tKd4nnl0AvNOkNrFw65HcOkmnYLdRai0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw/VlcbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw/VlcbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748236193;
	bh=OGSL9X/4BfEDyrZuWRrvWXeYBanvqvmF1p3D0O9akmU=;
	h=To:Subject:From:Date:From;
	b=Vw/VlcbTcjuhbRen0KOlf5R3TNACWg7X8YflRrV8EaPNIa+JRnzzHeSnas/wViijK
	 hG1KWrab06WzCnP58fdfEyVJ5AiEQbuQUh3zA51dDzBP8ZX3bPN0MygEuyNFScyREx
	 2JJaVaNI2aWUsAw0tsMc1OyGG3l8ZQpq83kwrRinQE8Yo4VB7C9cmbTMEAd0JqEvOV
	 B46FHuPzJWuIlv408h/WdqSbfm9nU8CzUW0+RG9ThrLSFFBJn+NjQFT78YdVxTM9uq
	 PbqXQ5XYZiqB5M30RikYSKvZRXhV4QJE59L7mC46s7fHRGUr/b2IZ47pngPHYzyasd
	 UmbIMjwNPQPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97785C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823619358.13696.7796063676612706094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e64be402e28374e2932515e098b4369af19e414012a92fb8d19b480f24c0c0
Date: Mon, 26 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748236193
