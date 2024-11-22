Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3051A156883
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732299354; cv=none; b=Fdr2bBCCZoZ6mkQEuToIBdv/s/Ob4f87yrqr0CUmIRYgJ5Ivw3SMBtZ7pKPEjOwD4wQnFqvTjvP3cpicLwtiI3aKQphxhKjGCDfo4pSNV8SG8eqN5FUkqlIkGf/4QE0RTDxyIbJbgOj+15fgojwi5PDuvu/60+H0kXKrpmw1X4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732299354; c=relaxed/simple;
	bh=922hVzo4imFyEFF5ct40nS5pi68VXpsCv7Z/nVWuoD0=;
	h=To:Subject:From:Message-Id:Date; b=Y2yLZR5kuxRZ59+lANQQ12cupYXMi4XbW/Cvf2l461961+LJvHjkoSkwdo1uMzK/Eo8fIkm6HxPJ7IRGKKyUCZLJ2RAWCUZ6LbdY2XuZagzgGBadwHMaZbwLZEvPf42MogeMu8mLAiXz3ufcf4EVtL/8hpZ7sZKR5TPSBNX0qhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzVgyiIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzVgyiIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9238C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732299353;
	bh=922hVzo4imFyEFF5ct40nS5pi68VXpsCv7Z/nVWuoD0=;
	h=To:Subject:From:Date:From;
	b=WzVgyiIyx0ZiU4OjAUF9G9pfBNBmv8vcdp0xAulpFp5Sg7lR1N/aEBooDQWJQGn+f
	 KAYAJR1PaMmWj1D/lEDUANYv9bIuioUiLl5GfxHXB/H/VGUDD7RrH7guGzvNO5hQ0x
	 HstcIQIxNidRZTB9SJF0ryN3TWPzhGBMhebm84VpqDj9Le2YbTvpnfcaik2Bu6eC6T
	 4rd1wAAlY82hg3bLRHntKc2Csb+U5llsBouPH1nUNGMaC9jJ2HhgGPK9i1WaPzQ8ii
	 PHO2rxIpI8Hf0ibev2fFs/ED41e3yDZRlq7uAfzwGx2a8sGd9TM+ipKNizhfQnKjvf
	 XO9Q7gIJgk8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D1E69186
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229935360.5329.1086939952954750588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c95b8aec0e8498cffb3b5eb25491347c46b85515f78f938a4f7513dff9b30b7
Date: Fri, 22 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732299353
