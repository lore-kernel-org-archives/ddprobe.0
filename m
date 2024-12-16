Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224E220550F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734368154; cv=none; b=FYhDG90xdF9Oo896WArZWe/PX4f6KM1yGfHlk5Pxo7C+Lz4JuTGLYWo1EegRl71xWwb0yOe9lJIFy4sQQ91ilMvJxGvZqAL7lgmwq66So/ubVvrXdnPGSjNmMuYwW3ptgvD5ftAXUli4Of4AVdk1epazhIXhyibxHlAB+nwIETk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734368154; c=relaxed/simple;
	bh=TLhqteow9tnfw0J5NeTPHIT39E+VQFJ0VzDr4iN8zXo=;
	h=To:Subject:From:Message-Id:Date; b=uNm8+MKDnFzFfWPSi0ZEEc+AWI/zbx6gU2AHdLw5ym5BGTQOpz/eGWkvWLcfWXNXlv/v4FWvctemdC8qm6lj4q8G0Tewcd8TSgm0f3ZqM78uor0n4mAeo8NCD8acvJ5weiaX7tVsePyg60/so58v9VwbA6q+ayPaYtLAAIS1XLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxWwieUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxWwieUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D04C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734368153;
	bh=TLhqteow9tnfw0J5NeTPHIT39E+VQFJ0VzDr4iN8zXo=;
	h=To:Subject:From:Date:From;
	b=fxWwieUi8mp3P3dPsf44VUUwNr7fhkmXu2/DCmhTh6TaX9rIQHVN1ciLwWCE5T15X
	 7jaaO/DPNAGBWQR4nqcMMQFheSM6+upQ6mahGcWX44gwbpLijonUSrv6jXQ5vH32Mh
	 gtHJnEs6NB/iT3Ef7ZqarpN7y7vIYGfHdj18jiwIAFuJBLp6kLL7gZ9fRTZXugQQkk
	 KxTiItEhEanuMQ8HadeKuN92gJy2ZUbmhqDE4SqeX/3uVFuomIMaa4aj/O+X8UVyo0
	 xpyo389s7dpzAr5+dxvMZPRq6EF3TXNkeC1MKuxwfxWjI1k90ueXeQY0paDuF4+6ze
	 PAZnfpLG8LjPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A393AE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173436815365.17622.5406621226761080200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cea953db3a000ca900198c57aeb85db7da7e87713ce12d2802a4299668be6b2
Date: Mon, 16 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734368153
