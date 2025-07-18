Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398F3214
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752815394; cv=none; b=lziVwWGT17OrGt4TQln/fN1f/Hva5c7d60680NXIU/99xuEtNtekWFBV5jV5FfRpuM3M3Q3qwFbhWMrBDIp6L7zfXsOWM1bqc2KStk0n12MUbCx+/EuaWYgkPmVGvZ9CodizI2o/pJedJQ9iqYV3ysNorpnojOzqc3dmeyHQ798=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752815394; c=relaxed/simple;
	bh=dSipBa59Y9VYcWWAR/GbASIg0h+wAv7EhfQcA6Fe8h8=;
	h=To:Subject:From:Message-Id:Date; b=YMKpNmwE6qwpdW2sAABuA0WChtnsNgpjYnqlycqEgrIXJy16OTL+aARrU3UHfc6OTGkq46zzAQld4J2gf9dNnYo6ucuKRxGoBFoVBsG8J3n4ftpnZQFTEilI5pdIJVmsjUQ/D8jEGvN2nwG+XeiN8JpxHWxcuLrVCBea2nu0PC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIxRW51g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIxRW51g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2634C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752815393;
	bh=dSipBa59Y9VYcWWAR/GbASIg0h+wAv7EhfQcA6Fe8h8=;
	h=To:Subject:From:Date:From;
	b=dIxRW51g+7tOIhMTfW48Wr9/qCr3rUsiS0BJEx8zVLyK5oqZBHZNbJsnEBJsEFO/D
	 BGNZ4mWrOzPBgZNciqy//cNZwcYW8n9iU7xW6wN5glcmOPRxTR6odKy0rqagiwbxuj
	 sH1jcG/iU486LmEQtCTqFC5igU2jjQfCuPOEM9EngBkDLfRkIKtVUzJR/vO1hEx/VG
	 kbtS+Ro2eKjP1i7h/jANn2SMUyew+z4DPlcf2rm6GnaQnXznhQhB3OjCTNEW4tcmnU
	 iqqBOca287WdeUxk71QNjetzmKrToohSrgV6tDuaderMtSyg7xB6JPLftoSqcZdXFH
	 4I0OEyYH9qGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281539358.17320.722728924939616303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e9d6a0d34eb17d4143cd67483c208d7fd14f4b3e1f7587843928719fd56ed4
Date: Fri, 18 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752815393
