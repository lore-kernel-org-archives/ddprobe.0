Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E1E3128CA
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778284054; cv=none; b=Udsmfux02BwMAwArWoLxuONNViJxyXPIHw2qwFZE+0PwrNXGEwzt7UMGFZxdCzBMeL8amO900fJ8rVGeh3BLDIWw15L1QhR6xFv/sdPpSNejwbA8iMLCwnE42PC0/LC2gdu75Twaj/v6cewme92SUZB/f3lgGGczCmER6gSrcqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778284054; c=relaxed/simple;
	bh=wow1zllQmCVx4eBykVdgT7tkRkFn1svVuRY+f4kZDXs=;
	h=To:Subject:From:Message-Id:Date; b=iqrOFhkgCn2/byfKp+Bg5SbWoidgK5riMk92PMl4OyV0Ise4It3reGRAD1TbwsVymO4nqs9p0v4tuz3JLlW+KofxKIfxbRbq1MWXOIzcqb/J6Gbye73R5wvyNJGPRuSzKNk5HAMXlgjqAWLcLAnSH12GTmcmaWyacH6pjCubTos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIlFaZzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIlFaZzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA10CC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778284053;
	bh=wow1zllQmCVx4eBykVdgT7tkRkFn1svVuRY+f4kZDXs=;
	h=To:Subject:From:Date:From;
	b=tIlFaZziIpkww5aPcyphleKKLXgdcJkkIg5Etu3SM3x4v89a8F+kVJDcjLvWhqbmu
	 4I4SH7fwMaABijkdD0t5czqWXtzPex+JWN3WHT0GSZga84z6Nb/Nnx9VNB2xxl1xcl
	 PoxFPUKB03mPIZ33pm/kOkzkXISz1WRbSd0HDXYeAmS0lWyDG2mjGfFead91jtCmyT
	 RF52Nvfssz3M8CfyoFlWLSrG1k8QGTOhx3+Az95u9Ij+pQOHd3Fk+TFDsadrTiCnUu
	 a6sZeC8ynS4vrhoK0dVB4q6JrxmuQm4IffYIV8tY+UASvMcY6Q9iFaoQU5LK1NLIi+
	 Tu9lWLupKi78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA012CD37AC
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828405368.22278.5869494897228930699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9336b3e6f85053cabcc5d907fc08b0adbd2f64fc249d5739975ebbe93c88824f
Date: Fri, 08 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778284053
