Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B3F1A238B
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739740734; cv=none; b=ktRXrIZ7S4t2R//Veg1bILJNf1mYLJbLcYSiNl+tWSvdeTZ0qPUWT/U5eDhHkIxb+8sub1vGiqtwvC7OQoygzhEZ68KOiEztfCDEhvBzdgJfwDlHbw7Ua/AncUFhl3PPmsF9LJfY0LLyf1IGODSGM2A/KjoM7/LfSONv8UtkGvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739740734; c=relaxed/simple;
	bh=71mEGfTmITZPUJ2siRCizG7aw2BeHnE2wjSOUfLf+Sk=;
	h=To:Subject:From:Message-Id:Date; b=XOpo/lPcZ2f2QPMp6YKFxtQvaOMwEkX1fJKovgiOqq2d3wG9N3wLxCRKbg+S3SoGkNaRevVjJa3bS+7ITQk+PorknzEdbnx+TCVR9pxm0SFdSZU0wDF82eycayY6yiXGrW33hhWhrZGtfBcFvrICcKUChNkHk1hejkoOj/2xNUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds16/0fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds16/0fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739740733;
	bh=71mEGfTmITZPUJ2siRCizG7aw2BeHnE2wjSOUfLf+Sk=;
	h=To:Subject:From:Date:From;
	b=ds16/0fWJQkW7XEnKPZo9DUyhwm5vMr9B8f/wC44pOEKHcBKCQCm917nTkQF+JHP9
	 P+doVcOArrTjtBwM8nG0YvND7nMGGMoGJKIBtFwKVD6lNMW3tpa8IPzN9ch/QOsfrx
	 UIfgHsOL0gihoSNLU58Nnevh81oDqaKi7S9D7GPqC9f4evCfdlav2217pVZfW7Yizi
	 yac+Y9tC3sXiE9MxelSHG08bGMadaiJGM0PaGLDqYkfdqhIW9B3exDp9s99vKyf6v5
	 dvtXq5z7rxLdXNkZCjjd+406jk2XTe9MOpTQAF2nvh5PK7j5Z+HMNCN95Dqt8U7wsF
	 v80k+2G7wF7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D93C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974073364.24069.11519211723521089802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb91fe05ad72a48e490857ae5e08195cb1bafabde3fae9caa9278c177613de6
Date: Sun, 16 Feb 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739740733
