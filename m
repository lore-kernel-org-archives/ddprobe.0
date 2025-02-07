Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A19423E255
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738937754; cv=none; b=uS84kCIvaD++h7oeazHZdJTYv2IdE72TozAuVVM1il9mfgJTZ5t/F7aFM9rm7tAWz3PelObrroj7Vu65of7/hEEE1x/2nnVOQwgKdRIyLGtNvQoP/O2Op1JtyTd6wHMG4ai1Cj3r2/xGvUjNc6dbQ+OBFyuM9PBbFfyDtdWsH8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738937754; c=relaxed/simple;
	bh=SlcWrPKhpB3lq5R/GDwFJ/4ANlgKCcVCiRyVQHK0pFw=;
	h=To:Subject:From:Message-Id:Date; b=VPXzQW0VjASgdNsl9ugislsyoXaZIUyvHuuqWpGjM5/FoYoXjuUUZ4Ndvnj9ewDxxG5Yr7KoS2cd7Y/enuzKgiiTbNEt7V3/V8Vn7Hlnwbt92uHqmsIKfaj8m9BHAzMFVWBI1RMl7aCI2sXKtb7OLKyH9b+Fhqy49ryBp7NfVMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeNEi3Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeNEi3Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DAC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738937753;
	bh=SlcWrPKhpB3lq5R/GDwFJ/4ANlgKCcVCiRyVQHK0pFw=;
	h=To:Subject:From:Date:From;
	b=DeNEi3Ldgmw7FVepMRNxRg9pjVbH2k5a4ghjk+icuQrNpuUOEG7zIaQXAngWW0IRP
	 hq6U3r4Wj8YWyBadi4QVJ4faN65DsiMjA2JvFUlwXhiMwdHSyogQSc7r9MKWcVbiv0
	 A5BD+0m1wWVy+WQ628xMUNc8FQecAFN+tq9cGjOxrvCFFKdcyHLWMS7unN7cr2BKhm
	 3xD3TnNHo2ZaJCaV3OeWfoFWXHbFKMdaYGA6Cl6BiRUkJjGN/1FlI3E85buNLxMbLT
	 CNAw4D9kRuiW0ByvmrBKLD5CVw0HwfYQchCQUIYRcEhGTn9/t/k1xEjWwr5PpTfu28
	 g7bsj/BVNw6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F15C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893775361.28128.12150067352034962326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db54b238a44432a2b44adfb7e08ff5035c644879645a10db44853bf63fee8d04
Date: Fri, 07 Feb 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738937753
