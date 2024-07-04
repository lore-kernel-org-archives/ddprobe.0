Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D541755B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720127123; cv=none; b=WMqSgF7YR71TdCNnCM19AyaKgQhjGUHXakwRFzOJWdFd3SxwkSDHtMNJA4kV0RYvF5WrgsNMI5OQQO8aIiEBN7tAA/Yz/jaD6ovsdCXjNDth5aaBnLorL9WJRYDd2b+bFj69e0tMezSwmIfgW4AzLcbu5Eg2UfP1l8ig4AKa3UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720127123; c=relaxed/simple;
	bh=jn9zmXlP6d9oDSgoL7JFW20hR5T9x00SDfBaKOqYdPI=;
	h=To:Subject:From:Message-Id:Date; b=pvfUaKJOllb72o1pKFyo0ZNX+CG4tAIagYRWe8yIqo6VJXKm6EJT7b+SknboQ1I3fkDyGSFQa27s9zqzaOlcqGn7WXAaM1vbVtzrB5iADsX7P2lFf7hDwZqk3vNXwUEqWZwX0BpVtnv996xxKx8Sw0lVTukFv+mL/xEQygqdjRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugEEQk5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugEEQk5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CA7C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720127122;
	bh=jn9zmXlP6d9oDSgoL7JFW20hR5T9x00SDfBaKOqYdPI=;
	h=To:Subject:From:Date:From;
	b=ugEEQk5zxf2s6gg0hrqBF5UA9t6h3w5SpkpBRUb1mAdXRt/rnaWbpsSc+pgQO/pEM
	 y4paHZeaHNqMz3uIE5yGG3PtfJcAuYdNsAFA/8S/Dk7+bQLgGO8oQty+ush4tHN2kh
	 OMnSN/Y5mWWinF4Vl1bu+uBQiUgMVdxQXpDXVQggHUbMlVghaEZLABRmHXg0I3uQ/Q
	 qsEWYqGToha5+CvqHLoodCrHqno9qDhxL+ANLB09Fv0MGnKmdYb1tXTFDx5XUuBpa1
	 iIHnHk6LF+vVGLpoZ4vC9ca3SKlu6rx818/T1m+AYJdzS/Lyrme97ZNb77rN7Yo9O0
	 q8nD8hIMuQuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8DCC3271F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012712282.11922.12098560751177600299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbfbd025df96f0197c8cd25b0fd4ca8ef0fec007392244fbf80a4fe7b092793
Date: Thu, 04 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720127122
