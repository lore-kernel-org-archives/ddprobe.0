Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F79E3148D2
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758629994; cv=none; b=PuXWcUs57DqBkHoPtZ3bZ67NfN8V4PIBEPB12ZVCpx5AGSYMwYqKj9X/KO0cKqLLsPKzyX1Dt2sg9v2GvFXwq6v0U4g85pT700w/Q7qIxQGkVdp9T4UIa0w65iEA9LKzd35KgOyUY61YjJMGIDGIYUEODsyCHD8kDa5p86xgvXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758629994; c=relaxed/simple;
	bh=GrfIBUDnkjYyWs0k/nyiLdl2HJKYdDuvoy2wnr6Mqcg=;
	h=To:Subject:From:Message-Id:Date; b=ZcaSYu8Z9penqurKZfU1hPaRMXcf52tEEXUiXbZTDS3C9NnWaKoRyIuBbPDYbGZXRDNEjTDJZj7rp6APLpZpLxwSgliZoAhGbecsVYYdWqTryABxfUtc6xElGmZvCBrnfGcJIg0A4Jt+dP5mVbniaEEVd5esfiZrmLFcfz3slcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EulgDQVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EulgDQVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758629993;
	bh=GrfIBUDnkjYyWs0k/nyiLdl2HJKYdDuvoy2wnr6Mqcg=;
	h=To:Subject:From:Date:From;
	b=EulgDQVSqjqevtioR5tJ/pmPgG2SDR9jt6J4ZP4L8LiLa8tmFIlIYn6YScvKIJCtm
	 buZV8PB+Wg0mSkUWNF/+2PKUL/cpFx8Od0H0I6S8t3PO34SYniIwQgHgbzgPpoTe+r
	 ouDVGPHnW/Q0MgxLZmncrZ93DiaKffFI04DjNiFgh3Y3FMH3A7MHqpEUWrv1J+IRd4
	 0gyHdmQxx3KZjtCQC+YHsBx9a3ZXSo6UJx6ewsbNTEqHMLCPW/xStvt3+gkvfX1F9t
	 aj4Tq+dBqKriQcmv/cCloSJdggObj2w9QDkEHylVZvRtai0Ib+59FBWKEzhkQZwB/Z
	 h5eiAuWj87Shw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862999358.17281.13929252155996818451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffe83deb3cca5c5856ae6d06d76f201a68112944914c9d1c04f2759d7971e6f
Date: Tue, 23 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758629993
