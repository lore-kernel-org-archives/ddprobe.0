Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5F51B0F33
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751798394; cv=none; b=IqDlk7zyivLG72JD9Lx2kMj4XfPAxKy5u0MI+LP9ORcSVk9kvFbcHRXlD2KElq1I8CMXKTrrV8XPqpEB8CWfoj5AwxdaS23eJX6bVAMC6ajpfwOEGd+loIdDH0YHW7JtF4RnlJs7hGXfJS8Yf5EHAjBHyU1mP45TZMTPWHiHVrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751798394; c=relaxed/simple;
	bh=oEmwqIAsSK+OgtP25IkILAnEtkSb24z+qDexJu35miI=;
	h=To:Subject:From:Message-Id:Date; b=ROUirzgp1bdHgMTiNbOSlnyw1x0Bb6t0lw7i556w4aoCSJe9DubVaL1YVPMBU7d98sNOCugvsGWv7cjMUvPJA2ZgiDFbWbZgXl/vjDJAaYEzDMqIzhM/OCXHxVKS1sdKkhgPRFR0xLbmcS67GklK+LnLAVg28rNfylfMBqzpGLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8qpVU2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8qpVU2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06ECC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751798393;
	bh=oEmwqIAsSK+OgtP25IkILAnEtkSb24z+qDexJu35miI=;
	h=To:Subject:From:Date:From;
	b=r8qpVU2TFHOLoQL3zSypZVNsKJXlLYCR6ZyUvyQ2+LHghfWNhwGcyJ6gY6kMNZWO8
	 edF1Af3ZFKpZntttDaXPq8ZeofmYA+zxQRPFVkZCwHM9ND8UaYgqppkdtaksY7IQ75
	 aPL8G0W672DB4nkBcJdrQwpUxSpvpNeJ3efGmQfKvVj7e9P1ZrLF5nnSQO/qUWR5YN
	 ijdnokO5Q7N1ZzZCQpd0dpQygoNCJbRe3jpLAUwN0/ojRUAsIswXsToBWXlGlMNod6
	 9J0Shafu6V3JF8GaKaNu4M98GtNLLB+Y7WvSGS8jal7adepFvLzxDNhj4s5tjSA94l
	 lFG+yQ64kLS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136CC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179839357.16420.1996375868809889167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b05ff6361f2b430502d4931087afeb9d4842255798dc4f1bdfbbd311303f55
Date: Sun, 06 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751798393
