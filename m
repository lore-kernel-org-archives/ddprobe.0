Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617012750E6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785604834; cv=none; b=AChfmlkWid+ULdqJf7uO9x87uS3DcLACVSuS4IWVljS3jA2vuBqlFuFwCa9+aW7f2hB0QhRLvzeuaothq6/Svj6M1NGoJPWrfjsxIhAOm9pBr+Tfpnr34nV0nyjf/DJZLR3SpnI0OnZ8+iQurhSr3mLjjfWH7Mc80P+Ed4GAc2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785604834; c=relaxed/simple;
	bh=5njTbCm8LJswoPcdymRv0jhZZkBoP/2iIDGkrp3+0c4=;
	h=To:Subject:From:Message-Id:Date; b=gIJ+zHVM2Ai/IjetMkIaPaUR1wAdQwj95kJ9e6HkUGOvHMiuh54RRexFCmzWQN247+cKoln062lqpwStAgY3AKAvcesJ8XQ38IyWlEkYaOqf4hohD9rnU2uZqoW7BhJyvRwdl272m/oN1ruEDhfxYOngwLo90OMAfkUtLC99MPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfSKLbSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfSKLbSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98BFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785604833;
	bh=5njTbCm8LJswoPcdymRv0jhZZkBoP/2iIDGkrp3+0c4=;
	h=To:Subject:From:Date:From;
	b=VfSKLbSRz90w8OQ2qFKLs1Eu+t9FhvG7gEPwSeS5uGsX0iQMfsPzEFPOmUh6Z5LVu
	 T+MO4ZOrCEXuvFQ4xnGADH9cH/XaV3iGpLQSVuluaVcksa8QrrOZFShN03t8wJ8zur
	 Zbz5VCfx7c/IBqi6SoBaDzEi38aDY5zRRRpKwTwm2t1c/8F9p8ufHDQxp4uR+64u8Y
	 H6CYkQSE0PD6F7j7XG6Y2y0bHippDc8ZfxyKw2n/tnvedxqSkZryw7bCQfZNyLaeeM
	 3LOOpDTkJDHtRnPZqxABoDm7Shdb6PH5VhabE9vlV9csiP7OytGnaomFkMTM6Fydqj
	 /p5LR49pcSFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0927C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560483369.12620.8710422273202216276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450ab86418301eb014645b8cd545ef11e834f56c5071fe4acc22869f51b9b47a
Date: Sat, 01 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785604833
