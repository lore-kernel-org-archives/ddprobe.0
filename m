Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3050E63C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727745354; cv=none; b=MshiNMEXLyDxBQ7m1oiCEkz9J4k+1LMVjMdXyRsIow/4x311w3joUHl847R3c6nDx8rNaUopQ6gXaQi/44aK5XLXLMOeg7S5QA3DCV2iulTWE22p/MSLje9tSngc6n1QlzQyCi2YVuan6t6tIvwwjiJk0jGC7Rr4nTmMQufl4yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727745354; c=relaxed/simple;
	bh=3ZBNPIPR5ShS+yCMQlWOKECj0m1/5Ramnk++W7X3g94=;
	h=To:Subject:From:Message-Id:Date; b=Md7UY4OUN/Qx/2+BM+Y965j2b3R1U7YaiDdrUrGstMWv3vtRPrgp8o+CZkCx9OJrnmY/1SjzTgbT5M95uq0IVfhByzlmMCOoweOBa9hKlpzsNa6nr6Zfv+kmpa0TQhMKyqvCNZq5XnyLWw5Ok8hNaQSXPbTUcKaRh9ouoMNu3pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsjEFR1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsjEFR1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49E3C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727745353;
	bh=3ZBNPIPR5ShS+yCMQlWOKECj0m1/5Ramnk++W7X3g94=;
	h=To:Subject:From:Date:From;
	b=rsjEFR1ixGp2JU9pHkbPYUxRJv0XwezwfopGvrgKj/X5+SoG9NzgWcG0//L1iDv+B
	 AQ49zNhxN6xh1iy2f6Jzwn0OnEHwqUn3tsgmsjvv79aFL+vu6oNCzOJnG9Fpvjchpg
	 ntHHmLEXqNkqNIJjzq+g2fc4ExxzRiLbmvIL5XIAwoZX4ZQLcR6OmBF4JAghrKHBtn
	 +HieoSBzJRrHan4LumRhwNzgCJ17+2P96yOlLIYKNzNzHdzRRw1JS0A4afMpSdfzsT
	 ky7cWrt6FJgf1dZGK8nnMnYL5B/3ai/yobR+CaeXmULdbh+3psQGCMIYCsIsZ4E+IO
	 WpRraFBBQB83w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D99ACEB2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774535363.1878.2742769874813834111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d99fbcff953c4a6450fe1f6988aa1656d0751a988a005cea17c08682f94c5c1
Date: Tue, 01 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727745353
