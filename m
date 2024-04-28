Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EDB5A0E3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714299743; cv=none; b=rm/DvjxGRT06s5oArWhuic7LJiXVGPhw/tMg7AWfcdKH1rxXol64rX1qJ0zxjPaaM0T8WFQqbsjTwaUEZ7/5cJy0LotQ9SacqiKiwkltBcECOVKh0gjOiZlrRlX1RHMuhh8bCtydHtFQDayfy2R7wB81K8Yix/eh4RNfEU90iyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714299743; c=relaxed/simple;
	bh=RCltGlJtdbrox03G/FZqbtL9TvpJYEmH6j5whU9fE2o=;
	h=To:Subject:From:Message-Id:Date; b=AuoRdAO7TYMfi13XGhUk5BuMl858DM3yyosTFW5V94o7fOCnoFOZhrpOCC+s03CcG6T1z2z8Egtvx6QIVJkRAXY/m8b2JGAYnBOSh21+w6BwPKCEQ7qxU5Crci6rUMkQgDVapfTVz5QHBEEwzOCHnObX0E0XmV66Ypsn3k8n6t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzHk9F7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzHk9F7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD12C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714299742;
	bh=RCltGlJtdbrox03G/FZqbtL9TvpJYEmH6j5whU9fE2o=;
	h=To:Subject:From:Date:From;
	b=JzHk9F7z3Sc/ojFXY7LLrvREHVDEXeyvJqJtlMTVCIpRjW5TZd1y2mIeYsryiMf5N
	 Y+SQu/LV/DyivtxV02hHAxS4B0G30o5M0CRsYt70TORgUIf9RYkBIx6OSrCHFBtkzG
	 gpPMYUr/QiBn/7rpDBJB5mJUmP4csPL8YZuXtt5SvdOz+llIFMEKO2UmWfBUPLmNqB
	 LPaeALmktPOApZE8qFSH0FDxKNRKzER7hVGImUUKmwe6lcBa3ePp6DYqbgnyLk5JQR
	 1dseZ5RU24IbrrWEEVuX8zmSc+cimviI5Gn/fWzu+AicMIOlhixY4l6rsX+z9xGvgv
	 jN8vsUPi/bs5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC83C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429974279.12864.9691481712570328003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3490d6ccd30f2a1ac0604132c72b497bcd3cbc4630e9d60452f86cdfb8ba2b
Date: Sun, 28 Apr 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714299742
