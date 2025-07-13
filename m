Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4D8F4A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752371394; cv=none; b=RPosVfdvuw6YpMPQAj++v5R6uc/or6atgCC0PI7j062OKEkpLASFBVXKZOmxIg902NkhNNaLA9IWnIB+TKuxDgrnD9XD59DRb943im8BD4SjqnAPa7AWXbZqyaha5sSRqwz7pCjlHvFO8D5ryZUr44f1FYadk2Kp6RHdzhGgLLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752371394; c=relaxed/simple;
	bh=JS+G5m+yZPpcoLUfAkPsDrHqK0RHYGxGGiGBizwUWHs=;
	h=To:Subject:From:Message-Id:Date; b=VSCa51hMjCM101f0nszxmEMwivOkZ5dhrrtql4Aa6Cg1+ULmydWCvSt2xW6D+NLHiQKxcf5+TQV7c2703ZY86rtRMgW66xEZTJMpvsqb452LxYG0f8XdMisuPcgpB0Wai98O2dlvQduXTdq9L7Ofg5SgDcHHDWeXthkzMjn0vE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhlsCBy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhlsCBy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A384DC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752371393;
	bh=JS+G5m+yZPpcoLUfAkPsDrHqK0RHYGxGGiGBizwUWHs=;
	h=To:Subject:From:Date:From;
	b=dhlsCBy771TDBslp1WxE2zishmthmm+g1vALbW+UfQ+RAWgyeASD+bB+3sWaWhPPZ
	 IJKaY66oSm27joNk9g8ZdBOX5ylPPrSNYZ/NXG4UNCGJ4Bfi/u4vPfZ1sYvN8CFS4L
	 Ys0hquUkxFJTxYohyE0GJn3O3wl77/N59Q6G9aEFAyrvXKPTk5GciPUcdRie/7kDTn
	 LQT0TpS9DratDkqBi503fVqj16MdcNeElm/ojL0fyRmCSHSeNSCd6OZUZCoMz9+9cc
	 65QwYP8vUf1O8ak8Oo9gWjvG4rM+ogUpqnFLUMDu8KT6jvduGGZyiyPUy79EH02gjR
	 YbgD/KNHj7FiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2AC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237139357.1419.13110993071697614865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b194e797bd9f8400eac07b9d492efba923259c061101f88ffd7dd0cf8b7477
Date: Sun, 13 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752371393
