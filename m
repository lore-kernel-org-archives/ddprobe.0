Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DAA23EABC
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768066434; cv=none; b=ZnfQ8e5jE8uN2aVZ1R6bWJ5cLb+PHDyRm72QhZ30FFaRrHHL50vSrQ9gtGqaea8i3alGHlsA1Q9hCKBLQ5UaWUrjre+Nx4VYtafrTLzfiD+k/tVo1bHKZ57mHlhrTD65/2ggz+52TpbU4hJl2u9gPP/e79GI8qDhSm/vB2mObDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768066434; c=relaxed/simple;
	bh=GGxUzhaKkEmDuYUjZDIBz6s3SIgznHFPFpdHcj4MhsY=;
	h=To:Subject:From:Message-Id:Date; b=maStxc0Vki21WXXIciCsS3O7/XXOdHjG80mLL/5j109bsHLH5G9SqUVQnIemzO52egg1+qfkVitDDlD/KYpA0A3wiYqQLvylvuk/bC2TXYldSkVs7zBqYteOVtfFu0rYT/E4t7j6xME1Jreyr3aoFsYwOl87tDRplV446YeD7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ9A0aV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ9A0aV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768066433;
	bh=GGxUzhaKkEmDuYUjZDIBz6s3SIgznHFPFpdHcj4MhsY=;
	h=To:Subject:From:Date:From;
	b=KJ9A0aV0aVn6hbAkgPZHUQF5j3rZcurCz6uZIk2jZsgk3A00ZApa68kUz7kZShfkp
	 3tT8Ohb6WvxKIh6dYFsiKGmag9wAeD25gTCLjyUa/yQ/Hl0oTR6VlJ4gXVXNKQ1C1Z
	 QA8Tf9obS3QE5elQ2R055794Uz/6OTeVT/hc1l0k3nt0IQkJP175im1wheq5vNDUvx
	 pAmr5Wx4kHvujLkKMK7oWZUU/ddwYJagqNPjhgOyTBDQdlowE/P5x+1EGpCU9evgJT
	 0lhblCAjT4z5ISg34lhqCVdID96mP54C/limYrfu4AwPwJWneGtTGOnB3q2tBVTuHg
	 4VKEWWZZFPRvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94945D277F3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806643357.23191.15463650325725274564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7367b72ea6a801a2469d9e4f5d72febdce5c40053e1a37a75b4774bbc8bde622
Date: Sat, 10 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768066433
