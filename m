Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFB123741
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754660994; cv=none; b=F5PAgnYrvmepKKQCdSI9PaWdL3SoWlXlYdzC/xbjR4emtKdPlxTieKSgomie4vH69b4p2D1AJNFhWqA64Xtw4rNn1FfuRFPmvwxkbTE4UCZb92uCizxpIL9cElywoSlOmWdUwYurYX8CGaf45bDe7bgQa9Ks0FPQ3o+qaBtXhxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754660994; c=relaxed/simple;
	bh=uRHsxrzPRilhQlPp9aO0f+W6yVMeOpc+TVEXqIwaqYE=;
	h=To:Subject:From:Message-Id:Date; b=kJ1nZqlETLnc+eCOD0XN1b6l7YgeRZblakIzIHtgUcYX6ttv//D7K+fsnxoHuHyaWSuwjan68vXubsDTWtX3P4E4KECfhGqVUiMh2bEynsDMEvXVLp5O60or4tNLIhcx8wPrxJ6fdoxac8x6iSj46s1kCsYKKtZz5gYKv73RD4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqVdT4kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqVdT4kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B8C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754660993;
	bh=uRHsxrzPRilhQlPp9aO0f+W6yVMeOpc+TVEXqIwaqYE=;
	h=To:Subject:From:Date:From;
	b=uqVdT4kYApiAN/lyNVJ84qWqlUBnCTU0GwQlmtqljMUozPAg0s6fEgyknvwaGXyjl
	 LUyKCZiscoh0CixLpTkNcJNjxihp09WovILgXUSEknEpGv30hTPexOR62vfVzL6HTQ
	 f5pvsO8GKBCdFuIVNpqPiQeh1t+F7SLQU0Ih9+iRmmd0Oec0QgE6U0LX077Uzgkv9T
	 Jh9VwS742leqcauxzdOTMlkjgR1moiwDImD5OuWrP6BPFBi5sDF//g/t18oMZwpAe4
	 qVBYOT9KfOmd9mfX4P3WMUf4TWk3sWMUBt/impg3b2xhkDHib9BPe2Adblx/Pabdyj
	 tuKyntASrM7Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1EC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466099358.14727.11193914833127828947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5001e4b4d82e2c099805d5fd42e6b2434df4b51bcd8409cce4a86edb7f4ea8
Date: Fri, 08 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754660993
