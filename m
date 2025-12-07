Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D903B8D53
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765071174; cv=none; b=M416LDjF+q69hje3svcgU9k4knQwr+9rNx6fOm1rSvWKJRtu0NSNmm7CPp/88zxzPjNp67ECu+8s/MfCA8uJmDaRGzRjv0K6AeAec4+uu+JghC3mX+gHMpHC7hY7BB9uHqVX+1R6aT1Bh44WFrKofxNISROTYGtmx74Ui69gUqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765071174; c=relaxed/simple;
	bh=xO4IjHK6kCeSobG2eOHGdG07iJSqBSpcacya1FEgdOA=;
	h=To:Subject:From:Message-Id:Date; b=eBxekibGg/ct5ynHT+raUCthjKvC5NHyXLGPWGtUEsLaFFTImPM8rFfuJWjkeghKpWDsvFubbEMe6sQre/9SAy7B30g+NfuS19j5Qj6+3JYbYWa1E4hurWtXjc4gkpr6Ez9HDQLhjYhve1PoijbMkAm/EheNPhCsztaoc59SwMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gumJexoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gumJexoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765071173;
	bh=xO4IjHK6kCeSobG2eOHGdG07iJSqBSpcacya1FEgdOA=;
	h=To:Subject:From:Date:From;
	b=gumJexoQhahIAYqaubzcBPG/qu8aWPUb0sNO4ReQV0PA8UtyQfRMTe8PzxV2DPnN2
	 cY3wuKfB+I1K5h9IXmBk0KgzpBm8op8pMagn5bVpDl57NN2UnyivS84tdww6JJRzjx
	 EgykNQHLTkDPWGbqiB7H7odCNIOBdhvFV6a+MfrTlUONc1c8bu+xxRrwp8jPln8k9N
	 iPpKCMiSU9miju9ipCYP/baTmFcP0BdI4fYo8lKyVT/ZaC2PgEUJpzr4jTgswGKfg5
	 8KAX5gP3IwX/pPECu99QnMxzrf/1pLFmASEviMNbtyZDoSe2bfNa0X0ufNjgb8vBky
	 hfgaLVwlRgj7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B5D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507117358.13839.7956059998017288618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910b0a29a14d79820549a44c8ec1d1b9697dfc5d299979ab50007fe13fceebfd
Date: Sun, 07 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765071173
