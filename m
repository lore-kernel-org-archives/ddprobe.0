Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D03D2DC77F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757633994; cv=none; b=klGyuxCDzaagEMRKCEmMFf296hZ5zb+H717JeKy/ICWy7oJZaHR0UNhtP+NJMm4Yga4u3KViS33EbfdN0szdg7/V2FLeMCp1t+B6pGEVpVqzkzc8wDq4TzpY3raqS5VaHnnd/HJnQwFbZKHCX+bt/vwb79yKqCYGF0h0ClQWNF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757633994; c=relaxed/simple;
	bh=t6QRUQTWpyarHjdLD1ddcvCkC4GBl4i5qfokwLIUbSA=;
	h=To:Subject:From:Message-Id:Date; b=nLFhDlJlqStCZ8YW3pnVDmC1jhG8Rk80xTPYPjrOszFVs2nBXQRaEMK9+r/ytpt7kglNp+4a3Eg7Y7QuK6oG4yHJNaFBmAbFf8uqEX/hwvNjPBpwVK1JM+neX/McL4uyIhuZXD5AU9VqoOaG663DHYv7PJnwrWW7oFnDRF9qonc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B113NCXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B113NCXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D5C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757633993;
	bh=t6QRUQTWpyarHjdLD1ddcvCkC4GBl4i5qfokwLIUbSA=;
	h=To:Subject:From:Date:From;
	b=B113NCXuEJJ2N/914ikcg7YR7qUqr5C3qLL325n59jJwOZryxBmoRqh4JgMLXrz73
	 ZRYgN0H+7OfiVB4ABb4FM/eAvgr+I5hWgyD80Tj/YNLRcCz4gKAUbm7AUHKc/ORZpl
	 mK+ZZiDLCqS5G3Ld+nS/QxOJQavfIaz+t6wTpbS4qJzZ43PEWvxGH7L9tLawmmGhtk
	 qqtTspp7aJn+vC4m0HCfw2PrsxVEU9OFbl1WujDfPBtKMZ0H3eV2W9n896D9C3Kkal
	 d6YuT+5HGui+9DIaaY4tYofPLTLPguDPcYBe7+fg2su1YoOpABfEDiFireNt7DfJae
	 q4qh6BmCul8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763399357.23798.6087786759133219925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb343ad67b75e9f90201219848ea85897fc1ce76f30cba4029b12863f6c1887
Date: Thu, 11 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757633993
