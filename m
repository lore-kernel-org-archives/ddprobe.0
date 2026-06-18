Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB733002D8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781748994; cv=none; b=dOkQyFmiYV90lvpmUI99CqXh840EzUuY+yASS3Q6No7feh73SYjI6Lz1bQHH/r6g4IiydR1zNZnv2Z7AoPg7QW4O/JQ/t5xVS1ShRshSUglsmFnILbe3Oqa5fnljaplr850yktitwKGJnQ/pvvMDbmI201SQB7Jyyiru2YyjWBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781748994; c=relaxed/simple;
	bh=mVX1XE4tbUtqhjTtSXWTEX5nZhPT54jfygiIsOP3Fz4=;
	h=To:Subject:From:Message-Id:Date; b=Ogzbq2sFWVAIMrKAQk83IRdB2gCvXfpvoM0zmPoY/d8fjP5BIQW1Y16rRqf8nPzSpS7i0kE3JAp3SPahU88f5o2dPuk04ENXfe0p3w+DiwrJVo2JNOQiuXAIZHw/ZDjT1F8pmTkxT60xdnRAdYrjevZ5+yLDg/MLxNP3EG1rokI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mreQRTvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mreQRTvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B3AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781748993;
	bh=mVX1XE4tbUtqhjTtSXWTEX5nZhPT54jfygiIsOP3Fz4=;
	h=To:Subject:From:Date:From;
	b=mreQRTvmRbqAenq55kcAEhR5tuGEU5ROeGYsD8d5SLOsX5djUcLGq0o8/9bM7d3L6
	 FL/cTRENviKgUklJ+UTHSIhNN22maQr4D62uocoD6QmScwzIIoyl/DDgpNkA+01I2B
	 QtQ9bIeDn3Xvcfm8ND3XwrfqqX4u/qiW/yAZ484FkQ+flqhFkf1njJ1knnbMo5z2q1
	 cQtgVLzFDcf2svirE/Bvb3C6ZfIG8uFy3jSeglNDfjszBH96tLWRetckLRS7cVpBYK
	 wWlnDSWU6kCGaw6VBKtQX9Ckj/P9G638sEgEfIFA5e+QHSBmPJrb6MolVm6hZEfoEe
	 7ZDa5yOs2RzZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3283CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174899369.7709.3422043733634431445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef033a25a9a993a0a01b94696ac6f6691a13947f1021f854b90d76c9228ae94
Date: Thu, 18 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781748993
