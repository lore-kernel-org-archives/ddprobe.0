Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEBA4C76
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720831163; cv=none; b=SDoOQaT8UNI0lhliVWUFnQGzJaRizpIIj3HRo02ihPUHgWB4gzZkB7qziDSFIqByGHl3Qt0Jz0ZEsR9K5Da7NLbVGY/e/+v6B+XFBRLmoxIvCceuTQabyH1eR9dMrNKE7EoctKnJxAiZs8rlK8NUe80a3ytHM5ykXqt4AsBs+1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720831163; c=relaxed/simple;
	bh=p2TNk2gFzAwQJuSutjILHHCN8MfGTMhjdFXweblsIyk=;
	h=To:Subject:From:Message-Id:Date; b=AQZWYs6VOLAfFbXNdbu3idqtsllrhRXFMYrVFZ0Ny5AFAu15KPt+jiqQaiy3wk0D5pGIiP/l8FCrLCcD+6Ed3a7OVN1L6XEG/xI0Wh0svCN8+rMG7UrUzxCsNKg2A0GaQe1E/Hi29rWdPetnUkms8hD1kUbhOy7X4sIgaRvgNDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snLQgU1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snLQgU1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BD8C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720831162;
	bh=p2TNk2gFzAwQJuSutjILHHCN8MfGTMhjdFXweblsIyk=;
	h=To:Subject:From:Date:From;
	b=snLQgU1zgqZswpU0PCet+Jh3gfRIBofj/qJYplNUWlHUspWcwB0FfgpQ4LLRb1rH1
	 cDh2ZAWGZychG3JPrU70DkkBpxpqTBS853BKPMBygfjJTk9DHuhy0mWyRe3WgFfTSQ
	 9mc4AoHYogGGxlkJNHjE73q0HB2bKioT0gjVXlVqfd7ApqHiLBtABPbnwpWH/PTRMs
	 F574AhPRH9KBySHnIvzAeKWaZyEgaEqCS0LaOCqn7DKd5iQHz3CwsBrMzZC7eS6UE7
	 9cZlGNJiYr1pYPQ14lrkdDY70x6WCEGROscWA70WIYcHHaRj4uSL7vr2ImlErX1ji9
	 Aci+yHgBGVSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76B8C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083116280.1702.11493524847780418882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1647164fb91e932e8e80a37e088ef4c60d332d62c5c7bec58b54c962dcd4179b
Date: Sat, 13 Jul 2024 00:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720831162
