Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E322DD5F0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757374794; cv=none; b=XWvlZpihPrWhRtdunbAupsGoJh/8l5JWbUfQFxYCUy6Puyxb+Lvfea5k6OtWrzYeetBp0ZwjMGtq3s9Qmkol0jqHC3qTn9L70QwEvELnoHE0+FFaSyWOYB5v1vsFcMbQsTGsjnrALy4KXLfVVrgv4s2AtF6pwgbWs9ffFah3toc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757374794; c=relaxed/simple;
	bh=4Mi75FdfwJRltX9Ef9S1XArw6vBN21Y7LfhXSqmEzO0=;
	h=To:Subject:From:Message-Id:Date; b=rR94r7nTJ/pRK/SCMeiPHoCa8BZjfFCnXKsPJ6awLdpxUit1qWKpDNQ30kfcoxYr0JZKtsyP7hofMtNCpuiM8nn9plfMvjorfNS6YveontWca3hV7ZKHw18BuJl6be3qk/lVNaz3Z4A5N2W42Lhwh1nw7stOxP8Mq7LIJZrqa+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWdnq4xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWdnq4xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757374793;
	bh=4Mi75FdfwJRltX9Ef9S1XArw6vBN21Y7LfhXSqmEzO0=;
	h=To:Subject:From:Date:From;
	b=hWdnq4xRFDdPOr1jMil5PuEQ6jQgkhIYJOutPkIjhkR2L+AlOOnyN1wGBnl/K9PHQ
	 wuRzfu+3XCdAYdTAh06aRXlZGjyibXqdZBLDlRzOIrtWuPMfTYnYUQWVTVV6mHl9s6
	 nGIZF+hSAB1AB6s1RhQUz2xg3C6cdeiV8eTD9Hje+gb9n08Clh8VLnmUpHlfXnd263
	 2C4yivg8d2xypl0GlcePXuEcgBiwTq8ydAz57GCCDE6QR2BHE4zWeoleFcV02ABfM4
	 w/MJMF9vWHuBebZPxXTjahkUq3PvmKi8t1+Y6IIRv+i6H5T7orVBOISudt6hRtLPA9
	 sxDlF97FmNHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C6CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737479357.26672.14233090579521285481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485d346b08895c98fff16e911566c9215d969a009dfdc7ae5182be4899a651cb
Date: Mon, 08 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757374793
