Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE9821FF36
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758945594; cv=none; b=DOIA7/cf2m1ZFy2ytR4a264KWfCTvrNF83HlxLbqoXmtWRsASH8wWQaOa/WH5AL+uVnoQoSLQcW3DW6v1kgTXn36wG/b73gJhfMgct/L0Fn/snxnpW9ZK8BNv2Kg3Kxw62h/9ligZcG7zHPqNWtRW9LQvwv7Rkk2o7cpwvm95v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758945594; c=relaxed/simple;
	bh=2E1eWxLTiD0kklkfbxL0b/agjRIvb3cGHp53l9JsL70=;
	h=To:Subject:From:Message-Id:Date; b=H690DAII0Onwjh5P/AD7q3jeJS684BD9Cks+/yY7UzmjE2WvgIChBXIL76N+LZnQ5Zj3r5zejgnvrg8W4WCCj/TmSwbkvRYholfAf98nLMGZl7wHp7qM3Ff5j6bMFM4wfZ1LFAXEZgmZ8ALeyhIxhINfJEhxGN5KpQ7O1YrYIWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEZh1Ct/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEZh1Ct/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758945593;
	bh=2E1eWxLTiD0kklkfbxL0b/agjRIvb3cGHp53l9JsL70=;
	h=To:Subject:From:Date:From;
	b=PEZh1Ct/BI6HKoNr6w+9MrPVCwrBTfvWzVbE7qlXitC/xrUpJBEmUqjtYBcVtK+62
	 I0wOz5241Qhj6FU0Ie/w4MVnt6OjOLM3TG65x17ywZ+4a2oteJvbRd4YjkARDD/MX4
	 a2e/LI6UqPGZzqluUkklDUtVpKgzgfLMwX3UOmhDqaW53ezKUMQGy/7SzFP8xEYhgc
	 Ba/lONrL45IJ2XQg+XqVqsr9ZDsxM5Ant1wuSo+0LhOBNCWpVQiix3DnEUiADKgNKm
	 7W9l6UZG4c/RqmKP0HduXZiJdNthatrJjHUpfAKF0tQmXFw0IGRe4GAYuMi66TAxDF
	 4ZgV15rPnkRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6ECCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894559357.11816.10367813569524089783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c957e4e07d98f5d6f84b101e1e2487243a5e8bdb1513e4c455d591ce0e30f870
Date: Sat, 27 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758945593
