Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E70263C8F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777754854; cv=none; b=nwoYHm0QhsHBHKg9aTCdGv6ZsZbVfMXtfz5HvBtc2w5omDX6U+xDpFM3kxLTQ9HH68sbGBe/q/dDN4jQV34eCqOT+m4/Ah9h88TT1Kz66kngBjsxcLS3KYlAziNcL0nbQP1AmOtMv+lhUZZodF/QtaTQtgCimupwQSqupMaDTyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777754854; c=relaxed/simple;
	bh=61uq1GCLTUHVD+jcF2raNJzVvctR0PRvRCObwCBO0KY=;
	h=To:Subject:From:Message-Id:Date; b=cm4e6aFR0lEeLzmcJCM7/Pe/fCU1qvB/QnDE20xYOD+akYBwHpxP4JOAqXpI653FmBVFa9qqWSoFAvoyvKGPYDUmu2gW7BM25jcgqxBcqxAaRpLrR+qFeyPOakaGea1gjR0JaG0oKqL7XqgwlMSlGx662o03LZCbFEYS+LPez9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBSsYSL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBSsYSL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15D6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777754853;
	bh=61uq1GCLTUHVD+jcF2raNJzVvctR0PRvRCObwCBO0KY=;
	h=To:Subject:From:Date:From;
	b=PBSsYSL3XvYGh4mgi844DqAFvigFg2o4kezsatd1kYRvioi0MrEVINjsITPDWAojc
	 h2XEqOPUANhRGKQSKNzfEJ1tB83yhrB/yv2ru6xWtOl4x2zg5zoJmVKvGXsdB/M3Ix
	 7f8Z9zkL2Jkah/rwKwxCKWJy659WDu0WqcBvDbKZywScoRoRyaekdZcZUieNoA2auQ
	 Ru5XAYXOmioWNcui0yisxvhe2tJhUoJumij6VBEcC2eonngs7bnm/ottfB14MLJLPp
	 q4BAajI+yMkVjTXoYIMImHDXsas2GeBrhmaSQwLDbB2/oWyJemKuYa9AHG6ycLiSNZ
	 jbb6WoXNPauIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0157CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775485368.6357.1640249716334589590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4dfb87e15072c14d147f5daf93c94ce4b756a4c501c3702ecec5cbec227bb71
Date: Sat, 02 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777754853
