Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A4027E7FC
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757104194; cv=none; b=hNGYzYpHOjBEdKDt8FzT3VvLGcyoUYCy9+t+lQkvnvyqHElJsIdMQRTTbvVgf5xClZLXERxyvTwJoFbaHmA8mg+sqLpby26yg1Jd1BHw6IpJXR1+4eUb2O362Y8sroPNXVA2AYarkcVh6/d1Jwn7ZBHtvkOvHn6tvn6bWP/6jYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757104194; c=relaxed/simple;
	bh=5WXDlWTCQGAXCn4voEu3ur6wL8wWN6mqadtn/Emv1GE=;
	h=To:Subject:From:Message-Id:Date; b=hDlwUj0M0/fvSYZi+CeI9bXbbBHM/Of5YPC30m08J7dlvjh41fsULCfdiapJ83yuajY43HSXABgCkKeTv20H22vX9nQ/59rkn1LVHgeOS4M2cUA9fRCXzW9ehNJwLZPf7hMfBffxphlKMfT+AoxFZPWaOeA5jWCSTIGzQV8whrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWjjxZVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWjjxZVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0763C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757104193;
	bh=5WXDlWTCQGAXCn4voEu3ur6wL8wWN6mqadtn/Emv1GE=;
	h=To:Subject:From:Date:From;
	b=nWjjxZVRPr1Pwis1IkotEeP3oQv+0AKeyn+HHuQ4Wpz7ZKAKvZgsfiO3woSVmlZ0a
	 CCWkeMvBFvTbDUAJ6Q6Igb8tWKrIrk77Z4nAi724VSKLMwuA6+79Zsg1HreyAqHBmp
	 YekJJiMzn627TwvYAe1gR/eANyC/lnldephpp1QbmT3z2s7OYJHokJOr551HfyHgy+
	 LGm5HhPG08k25gvIsvwLtA301C+s/D3a25PmkRNZu2hecIFOUpc70NMzMl67Mb79Rp
	 q0o+t7iyZ09y2flyFwhLe83xQI6q3f8WFCgBKOcttpE2q5uhqQl0TQPmRp/SrMXTgn
	 Bs4CVCZDoKOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A72FCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710419362.21378.5742762471701085503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ecde90803cd70bcebcbbbadb137f01d5158071afab4bf83ab4e88f1c8ed7b7
Date: Fri, 05 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757104193
