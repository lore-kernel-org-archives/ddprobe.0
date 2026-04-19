Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33904219E8
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776635254; cv=none; b=rZCEQKswzG0JE2uU+LfpL0a7tqGUPM62hczLjopjrjTdFaLDO/SWVVMJtuDzotCgqXOZCZpeGlZ1vU00f+8DH8vwvQmfRdR+JFbGzs8Xn3hku4U+aTZ/HEGL/sKWYu2K+FU0X2VhYjmnQN3+f4JusfYPOsRl+3TrCsipx+d/RoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776635254; c=relaxed/simple;
	bh=mHgwmuUiOLvSC9pdcd+hSeh6JJUECn86fEUfpq4pTgU=;
	h=To:Subject:From:Message-Id:Date; b=VVKtYVpytXgm+uz6JC32wRhSTffAUXkwgUBAKjzdOlVAhWurE5CzC1kP0i7c1c3C+J4HeNA+mWIoh3xU5cIH+T3Ww00TSM2IVydsen/pIsOl40L4ZFxtnHNl8eLa/2vmHO1K4ibGGpJ2O3Y0WcUG7t4ZS53zyjSI8na7X1McOqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki/tzNTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki/tzNTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD11C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776635253;
	bh=mHgwmuUiOLvSC9pdcd+hSeh6JJUECn86fEUfpq4pTgU=;
	h=To:Subject:From:Date:From;
	b=ki/tzNThhsg8v5WP/6YQb4bBAVZslL0QM6Z8Vw1T/o1kyU+fBj4kZvp4Y9oMQOFH/
	 uVrOLZU9VeqNmW8h0mZJSYvR/I++sP6y1Z/EqF/7sJ5p45oBb5Nd/+yFB8dAWL7irp
	 jL57OKNhHlRHD1qFcEzP336Wxq/DckUe7i1ieKaS4NV5l2Pi357MZ0ZDwpXHUWEVGY
	 IE1t9949747t5NxX+PwW/6ljVrjivcEMGP8HPJZLrDw7I42Ywuzjapy+IC86E7U5pw
	 ZOKcEqB9ryTeiFJgYywfiY1JKRQipxrUwaD6PZXeUHjGFUlTW2AIFOb5yDpiTi5yhW
	 dxjKKsrymG1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E44EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663525368.1047.14329786868397580524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b391824efc2d3cb947450fd37deb1aa616e999944a8492e8f82ffe1fb4fe67d8
Date: Sun, 19 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776635253
