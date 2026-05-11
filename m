Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250CE37B027
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778505034; cv=none; b=j5JR0oiQmTgAuBmZ5fxpzfrFy2bsxT1sytTiq92t10hyJ2ut8xcW6o2d8Lz4A7LEJcFMjqe4higbEvcGs7pjWJasvmHWRkgOuPCSFu0gvG6VoaqMdoZ/C5vipdCD1XAMUC28lEHaNaKsoI5lCK276qszRL+7r1SSlr7tVmfuJUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778505034; c=relaxed/simple;
	bh=VJadmxHCNTv8UW+XXD/7Xe7zbUCHTCIj7mOvpQMaNfA=;
	h=To:Subject:From:Message-Id:Date; b=s5I5rR8tOxSDX27FUE+Q8QpXHIbg00Ss93QDmqr38P4BAAjRDcoqRTvMDHw1KYI32RKtYe0TsXzMNe7l2pCEEJPC+WEfSc2If8qKQDUlKe423zfGBBWjcsZOC5rYSoqRpK9Kf3Pda2HxNBmZ87pFJHh/WAcPi5EUbNQSyRRk4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5AGCTVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5AGCTVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF2AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778505033;
	bh=VJadmxHCNTv8UW+XXD/7Xe7zbUCHTCIj7mOvpQMaNfA=;
	h=To:Subject:From:Date:From;
	b=g5AGCTVkl1YDlCTLhV1/Rt1hFPh1OvqPGhgp6YmwEOKJEEbAgz0FhTMkInxyrA1NC
	 4uDme8tJjDHYLjYfGGCHAYvw+tNKfm+qFQ8uH24u3DO0DbNZ/kbZQq/ywbvde5hY5q
	 gacRyE0UZlXukEMl3o4Mu2Nn2ggejQCv0JhfjjVW3/nxmP8AsaAkrAdcJr3oxerA62
	 Ot4/kOk7BT1Z42gKTMFceMAc3mATspwm82nXy9wzaU13iX3PO+1P3TeMEvneTELrs6
	 naugT3/+EoYv6UJqaOWhe26tAswFiZWzbODNmasYKMr2ttrApZY1Q3C6EXmsZDQGlX
	 NEz9OnNjRr/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FBCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850503369.13193.14467747226857520951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bbac1c1d105f5b02a3f5924546a3387b22af5dcd9cd6d8234498f99aaad9a5
Date: Mon, 11 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778505033
