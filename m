Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4672D7BF
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790465434; cv=none; b=YTc6fQx96G2pV0ZgXJXwzLocbQEYDxAA1SYTzSBkYKfFNXsgkPCiVVvgAl7/Wru21nqsNc9rMlEsLVk/OkZAiE7RIhT2fcNbBiBDbb6OkcBamEgBG+vJJZxaVvg2mktWNC3K9fME5VsLIrp7etTwdMq8FD21DGg/BpkN9Y3Aj7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790465434; c=relaxed/simple;
	bh=8TdQ0dlWRJRi/8YPhlgMF69D3AXEdo87iTEqY8y2nVM=;
	h=To:Subject:From:Message-Id:Date; b=VlMObTa/YKmWRJpvOrASn9WowkuvLc0KteJiuC4XdHabBgbAl2eKWPHyAH/Mz8BerLjto94XWFnTNdS2LYKQiT5orx7UYk5JqrBSAk/MKCpjbHq+VDD/h5aY5D4eMXqZZ4KnhJf4yPNsyfLhfDMAh1DkEiPlditWsmVi6dCa8z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUAALQeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUAALQeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF07AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790465434;
	bh=8TdQ0dlWRJRi/8YPhlgMF69D3AXEdo87iTEqY8y2nVM=;
	h=To:Subject:From:Date:From;
	b=JUAALQeQk9exoKyk+C4Lvv28cusspes3Pyml0zryTy4w/ZbnYM3bgbsTRimxf+jVy
	 U0EQbCzCis9cvdmoQyxwE5sSY6CLIwOlwG7W+AmsupzVwqC2MXvRfYpkWC2spZ78fW
	 CS8Qp9m2XIECPSUh9OTt1IFYnuGliQFesA6pzU4ounA03RMd69nto5e0DWbsTz3ppd
	 66yb+qqjy1hJkLxsk9hNGHDDSBO9ZYtcGHZbJ+jujYESQUo5/h2nWHzpu8ErdBwZ9V
	 HyyzaZ7w/PVJqjbmyS/tDafcu4xYSr5ZueOC/P1lFuGdPpXefsc/QW7b5tB8GsiK2Q
	 YgRLgOKu4N6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B596EC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046543368.15751.13356447123816828100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90b8e5f5e8c12e6e52126f7f9d643655264b6f860645ccba997e113a3135a57
Date: Sat, 26 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790465433
