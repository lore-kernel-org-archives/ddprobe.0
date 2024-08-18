Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D39F9FE
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723966554; cv=none; b=Jg+wKXXtq9Qm52Inp7QUze7x3YtPKkNtf94mg0NHwDad3ISVz44nGIBlwQsDM1tMYaHHamHwufwjpN2Dpm5ZcmdUPawmLzyyuocYDWTYi3EfinUklUYVgBehj651+CCnQpe3Conyfk87bqIBiDjnUG48wX4cmHzaWZ1T3Dao3BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723966554; c=relaxed/simple;
	bh=JPYm/XPepbbt5TGiXz3YzZeCBRGmcE8EyPadD53qpBE=;
	h=To:Subject:From:Message-Id:Date; b=OS7dAk0ZGeeNF+A8/rW5kQMyILYiQ2pX79JWxT3zl24os5H2qGLl7JMiJisW3EAdGe53av+PuW0FiOeukNoFDxthThs18uLmT8sxGWX3mRTjX+/0HkoTjx7tsRyEPW0IXddwazINjk7OTFSGL3shjm7o3t7hpGx+TnhzOKYp81Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LypWAvjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LypWAvjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DA3C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723966553;
	bh=JPYm/XPepbbt5TGiXz3YzZeCBRGmcE8EyPadD53qpBE=;
	h=To:Subject:From:Date:From;
	b=LypWAvjXL5ve6DB/oQo4DDV6XuoSC3es1RxfjFTM/YCC2L4ttXOviNvIS2WJSqbWi
	 vWDcJ5UmLrm99rgMMYdTl1JPe8fFJBEQdRzyBL7Z8BKiXVx4BdMeJPa2g1NEZsqfG3
	 LxDNQU9UViiPZiRrZzyxT7+mDN4klCbLOxpjrSPLe4WTdcERBZ4G6nB1YKdUDlwCn7
	 Sriaqw/R7FCf34I8B6o2Jh1yafFeR5u1O8Tq/FdG6fvNA2y5AzJyUbsY/Q+wRrnvg0
	 L3NNec2vFfVRtmaSp9a/RgS/9N8SKWAAlKS9U+iOwiSqzz2y3yR7Rtvii/CNp6kjja
	 os1WS5un1XHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24A0C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396655365.3018.18260942700864096409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60176c88e62d5a415f603d0a525577d2513a928e6388218db623da569cea9913
Date: Sun, 18 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723966553
