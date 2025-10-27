Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5F9478
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761538795; cv=none; b=aGMF9Ql84K7G5uIhqW3wsCJKGxWXt+XiU/3rsijWxV4/Dc2D7tuiXMgQsHObHX+GKv2A7mOzp+J2qy8j2Q0LiuNEXvPbpgaOZHWV864p798l2PXxjV0apVV8ckc9Um6MP19VBcp56d0E/ry9hKE3OTgiwspysy2/i0Nq5XNo0VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761538795; c=relaxed/simple;
	bh=n4LfVCZ6nna8qi+ivlOoJHJqkqBOFazPkNNDrXPlrDE=;
	h=To:Subject:From:Message-Id:Date; b=rrVkZq3KTfHBkkeK1ZjTOvGzUv9+4zGzVq+b8W/NDcG9lHAbhLY4fI5s8CppqGSMPfwNBLYRU8DKsMdEkcZlAaxU8ugPensOCOsATkLLQj+IYJ8xAU+XcwFrci+ETgPPS4NU8nDPn9XW5v1drXk3sGTuWAPMxfkS7RlypzQjktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIGv8HQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIGv8HQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDF6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761538793;
	bh=n4LfVCZ6nna8qi+ivlOoJHJqkqBOFazPkNNDrXPlrDE=;
	h=To:Subject:From:Date:From;
	b=DIGv8HQj/IbbdG/e4BdIdtLTL+3g9jf3XVAjpSMz+WP5F/n9V9puWX5lWg3lA0rxZ
	 eSLjJ8dE1xfIUeSoA2LFi2jRsF2MZnrbexbZQUFrhtOjih0mA+nVw0gBouGJ5iu7ax
	 yE44T+t7whg1e9QCz+1bOzoRfXOn1MceFbmkJOSZlp6t39gRvJjaZQZFrjnoXGMpDr
	 qq6PZmvtD6ePx7cRGna0pdQppQFp9RN4tkRaGkDwHRN2qWuNGcd3neczodSlhMz7jg
	 zywJQQ+iw+QAfRugwRlWfwppg5oYyHqTkNG7yBP89EQr4fzUewC5AwHynNnYGEmxW+
	 yXCK177I0Utqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A142CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153879359.28635.17106915862607262681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414fb0ef92cc4c328fa9494b4ced76b3f31dfb8c30d0ac9e75652ebb37909571
Date: Mon, 27 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761538793
