Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231241DFFD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736303154; cv=none; b=XsJwI8cZhVbsE3uPokTFdSq7EK9vnxEeLqLWHYTSJGTqlR6lwiKqio9AYsnH16qCwBUzg07Tzhtsn7uj6vr9/3Kh3dC6DVLEdH7cxY6JPpzwceOJCkwg2FTtA5VmlhIYa71n9fCadtuxoVPSUp6HI1V/UcNB9xqACXjcwI5Bd9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736303154; c=relaxed/simple;
	bh=Z/wbOxYPoLB/80lxosWtpCIgZZNUjHU5LA9Soep9ugw=;
	h=To:Subject:From:Message-Id:Date; b=JhSSk8wRAQ94vR130Eyz8BW5HC8wv8lguPzacu8c4vAqVmorRtjGFKxDItR5Rkgo4wrabMVAf63nMOSYPw32eXAC5kewKmc5s1pSNLMz75jjdKGYg1AI5uWrEch2/TyQk87zc0ET66gKPPz8M1Iz1m7ZfedzHVijqxaTSSlA+6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsrCSqpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsrCSqpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61AAC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736303153;
	bh=Z/wbOxYPoLB/80lxosWtpCIgZZNUjHU5LA9Soep9ugw=;
	h=To:Subject:From:Date:From;
	b=OsrCSqpPYcxBlkCILLIca6R8B9qIjf8t0rja9XioE+D3nyTI/032lENgYlq6wgv47
	 1mFClb2DUdtx86idbJEjuqfoLp1hYOeTmXdHwUcp4tcmCZEbWh1W1kWyvjPOUCkP/u
	 5auoI61H8JuacVQkkoLs2W1/aqAGEp7QjHR57H7w75HIhNrj0HJgZj+6qUb03QNJh0
	 ZXIoJ2mUleOohRLxwg4J6aqb4BfS2VW4zrOkXA6AJNzpNkEv6/6WFv4nvQea7d2r/Q
	 bgOgdTmKnKmCWhaupAE5kvZ9wFumDWJfDii/fmhk78zvcv8gItZGNpgifSK4wxwR3e
	 x5nS/iUwpq/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192BE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630315358.9145.15266044084510998438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4650da61fca47430a80f412cafdf77eb4892144bb5397c5b38b155fc291b85
Date: Wed, 08 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736303153
