Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC522F74F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748963995; cv=none; b=rtZDpvZcI7ABz+1mCzctTTMGtyGaDNQESJrIGHlSCDTRSXPRwzsEAoGAlCh6wwcfy1uMhiURd/GRkfb1G5r0DXMlf1PItG9zTQHSCKKzi94stB658QiOb73YXUhBkbz6ixYWg61IDOUs7K9X9Zmnw5ZXu6Y93flSxgTl0Ejq6qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748963995; c=relaxed/simple;
	bh=zSbeP6K5SAdqZ6+lgXyJTBrCT6uXziolRjug4BNapHI=;
	h=To:Subject:From:Message-Id:Date; b=RarX/PjTsWgya6//MrgnoAXXAME00/A9vdkwDPIZy6yKUVT9RkCiOwkbdNGkHI+iCBgrBhkuF9xVd19dcAPKWuwhWrkFqwt16CLCWuCobkWrYg8w2opj6DcxqeVkhCFqqQkyi7XtItZIiNcYNZhL/W2wqt2f6BUrvD3EwxoARDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkHUzk4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkHUzk4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CAC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748963993;
	bh=zSbeP6K5SAdqZ6+lgXyJTBrCT6uXziolRjug4BNapHI=;
	h=To:Subject:From:Date:From;
	b=IkHUzk4fJQ0rQM8hjTAJNVkH/bkpzLrYJqbNqfoXdepkiu02CODEkkmXFA6wF4gUi
	 M1dcYr1ZTWQw/cfRpBC00fpkTe1wOdj89bw6ez0H//XUf1DAbYG/yOuYrxJhbQIib4
	 HffcOlY0AOjCX4I8GwK69w1MhlhvPBFyG0Kwk1KbSbNJh0wSYpIJQeC1M2u11ckbjp
	 JR53VbukeE+WNWg4TiGxdEeMhBz3l+IG0UhSsBEvOQkKQkMsvhczWJNfZEAkfrcHAL
	 fYgqWCEkrogX8P/lQReCByldV7QTwCFXlx2tzKGGGrISnMgrO2kKulfYaw4qYLDZNC
	 +MLFYvurGL/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7DC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896399358.25556.16016481472228166995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59821764ed77f22308fe1790a3c624ef9da7ae1dbdda4f54db578f00c247182
Date: Tue, 03 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748963993
