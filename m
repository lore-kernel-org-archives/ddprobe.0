Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4D227A92D
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791656434; cv=none; b=OOphrccVUS3kifTXmqjdgjUcP4dRX6fQvz0np1DJtwQ7UasqYoqX/HMSONhfIlm1XOwMSEyDNGBsDCCPaeSKKXnk38nV10cFizaSyI9g2tmAXeNnSq0kJNN1/KT9Ci7S4SBZ5nUbPT2TP5YN6IGHbULqMaM0bLzjS+xn2jgANoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791656434; c=relaxed/simple;
	bh=8aUXrX01/0CNx2v6IT6X7X59UgCgb483Yb+n2hzslTw=;
	h=To:Subject:From:Message-Id:Date; b=mM6M8ATEdQO9uUh9uujlScUrzpfT47RphDDk7lJJhgHscqqAnXRraR0x3X09A7cHf8sQuXEdpZZ3G64qOxBQu2OxZRF2IyOhUHMVuFXOV8aVVousUIZbj1btNMAvwrOmjoZN3y4M/q7Y72Ax/21yqYB/iV78kKKeTBfLwPu2J44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O36u9JQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O36u9JQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36A9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791656433;
	bh=8aUXrX01/0CNx2v6IT6X7X59UgCgb483Yb+n2hzslTw=;
	h=To:Subject:From:Date:From;
	b=O36u9JQKpy6h0Dnbw8WEg31n/VVb7obFcmhYJRD2Pbt9Vugr7ghpFYqDYRy3uQJ9Q
	 hvlIcKgAq9oBdeDaJaOpL4EGeCl1J+IODffYr4GusschCqVdEc8XzUr9quuw8X3J5d
	 rAyfuj2aGoXhmwupNxpP1mlwxDHuXgLXbio2993KR97lxcx4gmLRz8zPsJZSjkWuiD
	 n9Lz9jfXLelJiEX2JvFnDYkPKMHPxwVR4slsSXCQ356KYv9xc7A/h+LUPuR2ICOloU
	 16jASJvAno0BWD2/HdN9sg/tY9/hYFFGOfLyBMXhlFNV9XPiO+uFQZbwqxzjQaE8+1
	 AK98B5NMOXHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFC6CA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165643368.3420.13316269740109846031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b97cf45c9ab1387d411d96c7d4d6ae4e9e0f1cec1017f1bb733079a6d56d7f
Date: Sat, 10 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791656433
