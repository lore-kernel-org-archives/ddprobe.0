Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B65533DEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764184374; cv=none; b=K2VImMmTpgGMlKAwKLPc9LKXNS6juJl4EkVSy0uGUI8yKW2aYfLrQtptEyNgbti2GudcArzEOVrbk0mEQgJtB516/+d2ks/6vjL3eY5q0/kQk5Pfvm21L78NZOwOhoLsbbfg82nq8PiTJpFVyREdvR2PUbiaIe6+IaKkSDgiIaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764184374; c=relaxed/simple;
	bh=O9C/gAg8IOS2mrYR2po8jyyoEbfRLfuBJZdJnJm1HkI=;
	h=To:Subject:From:Message-Id:Date; b=PGy/lVg+v05U4uk5gtaqPaijcf7lWJh7Pfl64Hm0HhpqKgkSYoOBYzhIM8+z2XE/JpGnFR0u6U3EBbz0FnU7M5uREt/XG6UFJeOhcHf+vAhCpAgawP8jObkzLdleaTxYwip0JCIKbxUm7X6Z+NoXQIDKK+RWMUS6DOgZFKQLa4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrM2X74c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrM2X74c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D8CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764184373;
	bh=O9C/gAg8IOS2mrYR2po8jyyoEbfRLfuBJZdJnJm1HkI=;
	h=To:Subject:From:Date:From;
	b=CrM2X74cqxDkziBefRgd48yYF1OrZIx5VgynVHxYo/A7ZSGMxW8/5HvDIMzSlGaMb
	 IOzXk2wokDC6PWmiIc/BTg84MAQUvvIu6Dqlwm8CVqZshJWw1Lrv4rp4aear4Tn75S
	 yjtXRvQMcTSI4bpfAYjxcZnTVXWXo036Hr3nMt34wQyrLNuEa/xrS19wWU2YSjsejK
	 e4/vQoP8xYLcPrKERSngOrjH7rFo4V3/QzKleYWc2ibOzJ273RH4HQ8/yiJehq+Yf7
	 F/G2w+Ca9H8tk2MxFclOM2AOMMoIJRcSc8yjg9F2IjVbdPOFHCDs7CsOzwx1msP7XG
	 6g+mBTRtdVFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2DD11193
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418437360.17586.7388693124120258773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac91c5fd630e7175429388b0f5d8b58ceb36b01bc0cc5776c7755e987d1b049e
Date: Wed, 26 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764184373
