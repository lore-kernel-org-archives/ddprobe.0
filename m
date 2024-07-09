Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E8B187878
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720563383; cv=none; b=to9J0bMjVlWkuL6ThNLO+/yM2ve/VyiawaZ7RL1t28UKx6Qt2YhBXFwONkcxGPEUUrug8nUtf6COTphXHUDCPG6i/X4qanbcZo/60OlVn1L9xTm7q+j3wXvFQ6KtmAXbI/G5yBn1Q54xI9T6xCi4uQ4HHnDLpTKxW6+61e+MRe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720563383; c=relaxed/simple;
	bh=ugq0w2we8q3OebQradUIyiez6oVmO/s6aJM5A9R+/nA=;
	h=To:Subject:From:Message-Id:Date; b=M+1Q4iw0FuQoKTSKE715Ija40CaQa7KJ64N+0fvaLsS4h2t5bKw5d0OC7WYciXdhzNPdoe4fQ0MpM3pxKUaTYQyisMZ6/IHmoqyghB5Rj5xACQr0pFVOIOusM5FONGULOD7f+vNQWhwZvZ7sMBNl8yzhzrSuVJmbb21VwiQ32r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZS9g2H3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZS9g2H3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8817C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720563382;
	bh=ugq0w2we8q3OebQradUIyiez6oVmO/s6aJM5A9R+/nA=;
	h=To:Subject:From:Date:From;
	b=FZS9g2H39ON2ojiq2Qn27eRTfG+9WY6XSIWkXET56re/jwtdxHkjcG33v7jxShrTQ
	 ARnUGSKTsq/BdM0++mRLUHs5JDCDAf75Q7p8s2RGq01kHHTXEOsfqTI5aLiyIxSGup
	 kP0J9vA0JyXlyI/aXYqWjGUZdmGFPN1R1gMAUdEjCYZ9UiGmm/t85m4ntMMm5FPN1Z
	 7OZ79CIyr2q36/cIzSZvUtmr6DO7cWdQExhOyqS6gTIBzgrqLA6cSyDZSeKHNl/7HV
	 OwocrZBZw/QSODMLl77aY7FLlLexwi8+TinAz4zMFpv3nHL9HxsoLUm8LTGozSzCy5
	 lar0jj2eAmAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19D0C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056338283.3597.10736005792880268036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5530ca6f1b5ccb8fd8bb065382dde0cfdd9016187ecd57c4356132525a86750
Date: Tue, 09 Jul 2024 22:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720563382
