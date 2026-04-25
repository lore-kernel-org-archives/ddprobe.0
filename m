Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB510785
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777146454; cv=none; b=g9Ha9uryFgDnHsmvn332MfUDSsMxBsdat4YCHzxQp1xW99OQU1rj+FPxKb3x4JNLn1v/JcxCRY6aHy4PGMrOYGGuv/3e+wdQO8mP5fB9cau3JOt5C6ICNtujvUJ8wtSPMRK/vJV2zjAxLtYZ7G6nP2hbWLRaRUSNaLe5kPykZ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777146454; c=relaxed/simple;
	bh=rK07iw5/LjEVBojy7aXE+MTAMfjFaGyB/BPhyHv84AE=;
	h=To:Subject:From:Message-Id:Date; b=dd96aR6qRPxP4JtMvvYy4IqWm2vEhdByKwCA2YJGXc9G0rXxSw6RAMmBCMSoh0OS/hCt8wjZA4iioI1JSwFw//1atsc6pKKvFvfjDoBsQDxn3QJKZ1Hjeqg+cRKgh8/GwPxp8I/MbPBS5tnWsoz5naS0Drad2rvjZqzqI9LrVQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvClDuqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvClDuqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C104AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777146453;
	bh=rK07iw5/LjEVBojy7aXE+MTAMfjFaGyB/BPhyHv84AE=;
	h=To:Subject:From:Date:From;
	b=HvClDuqj4wnfSmb9apiKQY7TFoItzfD9sq3prmYE633XFLHcRsMz3z7WhNVnb3Jzl
	 zPa3k3VkvoJWXrhKsdvM0s4AeQJsfVKPKD2lBP1X1SYI/ltYZ4SP/MN7CQmEc+pvn+
	 oKy27wMpyMhXK+6yZITFXXgF3i2Sewy2vBv12LKzRmPaOvHIVO59eqLEukFJIbcYIp
	 4KWKHLch0ghbudrkD700we++S8VzTZxuoh7Ee5cyQMZmhMja3Jvw3ELenjW2tIllxe
	 408ddkSgAZR+wAkHcvSvadtu0jPWuinNJlBcchuUSDhPPyALCA0VcT3ZS4c0CsUVLk
	 L0jQ/0MeCzxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB4EFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714645368.11979.11395799153185833714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b1b7ab9bf064ae88b73715071077dfd48962166c9e10259a6429662a315e5b
Date: Sat, 25 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777146453
