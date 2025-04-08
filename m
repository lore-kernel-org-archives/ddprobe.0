Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE0A254B09
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744148394; cv=none; b=XZw5uPZY1X4C2CJq5hoW6B1JTPm2rXltIAJRnfozuTmX6gJMVd0H2aYcfnOcEC6/mbR7EBYvtkxNIsHaBa98n+22vsWQJYuumeKGGLFBPafinGZXrsclsk3+YV3IW30n6js2+88ZNBt3nlI5PFNM5UvVBSNg0434YFxdBpXqpO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744148394; c=relaxed/simple;
	bh=EWOHhIYkEE9/4jBpwZqx6WWhSxACQhkw7l66n6f/Ubo=;
	h=To:Subject:From:Message-Id:Date; b=ZoM9tvuS3F2IKJ5nKSqf92r5/FItLmQjpJVt9jcZjSgRuyRyinnwpam91v7JCf2ukgR1hT7OANBP0TEE9TBySLv2FuFmdOgRrgs+L/0WlprzbJHcEzAvfK2TGoTiz+yMD3j/Cp+XVS6Fl5H5T0oDsshX4C6wEiPG3YvuPir1Yuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbRdsQQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbRdsQQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2960C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744148393;
	bh=EWOHhIYkEE9/4jBpwZqx6WWhSxACQhkw7l66n6f/Ubo=;
	h=To:Subject:From:Date:From;
	b=cbRdsQQkmh9shPRLx2/ti5C9RpsLt7yyViVPsK38m1uY9mrY8N7TnqiuoDz++znfH
	 rjfoSAQj0v5VHOeBprLpAq2dnJhNmoXUdIJSXHfjRIcJPWU1PVscG6rFblS2tGNaq3
	 qWRaU9rtcaVIwZZcsQOczxb5bt87j4fPTTbw0bWhJ7KUlsvC0zdDsJS4H7hdCTKHQ5
	 57njrX9z9gj1leW++qk5Q8upHv9xN6biIwWQ392520D2Zo3NM28u3Mn3ggh1TPgZHT
	 N/Am3HIb6hr7HgXQCPn/bxcrc1DxdU1aAXDofGEGmezWRmYYaBBYAxtIJy15Xx/Xcw
	 hwTXnzMuioLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DC0C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414839365.9324.1227403789846703982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba1a1c82d4c76497a001fefe3c914d568cd460e3094fcdbd8957a0cd67814af
Date: Tue, 08 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744148393
