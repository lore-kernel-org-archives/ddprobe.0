Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F152749F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668194; cv=none; b=kTdNmXppv49buxPiKO2ha8ImqbeOq8pQ08WdlyYtUpbIBUcSVN5JYjdvI51y8ZaLY1pdeOVa+WuqPIZ9/mRV6P/pbg914knFNJDw9UpX12tLHY5e51+xy4KFaOU6eoIZX9ZJDuxmyzn+F7Zo+g7d3tcp8viodGqDFNZGcvH1M2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668194; c=relaxed/simple;
	bh=mG5dP22JVTJc7UZy/+zOCM3PWTQRJaYFxHTiFCBby3c=;
	h=To:Subject:From:Message-Id:Date; b=AMaF5noS+uQnhArzfZkfLvztuXHUgUSaww4a8+J+YZLMq8dbXQUgeetgXolk5/hdZ8Yqh475kcAtG3XkbJnrUcNbkhZFDdp1zYsP7Wyz0EO9W/C3oXkf+FyiEHajOuaSIjJyutW/MrMV0cmpLGb/ptzPmzLZRbctAkwLkeJzj1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPuO49Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPuO49Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757668193;
	bh=mG5dP22JVTJc7UZy/+zOCM3PWTQRJaYFxHTiFCBby3c=;
	h=To:Subject:From:Date:From;
	b=bPuO49JdVDCPPfzjH6dzvr6vFxO5jHYLgWlsGO2dMHPDTN2F3D0U/SUvT+7d71hAe
	 wC9jSbJMqeakD04fjGM2Auy5vVIGboiEsAcIMwadyPLFy9w5ZR1fYS8CvuEKzZfIiR
	 Ll1N/BQwkunI9rGxiHftbnbDPKgL4gC2mcxnw18IfJb3kb0GgdXRu7TJdn60RGxRp8
	 9insZ6hEj6ikCIsIM2tOh9hlgJ6EEVOA8m7T+GpY0fsaFL7CXx+BayVfftk7oWbhqt
	 w6F9mfiFisADmteb1YvzgiiVXbgQkEO/xENH4iLYDNso/P2RpJio0oIdTPXW2BLA8t
	 7J747mvaRRX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF1CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766819358.13956.5061678164024895471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0bfd283ec86da0dd9172f6a956f61bc1fdb3d0a6a3f3faab5fa8607267f4af
Date: Fri, 12 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757668193
