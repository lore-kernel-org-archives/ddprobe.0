Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151A245DF42
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790546435; cv=none; b=o1jzt15QtoLhuYCrAxD31fXXMpXd6J5fGXxhfbJID6IhQB5r0NA2nRQ1NBajmOpN2eg5IKNjX/JftBuL5Jv5Ika4Zf5Ql6Oj6478kpGzNOQlqrpwMpdRp+vF5tRQip/f3xuPpHyzbxmoY9DRWG9FGeL7ZiKk8KWYO//iIYyufUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790546435; c=relaxed/simple;
	bh=qz9Y9uPfJd7k966XOgzMgvgjWZY+OL7oqyO07ubQ+fE=;
	h=To:Subject:From:Message-Id:Date; b=OrGfZAjBG7nQ44Lcz9zquWC5fXAm1rH9DrvYVlMS1oBvX4Qsr2JFflmgVs7GmKDTQ20hUOqvxMuNlXJbOv0NDuWpC+fwIyFUIorTIu9K66L22AEzgI3p5seSkZ1oG8eBL/UKHEzojywBSp/BzrjLKd0iDKLZ7U+NNmIHrOqA+tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq3Wxaal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq3Wxaal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D683DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790546433;
	bh=qz9Y9uPfJd7k966XOgzMgvgjWZY+OL7oqyO07ubQ+fE=;
	h=To:Subject:From:Date:From;
	b=hq3WxaalEsTS4FL+oCfphjnIHig7COUn5rYHTzuzg6HskMOjQP8++5eHsojEI4BT7
	 nMfIIJGfWCCUSqkqSHy0KrQ01yW6qGGHEEupq9UATqnRJqKADAwiVeLyftb9sBLvRG
	 jBtyOkpa9KZiuGootTBXpbwB1ZDghdURYJNXTKRvfHge6+GGfM+kDhcqQt5FrI4ytG
	 RSUOzjMi6Aa2O6vBsQLvShfCkVc1WSPBHh0FP1Z3nmyFR2agAVnayEz9/5FzfqKMKs
	 BAG7mTYK1UzfEkZi4o6L/8vVEQrUtvJS3sDI3H0QmxnRFXvFNYLk2B4UtayXKMV8yh
	 QANnCFeQDi2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF668C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054643369.8965.2349085774048006927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1195f770cab9fbbad0a9da222987817f6fe3811104d95011c24811d33ea29126
Date: Sun, 27 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790546433
