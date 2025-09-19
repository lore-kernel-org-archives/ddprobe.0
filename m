Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C539817A2EA
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758326393; cv=none; b=NGzxkgqRsJgQUofjycSR8J3i90TLIzjytV8HZ0j2RttNDBKNhlZjo9uc/n2BweVBZBzz1bUl/t2wqJnIajQAxiMMRmB4fggKDFZwVlLC9p8K3UVUlUYAHHXGSjnLgRYzkIwfCU1SddWe1xV4Y0iXGo/M7pOD2qk34/mq6V6zXcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758326393; c=relaxed/simple;
	bh=rjaQpAoPjvEpCjgSX2ddQgYBU5Bb89rhNSdNrtdXPTg=;
	h=To:Subject:From:Message-Id:Date; b=grW5bED5t3w9p8JCAz/iG6wmdck9tkgyA5dukW6CDHudTYHMK8bEGg0Boj78OommYjM8Z3s81aaT7Iz3YsqdBaqtUIay2bg8Oqx1aXyd9UNehtOJvqXhJ3DRKuXJ5qQvGv4BOeNo379We9paylnP5wuTFGIBDWYcjPwCWmmjo4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5MELTSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5MELTSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1991C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758326393;
	bh=rjaQpAoPjvEpCjgSX2ddQgYBU5Bb89rhNSdNrtdXPTg=;
	h=To:Subject:From:Date:From;
	b=q5MELTSxdKnac+MZv7Pf0yJBk2TJGmWeyCNgQmZpBvvH9ublHwvhG3hLRU7GOUsa5
	 qWonmo/0lIJwhYGS5F/DBgGJ00KxdWY/JyufsnrAXj39LH6Vk1k4n+6Pq63/72zQvW
	 YBUySjMI9xqDMxlnjargf7vrBSjzNSRkNP818wRWDyWm7KGQKym+VmuetESG6aYeBU
	 ux1fmhwxdRl8DumTnSjXk8i557y2E1F1RRj+sYPfiLChTrQ/S8F9Fs14m+z31WVZYW
	 vUkClkDi0kQBdQddQLydC+nxAVU2GVjJUy563ezqdMB8R1CFxlMEcBlFIp+mfGTOyq
	 W5C06DvHT9/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB22CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832639358.32359.204564138601285860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2952f6b6d387b24616de66a057833fdfb83caad4e829e3c996b593729d5dc987
Date: Fri, 19 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758326393
