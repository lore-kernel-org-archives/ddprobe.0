Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAE121D3E2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755332994; cv=none; b=cmNUtHnkBFWyjr7PWVB8ES6S8+mG68+zuhrBtbL3m1cqoAQcrRXhy3eO1uSNpjvowoZ9E+RoXu7YpDEDeBw46ZGAPgSiyvIh8mOSizot6CD3xNm6EQo4/XkhU/xOHVXN7dZa0TxJosh9U7TT+5tpWMzxtXbVvgZaGqQjsuvG+yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755332994; c=relaxed/simple;
	bh=Fa4d9A+XntXgBl+wrEWHmPpvQE7Cnz7y1nqfc5tq7SY=;
	h=To:Subject:From:Message-Id:Date; b=dFT8YNZnhwhmS6eN0evARUd50esqwszCFREG4LNRak/VPDZ90pKjqaxuh2N0g37EdaGsh4ahHsq/NgziM+wwiZGbrLGlixAHvzJpNkO8s1B4Lr2dhghEDpi00tb1bZ/a70Rih2I5R13BdEidGYyDZxdoa7wennLZFBAZWqAnof8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyCNw/zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyCNw/zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755332993;
	bh=Fa4d9A+XntXgBl+wrEWHmPpvQE7Cnz7y1nqfc5tq7SY=;
	h=To:Subject:From:Date:From;
	b=VyCNw/zqS5uYSdwD7YVUZJJQTok0T+YNHkej95bv5z4B5QHNdXSOsC1WxuVL9E6/0
	 HLrrwVPWgSZnl2+ZWoh9GAaRHbct3I0O+uSpJ8GQQ38Ld9BIq/TWwFzTpsLo7Oyuuj
	 oB5txwkbAEyVKNk5t3IGkM22IlS83EfR8nEcKPl3eM2yKPBHSWzcVrR6KJEDeZAsd1
	 Q3rSsStoMsFIqQ2N5oNQZm/uRTszVRY5kJanLh8Asy+F5teZF/ApCx1+V5uoJCq5RA
	 AbdXf0W+eYU1K2Ae0Adc+/TFl3UNGOmcdGqjNtWCcw1R25NO/qqhFMCssUz9TYGEUG
	 6UJnvEDUJ4TXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176CCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533299357.10753.12714871437891964675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b81ed636c133ffc5ad2885ef732ffe7cd7e1fa521f11dfb6828836e2788b0c1
Date: Sat, 16 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755332993
