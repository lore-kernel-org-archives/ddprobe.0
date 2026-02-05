Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252EC3A9D8B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770305634; cv=none; b=sxHbWh9RisGNuFv6QOeWaWnIwnAd4hdQmU9Dz7wRaaHgm57JVkqNXp8qDWnLjR02nLgP+hCj9b0KuUUel+iLJk5bU0FoF2NIAnMhsL/m0R8tDuFBcKZcNS6PeVBZDNCqFD7pxOe82BqqPGLZCB2qhhq4wwwx1ZYzGMF3ErtzObM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770305634; c=relaxed/simple;
	bh=wqtHgfQ0fY1MP63+ZE8utqCLzq3Dz76FQR5uoYM+IXQ=;
	h=To:Subject:From:Message-Id:Date; b=Om3IPe9SLy4TeHEPnnkX6N4vmeDu/vMckV2qNXBd3XUogLaZRbDNogjMikIxifz7dUeXO1cMn3FzuTlbqm/YzCdI5+ftTwaJzzVSOgzdE4yB7OKR3ogvZwCtORogmRkGfet/L/h2XVrvNSJpqJg/pRuu4ykoPlY0bSZHN0gJUuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/r1eCvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/r1eCvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFD6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770305633;
	bh=wqtHgfQ0fY1MP63+ZE8utqCLzq3Dz76FQR5uoYM+IXQ=;
	h=To:Subject:From:Date:From;
	b=S/r1eCvs4dUq9zOJH63gbuCGM2g+RuKBJ30Y5HQYl1elGya9+Medmq2Q0kbTrKxdF
	 BTWdhlHwQ+n1KaQDdTa5NqEgqCs4negg+cGtFSBBpjQLjNbVxRGU77R93RGnNLU4Ip
	 2f7a5+xII+AY62r5maDoR7KqiStJNOnz3XLlZx2i2pTyYBzdaIQgUGtAdsnjXICNBm
	 IQErdEyHVh9hdn3B5uQOE6quWS2Qjgui6rlctEHAMYjeQCBhbUv/jvukiSoIyba5B6
	 YrTiXp//TTAFrailLp+IY6x4wNmV+uzliSJv1ld9Q4e75v3Z+SVZyoENjj9NtpuEsD
	 7LLFXe0DzAJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB1DECD980
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030563361.11454.6539385182522135068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eb49d91f69a2b22e0cfd8e91f2d878c87989dfb352f6cddd79111e9ea19c49
Date: Thu, 05 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770305633
