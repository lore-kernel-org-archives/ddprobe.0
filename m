Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2709618A6D4
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762669794; cv=none; b=D2V7s9/t9683yiOeBrtIEfGTCbgbQygjLjK+LrpPZzYOnQOYsMyU3mTBld2uGfAtbYf2g7TeDCjsd+H0IjG1/cfkA4BdNf3MWSFCq3Ms0zaXELMHyzig12UpZD4yD2bLsc6Ug5bp1jciYUC0mhTnQUvzO46Yjh7H+QjP56AX7X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762669794; c=relaxed/simple;
	bh=tqxESzbxi2/grE+8LiFtPbGEsiJD16jjLge6GSE360Q=;
	h=To:Subject:From:Message-Id:Date; b=XKKUKV3o/t3V1eRNTo7skBjYfmXHTYge9UM+rDxglgFWsmZIWClTWD8G/94rf//WGSEKfddgYmTzllhtbseeMWRr2uSnTk3AfmEOnpEnzhtBL7RSp8bGncre1oL21xRw8Uj6yn/NzusXVgH00i9RV1bubiicJFPdiVniJU5HCjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsrfhBKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsrfhBKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762669793;
	bh=tqxESzbxi2/grE+8LiFtPbGEsiJD16jjLge6GSE360Q=;
	h=To:Subject:From:Date:From;
	b=XsrfhBKLVDkAa/7QyNSqHAedmxO7HfMYGrF1YM1Lu69mG41ppCIVQlN/3TYuXZs8Q
	 29r+OqWumg36JjfXBo9787EqmcWp8g2QW/B6mVr00xaiLTxorxTOiXP+k2g0j49jWF
	 fdh1M7TAa8ge5XH18LIWvGwSzCRmGudJrmbsRFt08qKdbwyQXVHPdhB0vKiscir/7r
	 0ZQNMme0yfWuzHplIgCPQ/RnpN8zSBKabey5/nVwYPjIFCrf87IH+1EFchFv6CT24j
	 RGjSmjA8EJPgxE4fLpFXRjiHLa9zVzm1NoM6ah9Puqtbjg45AjCj7Nz1Mk1/267Aaz
	 r0kOOlGUcGUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C17CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266979357.28602.2302513360752469332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f22a28055f63ad2e4d44e88aa29384c84f9fe8bc878675e5127b3326db947b
Date: Sun, 09 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762669793
