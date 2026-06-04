Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B54299931
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780565074; cv=none; b=XP7eyI++NeMwLV20HmqqkZNSnS+1XofsWSiqlASqd4L5qUyT+5OFI897YnHLNTvks5QzWFidxTr3QE1RxkEdvaSsg+A16Jz/KvGhVmlt6FkBYjBxoc8a0uXHbBA9DFLtMm9mV6Wg4gwGuVOWxx/ikb8b7BE7gxPwmz05Y3hh188=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780565074; c=relaxed/simple;
	bh=9TpO718qszMZAlIT3GrAmihdXle05OeRABPdRih8Khk=;
	h=To:Subject:From:Message-Id:Date; b=Y6h/7mTepqlzpn/xrXYQHzFpNm63N/STzjMmGvES7A2T9Dv7WWtTrlXzKLhsh5CfRgdA7u0IO08LyylRjzT9ToxNAZEB6GDzpVLyGH7xYrBg6QNkHBzuOxPSbLxH4pO17miK05Q1s9KKfdSaWWbisTGyTZJiwLxPVUlXFMjkBmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji2yRbTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji2yRbTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F40C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780565073;
	bh=9TpO718qszMZAlIT3GrAmihdXle05OeRABPdRih8Khk=;
	h=To:Subject:From:Date:From;
	b=ji2yRbTs5OyIDWau79ie18oL/QBkwsOqG555QuEqOtDELdYC1UnjVJjfpCGpx0Rnr
	 Iyzx9AfcRuo6rQGq6lPb1Q36+ivUAR/EymsfSuBcUMjlRNa42aFebekD6qJ1iWgCux
	 XSFnwQ48Ps5X3094wZyLwipRis0HU30FannLtEPTVXEOsziTCUsWnf7zEtaMRPgr2N
	 9plcqjppQl3OTmeeCgu7ZFLbDjYUCljT1BFl0lYTraclpzfGoLuTgvULpykg/s+eQi
	 Y6IFCJ25QbrngBex/HHc02W8UItnvYP4cTFZ1NfZ0s/LQPzNMoxv/yp9FLyFyXd/TO
	 en4T1FeUNbbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA4CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056507368.31814.950121122491962456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c42684252d0f7e818d157d4dac820ec84cbcbc0021f50903906fb972700a57
Date: Thu, 04 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780565073
