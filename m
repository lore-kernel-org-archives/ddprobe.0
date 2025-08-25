Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE662248A5
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756159794; cv=none; b=CA62oXkwHmdXCSlUO48myuP1SWCTCwO2K1krhiE4WKMWgWanjFGUCNyfwbUHjOVIK4hB0A5ibPDzOSq46KZH7+tomzfwxEEyT6GMbhnl2dZqawba1mv4xSfm8XIAciEkoEuk+apby7sEQ7YecUsIWA7MjUS2Y3VjUnuf8nfkBcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756159794; c=relaxed/simple;
	bh=8eAFzU99pcayEKL2wDKmsPzO04GpopF3bXL6Rf7BTrI=;
	h=To:Subject:From:Message-Id:Date; b=KbQg0MKQnzAVlXsB3Q/JckJZdX21mJmhLlDII/E5kpHA7TzaP48ATv4NluEoQHJqM8uZkWoMYAYJ1hpkjBKtLhyq+Oi1FgZ/araswg2zcgZuvsIBof2NoUWfxv2ZIiQ5crXWSpFiPF0FnCbNL0mpSfZt1WCXRAC/e7hztvKHac8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUT1vh2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUT1vh2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79ECC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756159793;
	bh=8eAFzU99pcayEKL2wDKmsPzO04GpopF3bXL6Rf7BTrI=;
	h=To:Subject:From:Date:From;
	b=iUT1vh2sfJmrPMEo7YTDE5kC3PONKgFKoEaztJURes1Fg++B5MGcag61PbAO7p+Mk
	 6DVfQzuNNSsNqvDM9mgLGoMYmCKwQMLWAYtLdIzYS1U63JPSlCJHtFzdUMYvXyfo07
	 3FXhL+I77EZMEu2EfG5v9wFFmOuWb8PWuCmbeADd26A9lgeEIuiW98jS6/a2WsjUfO
	 Z2exxNaivVEWNvL74AoqpwLbM6XxjalwTf8wtMfP5fUOU2YckWX1i9mRG3dqf9AxIf
	 pRn+TbK26QYhhvaLduzOOcf64wcqCb5j14OlCgm91p0v5XvPGhzrfGExsFFhbHXXEu
	 +BKIhY7z/BPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B53CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615979357.17532.7434452806221707566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627d486d347b5694cba391e0a0088440f566da6e3a1f0950075a7a71930943d6
Date: Mon, 25 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756159793
