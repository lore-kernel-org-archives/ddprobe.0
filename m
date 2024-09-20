Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1AE8488
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726796754; cv=none; b=mLgNAjB0sukD4gd8p5j3JZGlBf/aP1T/DoR81kCP7uIggp3j3krWk4hAywuR0TL7tx3ogSjw/53uV1cbtIP0MQOPAIsnr7cci0JcU9dRwHvgDxGs1f+w25PnsH6MAUsuUMsyyQEsVSSNjRKta4frVj4zmczn2TvznV9cdx/4c2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726796754; c=relaxed/simple;
	bh=mSmiyEXOpgps+b4EHhXbRZpVvSy5Mru/Y2kQJMuK1VE=;
	h=To:Subject:From:Message-Id:Date; b=cAklvgIrE2h0bs2N1FOsCpOfv2N0FfyMceMzy4XdC0aSASPmY9R4xTyEAY0YpbWm6nm7VcTNzOwQfRML3ZvoqtuFfCGWQE1m2+fHd32vLTFHegfjYJH/h9QnQ7YCu3QQOQbJY4xGftf1fYWWUyfOop8+Thx38NtID1HyV8jZoCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGe9+is1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGe9+is1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECCC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726796753;
	bh=mSmiyEXOpgps+b4EHhXbRZpVvSy5Mru/Y2kQJMuK1VE=;
	h=To:Subject:From:Date:From;
	b=kGe9+is1cK3WGz6XfVP/+910oO8Dy/u4AVFogprL1LIH69MqVxz+JZGoLCU1yiAdx
	 f7XjdUcaElgy0Bjk0HpwkEyJuw69YCThKpXc2BeC1ImZ3u7CV538aITHXwCLRa+HoQ
	 RnFZHvcq1uE0axUWOQjq0bMnpEpMuKzvD58KMw0iUtpHFW84Jy4n/CdKzd7zFHHdS+
	 pSdlPWIas3JKO+rPjyXy5Zm5eKIveR4OCuprJn/9hymPVnRTBfULAgi6LEflsyIYZW
	 GP6aakINGuiL7Ka8X8zBfPiuNphsHHcu8Vp1ETgtiYI+SNpm4+yX8/A5FUOHevBwmY
	 lLtPzxhChr1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968ACCF397E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679675358.454.10740343064977152147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c6255d0335d1910ccbb8e37f63b8276bc0d2db1048401022cc58f05e8b8fdc
Date: Fri, 20 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726796753
