Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8F03A1A5D
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792407034; cv=none; b=qZV1w7D168pZRcdgkpbI9sm7Kv9caicnGVG4w9Fr6WpApVx0xjK1hKQXnTLbD0tyftrc7/DxM6+apVQ73ZlKF4vKjNFLIXprGlFP8I0H8s9yPjLCN/CNhzLQHgSvxYfnHBQFuKCVEu3fiIwZbdtzpn08n9zjr8ApxIIFGSfdiT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792407034; c=relaxed/simple;
	bh=BOKYSlbbZrh2ygtuu3snPbQ6oWlb+2ybAyqdymAYBKY=;
	h=To:Subject:From:Message-Id:Date; b=YsXZ6vZNYqzc0bqDzk625HST8t2VCfpEmU1Bb8I/RL6G+riwcnlg3FgeoaRjj3Te8yD0XtPZ+PluCQK3qrZ3/51aeEYAEvRc1m3Tvnq6JfzztbWqVpqwrI0zCyixPslMdsHZEdOW4C6BpWb/fRdILxis7+V/pfhZsdilU/+gHRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBFtR2Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBFtR2Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A71C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792407033;
	bh=BOKYSlbbZrh2ygtuu3snPbQ6oWlb+2ybAyqdymAYBKY=;
	h=To:Subject:From:Date:From;
	b=YBFtR2Afu3HxK5Xh4rV/3bsuTlmekCr2xygdzFXs7gJHnC1qz6j9fS8kQNNUlAWQB
	 g+JrnkPm+dJ6qTlsdvfz4nMUvzwlDjWLlGjztvRY7mByfu0wWI6Ds1J17LAttHozQZ
	 23YkqfptNNzWnAla1VnSwJBME4DYPYWY+mzFhdc0WVW1eF/08QSRLmocUvwaNpsboJ
	 UyNaw8kurjnV5YxQEHTuCePLXgJWdl8odt98X8VzGaCDWiXPJSzxRMnTkQtV9kdLum
	 dfckAEOgYd/2tYMt+CKow6B6Cd/B/opWW8MVJG7iAf2gcGAnql3Gkar4dpQMV7FqWQ
	 4NPZz9LfXGebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8281CCF2D5
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240703374.1105.16839631818625709585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b75d1c6ff8c61a7e0b8c6f549dcb83685b757b7161b99d4f2aa3a2569a6524c
Date: Mon, 19 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792407033
