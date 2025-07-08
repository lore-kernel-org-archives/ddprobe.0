Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A300A23BD09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751965795; cv=none; b=FzQAq9tjEsdTu5s+u6GbEUzQrAuu5J7DDUfD47gFovXxSqE1138MPDdL60z44P0qo0LVC7Cd+T6mTOL+TwTwCfCLH1PJhreHqtecn+aFpM/YYqTh183Dth8zOTSgVq0FZJ2/l8/E+bu4H2ZNUUCoVLABtEaqRjbfWO88dprqDrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751965795; c=relaxed/simple;
	bh=jFy2rdP+aOzESVJc8uRnoCgT1t7VVtUTyaixu/TKt9s=;
	h=To:Subject:From:Message-Id:Date; b=N+fIOnseUJxtwsFlUfCsPVhXYNXRfeWr3T/2OIkdK/G40Xwa4kIdkMFO/6xBux9wzbh9cRt8mSrtpKoN3TilEQWXnV4T4yubmUQgYYlt4llPc7e/VB296HqsAsDsdyxjkkxoz9jh2Vl9B2NllGyf2SyBp6S1vgAV4elKvz4QMiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo9Pb8tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo9Pb8tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0844C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751965793;
	bh=jFy2rdP+aOzESVJc8uRnoCgT1t7VVtUTyaixu/TKt9s=;
	h=To:Subject:From:Date:From;
	b=Bo9Pb8tc30dEgmLPLWkQtjGlfYIqUutRsO01Ojvdx3Cv+90EOc+1jDdTwwtIzNM8s
	 QY6afiVMgksF3VuXrEN1uiKQ+HaLugnWYWmmCGj9hEorWIA89lyOkrtcCKIlz5HQMg
	 YAB7lYGpVjEzbL+zJz1mRwUSivpofCZVeO1+ZLwjqlPd7r1O07JBTJaA2D69zTusoE
	 MhLE2JODjGFg3exsXDEJ1w3RGdEchpxyp8zeRpH0zJv5ZbdetGM5sNajlo9KLfdcNy
	 7bt7d+c+wrKNzymb4momqdfY6yRFz785tX0m+M7MXtahttv/42O+GTjlFSgCqpetFE
	 uothDS0dxmZ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B4C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196579358.1512.18042385443219133404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cdc3309d77c14f18de36507e9e682217a58120f1bcdbcf7ae1cdf5b7c2d2f1a
Date: Tue, 08 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751965793
