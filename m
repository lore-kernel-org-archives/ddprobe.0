Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1D0493640
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787445034; cv=none; b=qWEKf+b9XFNg5U9/vl/ut3de0EffXRjz76FPSLEHKsEnWEYTjRV3G34qng99UrJqsASfQRgxnogLRX6XbkEawpbtSRHB74wE/w+qTQh0a34tH/BpjTlo+CeemCKlDRTwszFhT5Bt37TqHYu0HuIrDEz8fNaSZK37nZQrelx/KZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787445034; c=relaxed/simple;
	bh=ZXxPzpedfZWP1THqKRjltEJKoVfPdNutXjZF1l699Rw=;
	h=To:Subject:From:Message-Id:Date; b=NAQ3UNTEwD47FCvBULKggmH1rQwaCTL+GaJQZPtP0jLxM5pAq3egb4dnb5JIj2JGCvOJnq8qwbS37xqi+xSRghs5vNf9nNgCDItfOOlYKy2mZasIz+Cmpf5AFTyz2VjSUK4CHJbt9XNsMB/BC6Flt3/ORUYUmBFFPpv6UEDZzRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X34ANFVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X34ANFVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D598FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787445033;
	bh=ZXxPzpedfZWP1THqKRjltEJKoVfPdNutXjZF1l699Rw=;
	h=To:Subject:From:Date:From;
	b=X34ANFVM2U0Wg9sYRJkqvk/LlLHHQaCil4NPgA50ZSVTeu9KwUvAz491iQSK12hZs
	 nbkbXaVhU8darzha/8K3n95nv/f9UOtiQIdrzvUeCFE0Ty11ELvyMh2nqtZvUm8DVz
	 7IwR5RmN4pDxE7UIpge4qNCf1XkQblDAdVnvjRXX5wTMdxJNqLaYvA4QFmrrizQSEB
	 hrC5M5A0fzAU3mYHf107C6xOQzprjFd21CVETkdLkHQnIcGUJjxzoglCigMLdFerqK
	 s3AxohHj/5h79lxdTapymE/VI+G1nUsQVoU53okT7qfEF3+zHzc5QlgnAZGT+F2Mgl
	 8amx0PAGoYgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10AAC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744503369.2045.12807370678746835104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6350dc363a819e68688fbfe5320c8890592364ebac35927d325dfca9f82272af
Date: Sun, 23 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787445033
