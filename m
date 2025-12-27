Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD5D487BE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766835834; cv=none; b=rMS7R9VtN5VEXaVXHhbVJY2TZ3br3VYKG+t+Ats6nyfsgEj+5QZXnObz+VaO+k7ZdG+eOpnY7RuhwisCyZYj1tYP1EfD/twE9xVYM8AiPU2c/Fe+bQb/HhcdvYCzXUoS/wOCF83ur+AC2iM31MTnH1IP+koAjkJ07cvww6mxPXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766835834; c=relaxed/simple;
	bh=uzEUN9/1jOo5JHGZl3BKfwMYnz/eLgRsu0/QzxR6LFk=;
	h=To:Subject:From:Message-Id:Date; b=GBRyJyiP8ea//7yyeKOIMvDEM5gUlQN7XL/SJSYxXJ9WWtcr/qZmZ9M50QGNkgad2/bbQeWsRZ6q18g5ngQ1cRUtLrHsYv31cH41wJxphBf+e231kf4uQzNp7aITKwg2NA4hkVMC9y9T50n0EgMOtFewrre1e6eXxxyuK8ohGvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSH7SVg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSH7SVg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766835833;
	bh=uzEUN9/1jOo5JHGZl3BKfwMYnz/eLgRsu0/QzxR6LFk=;
	h=To:Subject:From:Date:From;
	b=jSH7SVg2+Ly6Fj1U0CYMHQ+XYNxXKo89RsA4bZqnk6fbIwB95n638eJmjmDxnyWn2
	 UZRyv3IR8Wd108BCE/w1OWoNZnojrOrlEzoEoBA+WLYZjREw8DRNgFetHiJq1k+SK8
	 wu1qQbYJkKrfylLDaEbC9Eq1w2aUdnIJME72EMiGwikm0P7U412sEjxElXMfkflfx8
	 hiJ30k9HKAGhenH9P47cB2Kc3gSUsyxx+oCjxOaO/oilHBFKQ+QtVdUe0ZrLrBDUts
	 Tm5GJMM8MdMhNoqKJRpzUGdcWe4VVWuQkSfmZGsPa0wcnQ2pp8V5dqlM7P2aNdr2dK
	 PEfsYT8O9EHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BBE92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683583358.11911.8980663385298257261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3dfc4b9048a4a36aaa9a2970a565bf561272081f2b1a4f24b578ae8f8af259
Date: Sat, 27 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766835833
