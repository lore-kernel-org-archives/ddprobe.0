Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F03022E017
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740344334; cv=none; b=Nf4sndOMXDWQW8jjYxeqUVzQEE2Tg0PuBp9cFerXqn0elzvOAIjhTqyZnFgTljNY8k5+y2jo2v6jCSfX8vdlY6u3G6km252ujOfRpGnNLvI4G58SHSO+BYSbKeegbxTVwCW+Ipq+AQKQj6H3vBrFY6lOG2lgHw3UyCD011LuIsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740344334; c=relaxed/simple;
	bh=gTqoHfNpM6FZypbyZjC0MO07zEWOEtTPU/mqausV/mA=;
	h=To:Subject:From:Message-Id:Date; b=aWTMM8pm4saL69AxaiLJ/uZ73cz1ruxBUgu6m/IiAjnoKtUbs2KQkOgpysWg9+WTV7LHAUODlBGhx8J25mTcXCvTgEyFS5+p/FTIVQOQn7S27ySXs5EIqiEL+PTsg78oOaSA65xXx0oBDHbnLQrUOZZhzcxnX0XJbddZGwDrbO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfrJcHRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfrJcHRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AB6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740344333;
	bh=gTqoHfNpM6FZypbyZjC0MO07zEWOEtTPU/mqausV/mA=;
	h=To:Subject:From:Date:From;
	b=TfrJcHRetDProSwji22fz3OjDDiRjvHEmidsqZC+HuORgmKaggvWEL8AiGeUU6hwd
	 bmPwTV7w/4ioeTQ3oTFT4EQ9SC+0CBuy9zs4fO/cFuYP7FxjjHhQwmJZ3Vdxo3UV7h
	 gEu6eMb3bR4x/5W0GlL9VQALAAb3kSv3I9QAG9XGyjixo78jMOOdX1KW0mC0+aFPIg
	 7KjS5sphlD/Yj5CREfbV+bHqLifA4X3fIEznnjnv9qcCM8IUDEipeMqbpc0OXraznD
	 WZplcxCfeQP4t+r8cGIfFYciwtXzBCgGDPEDS7Xnd3n1VM/zAku09zh5KNTjH4jGNJ
	 y6GT1xLphyDkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C17EC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034433360.25899.5030808565404569839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c1893eb38d89fe9296aae0a68aecf97e476405ca14411e275b5b50507a7061
Date: Sun, 23 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740344333
