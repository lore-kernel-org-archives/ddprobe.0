Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE1E18BB84
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729088754; cv=none; b=Dv8VoQsSsnG46avIS8wZcMlGA5CZTmnG+6AwtKRGDDHmbJ7hQbNvVyn/yZtLFMeHCBK8u8WC/8P+K4pz9uvms+zD9QcLAOGXuADjoiEy82F8kap3dEZQqS1zJAARsOCo75SKMxtoGhIeZAXGp8/b4LXxyH3HKX9TlQOvnKVRZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729088754; c=relaxed/simple;
	bh=W1byeAnBzp2aXm3jFGN/P25p98nTVNtvxhj9AzGl7us=;
	h=To:Subject:From:Message-Id:Date; b=YTQxK7iJTCmLZcjsaXmQaosvg0JdUhP65MfMVQaduido0syJ7H1jCKMY02FPaRIB4ejId8IDpLPnnb0V051KsPfRWpZNJn85DeuAbSCi5cxTW92OePFiBa9JvprfieQuOtz2P5xDrt05Y5AbVpF8Sa7aRwaVMaUAB2GdNovPc90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQngPE3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQngPE3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729088753;
	bh=W1byeAnBzp2aXm3jFGN/P25p98nTVNtvxhj9AzGl7us=;
	h=To:Subject:From:Date:From;
	b=gQngPE3inFQMyHuc9guQ7CksNtcM/PNl8vZ0wBq3IYGaCeuJ8S3xk6OK50gyTb5+7
	 3CBmKrG2TkPSVGAqhqKTAQVOZuS1NY3889HxS62UB3+T70zllYeL0MUdgbC5QlSgVi
	 Z+wLhrf13VI841oiZ4BUXOLQfoteoZ+RDO8oV6PCB+dMlbdkyIEIBJoy9JWf9v2lQn
	 5ZBzIlxalLyKNsuoTIJu+a2I/kJuLpjrv2Scvx3pVpGaWYv/Jocy7HQnlX9yO97npl
	 pHYHdqyiuAdspGfWBe8Vi88ug5++eM90bZGzM+hWQL9je1rFlO+FG6JpjpAA6N4cM7
	 mPiXKlkWwLfzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98108D2A520
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172908875358.29037.5669674506965914769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd88053b771ac273c45db118af6bf7556b68422da3d9dd3eb4d6f7c983f8e35
Date: Wed, 16 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729088753
