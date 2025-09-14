Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117BA1B3923
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757869194; cv=none; b=N+izqjpxfuYB/wPrP+TmzYjirznjmy8QfxlbO9M/Tj0G8caSwN0i3GMZVA2y3zMeg+ysTjbLNegHDDN9d1ptOjC0U6oe/9UVkRbL1uYjJ2BdX/O1T1HhWO0G4vJDC30l1/91QqoVzNXWDV2ZCzjo/K2kjAVnkvivRQsqBRkO8Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757869194; c=relaxed/simple;
	bh=Y2YpgcGFJPcxjAvCrgipFx6YenVmewYqOBKv46tjVAY=;
	h=To:Subject:From:Message-Id:Date; b=A+8T4xBZ/UbqXY3wg/O57AHkGqSvrq54PDAYCvwZGSZAMsaIgbeFN0TcqMvxopMxcBnNME1ERPl31ue98Br1fStAfgJnIsHHPF2HADLDo5cbwS4JqwAS+j2Oa7/qH+8+9B5rewrF+G5s8EoMSCVropijUlcBoojShE0yBcBVUDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZPkSwsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZPkSwsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C05C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757869193;
	bh=Y2YpgcGFJPcxjAvCrgipFx6YenVmewYqOBKv46tjVAY=;
	h=To:Subject:From:Date:From;
	b=HZPkSwsJCIUefDo/1O7AxrXlfBNElrUSt5VXE36+H/ry8bEjczFOXcUxDkUSZeInz
	 y5njD+WDz4s54VE8m9CyMWu6GPoxbhabRHzFTTM+5jNMY8eH0GwLH5AgwwPt97c7vO
	 E4WYJ62jNl98Smt1iU/1+luiwjpvfD2rRGdq32G4Zb/zNMCeqyhQGhIen4xlSH8WHi
	 uRmgp7l2CLI7Cw446ajMBaHgrPPhiRybhsTW37PJMUjeU06wy77Gyta+BYa3eDcNQF
	 8xjkM7znDlbRC9or72by9oHkcYZMAtf8qqodxmlohFBnIXcvzjDeXjz0y9Z0WxiiJA
	 9QJ9eExicmD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A1CAC593
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786919358.24839.8919455495746967155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dffb586bd27ff7a5923afb98e36f480ba59219b97ebafb68bd0e7f3295d544d
Date: Sun, 14 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757869193
