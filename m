Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7304D145B0C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720775843; cv=none; b=ABjRK5vUP2nJcGR+/KHwEcMmSoeNOpru3jVVV48U9WA0My7fQ/O8Z7BAcK8mPx5+86uH/vRaxiTXtkilgRPiRPm4eoGLEyIIwXxSjPbW+COZx3qIjBomjhvXsBfDRrf2+dDRQkKNziXk5BlKfdGe7pF5S9feEQoWRL8/n4HjZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720775843; c=relaxed/simple;
	bh=4zxbKl0W+vqyKPeS9w+zKfaXJ/xycdFWE+RMrfvHAN8=;
	h=To:Subject:From:Message-Id:Date; b=oOmRDC1V8V3vJZVV6pxohySnhplYEbY/zGTNJhzLbEUCUN8rdzpunNSbOvgwKSaVzTthtja0i6oTDk4Nvp6RZtbLUhOJTcigZjg3b1nRMdhwVXNKqV+hhLMjmIuRSbwbg6c/EAiaQVWrqM1vUwpTgW701aa/1gwXRdp1uJlR7cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXq7GtYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXq7GtYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01E95C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720775843;
	bh=4zxbKl0W+vqyKPeS9w+zKfaXJ/xycdFWE+RMrfvHAN8=;
	h=To:Subject:From:Date:From;
	b=rXq7GtYbNCDq/rYV01Qm0gxYJP2HzU57AJjkS+MF9JICHx2WPjhGJr2EQBFillLxc
	 dr5rcDb1CvNHT6ccdfWCwcngA75vFgqzJ4YOSbaCPskIByWbB7v5RfRX880W1AWDU8
	 6tkrL31NT57w3xpwwzWQXpNzhN5MArpNFXXliEV9Nvdv2bWfDf/kPp7jPYGjpMuQU0
	 uXLK85dObUKCwbn+ka6lhkgvIAusgr5dQpQdYsZb0QHLwZy9oCHh7i2V0bAoUoZyRm
	 60PCQJOXKHpHC6/C2UEbV2A2Veytmx8Q9sp0QvZKDWMt+7GTY5T92SMvyUw082w5ne
	 7qrhspsKV79Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB472C3DA4D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077584288.17599.6113341467991242243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e1cc315b8eca4359dfc66a28892ff5cb80d8fb440b37ec60023b9f5e26809d
Date: Fri, 12 Jul 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720775842
