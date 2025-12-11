Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4571F428C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765431174; cv=none; b=WM+5hHsSpbSd4MzmEGU98oN4DKvOfM+ZDKYFhMQwEtPbaDWpfToWnnVNmQ3SBSpXEotdoC6izpcoCGGz8n+BJZEnh8vqYFVk2VP7ddnLC4mJLmWwR/WEzaZplKi8UImnXYUkMqCzVslFpeVxNvilXoOKdYWb6PSVeHAZG+lm+NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765431174; c=relaxed/simple;
	bh=/pk6KkBygLbn9WdY9U2xpju5DC/FtZY0E7n1s8kmSaM=;
	h=To:Subject:From:Message-Id:Date; b=bAQBu2sjfpYZHdqrg3ucZXwfHYJUrEOJf7x89rcZFkHzRgVn0/uI8xY3y30bHsxebXSGQEcbirEHKflX5oRQDpNfN4gQDIhvBNNqEAJpOlXGMsZtMaVSzwq3FL3x0Ndjqv89z6POQDA+B5KIWqQHOi+RVDMV5f5pDQJ7V6C6jgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuBz2Nbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuBz2Nbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE06C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765431173;
	bh=/pk6KkBygLbn9WdY9U2xpju5DC/FtZY0E7n1s8kmSaM=;
	h=To:Subject:From:Date:From;
	b=iuBz2NbnMzcqh9bR6OiHO4ih3+Nw0A1+j23rMtrqeVaESaVY5nHnKEStesKHCNtoT
	 hui/ZJSkWBITgoHBU36Bfh5J3c1YZQZf4m6XG+vneF1F61N7+iYq0xErPyHuVu1OM1
	 JFCXAjtZKA3E5yaSasjc68l8sknujNXfuME1KoA3UCXmMYmYNclCYOZlx7mjZRuZnc
	 V7tsj7pmxA9wu9Am5PIo++Z3OZa0sQnr9VHHk8v3d/U1FWdrd1/Xi/J30JAAXVLSba
	 203ogvyCjAVT6GOjh/su8q+G0GCZGp/mR5aHQOzs01mzaxaz1LVEJIwEdF6SGSmHml
	 bv+5UkMUzN1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBDBD3E793
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543117360.28452.12042420829008831759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf10bc1aabf211a16da1140b5b4930b01ccfda97cd5b0fad384de4f7d72bb10
Date: Thu, 11 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765431173
