Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A561296D0A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747070994; cv=none; b=YytiIPLR0Y0oSP55tpYDaXlyhkpvkh6Ptm3atlebZiIW4ONZ3483B616TYv93Hm6EqFnMYvYf4eMaZuthrBTSI75yAWDG3fLi2hTV95UubyfifQWuaKIOPYFxm1LKXx56hKBWXDqwn5g/TkRmx9b5BcwG8vPSMiOkj6wErXXIxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747070994; c=relaxed/simple;
	bh=mdey1wNqDva0/kh8XicdgzJr1dpUt81jBClFuuadYKo=;
	h=To:Subject:From:Message-Id:Date; b=q8eCUuhLjlWEv9mSuG7XTFTsfmaCXpKIge8M8f4jMcSLu9csNoayoKiGaPMB579LbsP8Ka787vWUt/K3lGsmhz6Y/ntAo99Qc6fjob+xtvml/p+xyXgXOlgb7nQam7TBxzggqgPFBH1+7NVJYParHJX2XuXvI+sluMaw4UOvPX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxnY65tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxnY65tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747070993;
	bh=mdey1wNqDva0/kh8XicdgzJr1dpUt81jBClFuuadYKo=;
	h=To:Subject:From:Date:From;
	b=lxnY65tgreaUYnIvbelNN79MH/jqJU838+oKQAfmi2Aopiz0taj1u6ZcJjc6u+g3H
	 Ta/y/InEEOkw1Vg6vrPQ/OhdPZSWVE/H73a5A24uP0vGp/MMcJMeuCOORZLOe48n0J
	 4VxzpJFw6AdbyAbTJZZvjX+VUUkwoeFVnL2dKIn5/jBFxwrKEUNx1RjVRdovGeMaJZ
	 PWUsKwp19712cVrt9adWy7PLHqSzBtisLeIiT5AxadTTQzDXloXlDw5+JPxYOIkGSp
	 XpwJSCQQAIgqo4ESTZP3BvW1JUCHVOd1ev5FwLPEsC+PEdgJS8lcWd9NlCbnBVvuo1
	 bjCr85yPOLXeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC69C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707099358.13048.5747110679976124962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd38635697a299078dc97dcf29eb3a187ca85fefe929e97b763156ab525bb06f
Date: Mon, 12 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747070993
