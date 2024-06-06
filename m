Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1A31373
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717636043; cv=none; b=mFUhObTeITItCGHyJg30hvqgrtI1C8hc8+kW3JV5MRpaZMO8RG2CCNyN5KrhvQujzEVm2+5B2tqo8OJJEeWannP3kWb11qPX1oTypeozrkfOWLokz8/DCu29OsEIrCMGh2zvbpTbZAhJgyx8qvBmCGBvvmRVCzqT6lACqZo/m00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717636043; c=relaxed/simple;
	bh=CF2HopVjc2u6uMInEzUdsNw3/7Fal3nEZaAszIP8rOQ=;
	h=To:Subject:From:Message-Id:Date; b=S26DtaRCfn1cgC+1VBqXsUm9mjGAYC3MjRLN4X+u7rHpSYvRWQDdx7D0RWJwS9ovrpPwYG/zsfIqklBHLEIqHGX6f3GhTDuke9RkQzjrFyF/X89pGPx8daWMisgNoWpPLfaFZmVK6gTRyC0XYUDgtL95mFhn3a8E4o8FDnbmsbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4IJa4a9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4IJa4a9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3FFBC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717636043;
	bh=CF2HopVjc2u6uMInEzUdsNw3/7Fal3nEZaAszIP8rOQ=;
	h=To:Subject:From:Date:From;
	b=T4IJa4a9jXoDk18CdEm0WtVqWpy0H/hdtebZBf0I4rEAbCyTbW0XS6DVA9afjabu3
	 uMhJGzWpR7OKTakfxBNg1OpZAbDn2/qaFScjAR9CvqPCRJiWt63itB6w5oaxsg/PDw
	 AU9Pr4Dv2Xa4MDwLyWZk7tCnOtDXwLw/KnBwxCfI0i+z5vzcvEJRWZAUaR65iZS1At
	 f2LH+NQqO8G1Q8mIxYirOGiiG5ltQN6lEa2N/EZ9eWgCZoOJlNYdrAnKacmORf0BnD
	 1C34wCXbyWWJX6lzmI2+0If5r7Rk02HWmKxfT3e3lg8HzRz99TVREJHBnIv/c12kBV
	 1TAzXiJo70v1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC4A5C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763604284.25735.14339079256241746004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d041df9a5ac533bb635b91c0f68967a1d9135e45841b489935fbf82752ec097f
Date: Thu, 06 Jun 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717636042
