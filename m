Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EB5BA3D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756730993; cv=none; b=q9AwuEBlWbMtaYc9ozGMyxRPryF046QCD2/9X+KaJAL8X75EYwgZCjbrM4oUzXPuNEYLO9nV3ci54XOQe1J08sNInkR70R/aaVZDvaJZUkkqd2UTxLLjnaziuL+NyuySE1n0FPHfgmPlN/FzKzy0np/NwpPXvlVU/ZnCRG8CY4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756730993; c=relaxed/simple;
	bh=qNtqACOMrnwKtfETUyQvsZ09ZcyFneRPtkHjo3iHbho=;
	h=To:Subject:From:Message-Id:Date; b=iRQeX1jmsxJVZCQvEfKuzpdKx0QKnNCLO3+Tgd1jk7SzzDxZrDfsHLXUQSyI4BkDHIpIHyXB2SSXd2Gpzw9vaMDqeDkF7YKJ9kJYkLkbEJsxamV2OeNlQPdhhzTMWDnGSr7Qif2bhxEKfX/Dtxcg6Hj6Kf1ZKn+pDiyWkq1cyhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUWGmAkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUWGmAkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F30BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756730993;
	bh=qNtqACOMrnwKtfETUyQvsZ09ZcyFneRPtkHjo3iHbho=;
	h=To:Subject:From:Date:From;
	b=ZUWGmAkkilSjB57OUJEi+CekSP8j62NBbKwed4UkkTY2CJ9+MApHOyy48gBDbK8wA
	 qadR3Z5sweeRQQwn6BB5L1bQjN2BHSUzowUA1Et1lRkVKFUnWDJKXsxePqxklx+u01
	 pwgfzFnY/6xmj7tlZq3VBxAvGF9jmTODELlGl4guFGjyweuP9qgezKEAASOkSPZWmH
	 a47AEoctxwgdwZaSyk9qVxZ4NdkTnvK6uz1yvk7ov7iQ7g8/8s6+67qBquZDm7ShID
	 3axf6QD/m9DINJfzLHBiQ5ilkCkWo74fvbg9spiN+Nc4wkhUjnbsjwGt2JytMJNsjq
	 RHlT4AjSEmUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21DCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673099357.20451.1417189727130048981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499c0ce951a120293dae05b6a708f9cb42f97db7ba4943f5a30b21adc39cff45
Date: Mon, 01 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756730993
