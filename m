Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2EA1A0BF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757780994; cv=none; b=DLG4LYvp0mcqzgnnOCMEMxs88acwlN7dOyWPdSMdmiEjey7RVQasbub/QQPwE+jfJtcLpo9ygNaGBD+olz6SJUl+Q2xNGOmrPrZyayfuNichZfm+VjU1eR3/WcHLMy/TvOG8x+ABCwKbirUWTRC50gBDZ7b5icvbqkB1VMAUZRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757780994; c=relaxed/simple;
	bh=/oRGi+axozLKt17yzDz0EpihuJS3lYT1p/kSR3CIpr8=;
	h=To:Subject:From:Message-Id:Date; b=jrCl9k0djHzj0blJULrK2XxuoyE7O9r/zRED79/AXL+LP+1j28jeA8Rp1mi5QObBN9hcvXW5m49FxIz3bvP0I1SmBoH/yVYAowXy7XPKX29P+7890Ih/tYDeuxbaLHakWLcBADAC09Bl9amQNbfCHtAIu6/5U7VvgYR0RMjaqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfjJT0w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfjJT0w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4BEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757780993;
	bh=/oRGi+axozLKt17yzDz0EpihuJS3lYT1p/kSR3CIpr8=;
	h=To:Subject:From:Date:From;
	b=jfjJT0w5f3QcU78IptoiA/uiq1L+AJ5ylUbYU5r3/E4SsfTv59cJF3d9NmRyg+fWL
	 /6+kZf59eFUq+wPGGf89QfUeUwVsC1b7tPs+g1t5NsYqLO02jCGDE3A1zxQFl3II37
	 XNSBG8iT4UQ4kAZ5scj5Ccj9x12tfkLJJOZpk7ATfXWy3CQML4CVvTU8cbG9TEkav2
	 QqeVh1jYk/oZu4mOrU1Peb4yQwEhBuWcexaKF9VGyTIAovllZYQDKj6SJK9K/qccfH
	 LzFWX2XtQ+1+mIa6+pP+Bp7EjzunqdSnGoVcB+6QtedIZdQouZ0rPakq5xvc9MFBuI
	 rTPlE3xh4UY+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D0CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778099359.3736.11246534165977259093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc720c661cfb9d58e953fc5ceb96eccc937f9bd2d78a61296ce14a75c244c30
Date: Sat, 13 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757780993
