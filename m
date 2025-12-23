Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A02C35E524
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521434; cv=none; b=KFKz/a6CBLsL2bHrUyYwAQ7WQjlldYMObzJYhJZXpLykM2SY3TPzq7GC0qgMbKx+d3pdvklm6OlBiVL1Du6KSEiWJZATGsLPDlgu0TdeD+ny40c3nmtEDD0MW7tW6hWbb5juMY+8mM4OOS9YmYDRN0fqkyeTBpY8/hP856nAmGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521434; c=relaxed/simple;
	bh=3JNQ4OhGQ/y+hKHAVqXQw02eAbgFU5W3aVu7yLZs6s8=;
	h=To:Subject:From:Message-Id:Date; b=Jk2ubhxvBgPakgTU5UXb9ByfBtrkOKk44szZmyyvBGJHDTXhkv3CRniwFwjuUg2UfcZx0j4GiVMui071P5zgbMCHWVGM2JprZJWeAg2+4738SzXv8eny5rKd2OsVSGT4KAMQtN4e1gJYtKPDWVCF7ACA0dMEK4V9wj3gQbMtc7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehptv4ui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehptv4ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E497C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766521433;
	bh=3JNQ4OhGQ/y+hKHAVqXQw02eAbgFU5W3aVu7yLZs6s8=;
	h=To:Subject:From:Date:From;
	b=ehptv4uiAyU3cw/x+iQRLpRgiuAfFNZ+KH/iOUBG0fy7I31R02nyb3875eJyOjA93
	 T9qw+65Enn5zTjluObUS0GB+bb9ukt0gYgwYEhRSKpjOdF2w2c6/zoEomId6cEkZ01
	 q1aPAncFqHg/BB2RBQlm5HKR2G3LgomSXxStwOwDXba5uIOYy8tbIBTq3LCejyb4/K
	 YE4k2iGzIam2Ap4TNKI8zLZ0yLUHaBNG1/x01Wq42VQG5Os0Sk9/ffbZksD7zVV2NO
	 HRToROv5qc8g3lMR3b2KZMBaKR0Ev1Dx7YIHCKrWKCOTCvCBQrsCJjdnG3veCkD0/F
	 F4y4K17JAX/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F027E6FE29
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652143357.27227.6162863850717656113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6977cba2db12e2edae9b104138022af93daa14247d25be83b4659c5c6cbdc9da
Date: Tue, 23 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766521433
