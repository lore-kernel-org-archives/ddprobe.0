Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AC36FB9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751210994; cv=none; b=qmgPL4KFepqwDLeeKo5kj2deyPc4NULMg7ow6LovyRbzcnqGN3GLgjv3IwMnVr4vJunQ4yG6eOPeacmQC6AJN+2jCAsBFR4k1lqkzNBfNivTK0T7v9HQMHVsY/1DKF+SThsQBqnwkV67DoqVbImwD0cHsSqgGEOfSBnfJZVjRjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751210994; c=relaxed/simple;
	bh=dnqkR8SKuAnihfrvMvzh9IAcBtwRJMMxwnQECfMkgA4=;
	h=To:Subject:From:Message-Id:Date; b=jzUddwRM1QznlQQr6rg9KAfU+/jPX3ysHgea0Y7vguvpSArn2PiLM1b9xNhX2V+5QvjvdYtpOO6aaEey070lzxQFTS7d+VS3mpm8/PDsffLETR3774jCNcVEtDP8L/rAJ8G4rYuiVz4msXUwnjg3tECnXusOh9YWwWffyO8AumE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9QksTSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9QksTSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A490CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751210993;
	bh=dnqkR8SKuAnihfrvMvzh9IAcBtwRJMMxwnQECfMkgA4=;
	h=To:Subject:From:Date:From;
	b=D9QksTSEAdHJs0Z8UQwmJvrestlF6taQAmbvb1NHCDOuiB4i1NGeAdH3PW7oR2tba
	 yZc0kYliLq4aicPxG1j5sfuKN1+bN1cwR6qnq30rrUkStyB87u55AR9uHUreAd77R9
	 WGUyJlGxZwrmYgfXXRS5tldKxyNFoFXCS6pE1YLXNH15rjaxtHonQlBR5VftuxA2zF
	 4AynuI4qyZ3bobsnfqi77Mn5d4PKuWtt/qCoWuM8gtizHkpDVtbu8yOkxRyMhasBak
	 a8ucWioGD9zh8QU4mqH7a7hFbXMqBbxJEU72Z82BratmS3JJZjP3AivI20celefmmz
	 OQxmYFWaE6vCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92010C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121099357.19713.2718978415830272865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91370957b91948642fdc755602a250706bf5fc05f6955d1274a1bd4f908ae100
Date: Sun, 29 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751210993
