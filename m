Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452FA18E20
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746238794; cv=none; b=O97CVunbZ5iSrfsfkfoqnZ/1dXBotmPhFgj28pqHvue81QH8EouoUCzz6Ja5+47IkU3dvZhw3fAj8JYcFly2MLGmrG4jnd2tWZ4MiTtMEOYXWNL969ioKSSSzvYEYk4d8lWyKY6dcZ39UNfQ8uTXDX5ZCvbC8U5HPGA57C3UP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746238794; c=relaxed/simple;
	bh=5B7kA4F9hhL/wcCYfR9W1u/J9nIpjJ+TcFuupFrBwE8=;
	h=To:Subject:From:Message-Id:Date; b=dwUscmSQctjvt2xnxKiPEP9dPhZi02s/BwlAgL+mFDokaomtGJcAIYfkb1PlQY4P2jRGdwqj6Pq0EOcEC2CLdVDLbkUc5KREgxFfrbz9ulHwlzFRdeJ/Uz4Vc8PlUoKz6MM7ETP1jqBW++bBxdIrXAaJXNyxAM7fulnbaKrFATE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+g1Yf7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+g1Yf7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A35C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746238793;
	bh=5B7kA4F9hhL/wcCYfR9W1u/J9nIpjJ+TcFuupFrBwE8=;
	h=To:Subject:From:Date:From;
	b=W+g1Yf7kvcbMHjW2DmYQpVWL4qfxev3ho5VnEUyTRxpkeHQT3s63uBfaAkS0UfL/W
	 a7W/sByLnC9GWVCwty0xCerbcWhCPX1xmeFDlmqzf440IvqpOxEnznxWrjFO9F68b9
	 3Cp0KzVN8KO/fCoalTwhBoV0kJuyScLpRe6M788Ka2GG4Z6zVuqYaHXUfsfM8AkmVQ
	 9HJb0OU5RhHGyG47vO8/9B6P0NjUJzRF1+idx6SkVyg5P0+r52twgEwceOjnSOPx3f
	 oOVBN54ezHsciRbHrKLmqFiZqrdP6Tuot+PxWez2JnJ6jYB5G9osGdkzir+Cb5G7Mo
	 34P78OW0OqR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DFFC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623879358.30480.17439545877210037081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb1e292ac6b1bea046c9d23399263082bda44bbbfd0d4e8b61dd9cd5967cec3
Date: Sat, 03 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746238793
