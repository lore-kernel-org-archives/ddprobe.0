Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2661E2F531B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750209594; cv=none; b=XBYRdSA8/tPcbsSoxV8scb/btPKPVckrkAAuKJHPQnVeXQ/ZS3uBwgsFnAt1drG2q8+kQZ+KEencKHZgEyPgYN5K7EHaTSNpAisNSE4FytgDFWtakoG47hSMcc0y3V93iqwwB7Xx661JyJEAqonFt8+DQaGz6kCSvGhHQAUIX64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750209594; c=relaxed/simple;
	bh=SD2ziJe9U3rmb86WseLBI1Deeu3zjy0dvIfXziGYiEM=;
	h=To:Subject:From:Message-Id:Date; b=hxQl4bxYldMhcKflo5YWTJTiIbFZySFT4Dm6bZgA/pHRvjpuUtaqESKOb13GX0X/PXgtM95A59sn7euHnoJ6j/Ap68wl+IdqpZLEa14M8g7Zb1svqUDXIJeS3yu0Tz3xHY+GFpfz7KgTSJ2n0DcXWCaOw0U/bY8rzhlDBT1F49A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM7Ird/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM7Ird/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750209593;
	bh=SD2ziJe9U3rmb86WseLBI1Deeu3zjy0dvIfXziGYiEM=;
	h=To:Subject:From:Date:From;
	b=PM7Ird/3uf32F/IkaatiUTCvpkL3lPRZ+K1NRmD/SULcDJRKlUftw5gcl/mOBQFOn
	 FjkWmTbY7X5ZeIQUEbJFukWy+cMxHsU+JqGNeSNFUoAJbof2kGNorqT7QHnf64nX7i
	 BA5hr6tmwfTA1MvS5H50kFkUpgRxNB07sHTanWktOWm4m09uwCH4AmXL0Cnb270YZt
	 a/kx/yONObYRZyi3bEiW91KBQzUWo7ZOiTYFQvKBxvGLrK+YW8qcwjEEm9xMTMfI7f
	 emkO2RP+VSuLQ5s33XJGQ1I3+7Eop8TrfpfefrsxFIjqGlanTsgWshJ8PhDUtxku3H
	 Kdm+qAvZNOeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E897C71136
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020959357.14831.17561879251774877055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb9bea614ad820d2b682500cedd9a095b9c46eccb60f1468c060d56df62437f
Date: Wed, 18 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750209593
