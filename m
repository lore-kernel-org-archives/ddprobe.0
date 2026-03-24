Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB8B3BBA00
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774347894; cv=none; b=QnGii2vCF55eEnr17Knj/PM9CzhGidVI2am99f/lewxYUSvHuyBFrbwZJDH+i06O9lN4PUlDJj7T9nmilF3Wu90n18KLHVvvyPgM5/HadDkumsC7syCQj66rccqUDUN/mXGB2CHq2XkDegufQHQBdVxOunRXNpNDSGSjYsloBc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774347894; c=relaxed/simple;
	bh=LixSKN4IG8942X9O3WgMzj0qvcSn6G7wnwf/U29dHh0=;
	h=To:Subject:From:Message-Id:Date; b=apNXTw9g+3yPMkgGgV8wzifVj05oB8U8Ip/NOSRC55YntQeXksleSrll6skKiO11Gft70YysKfSgfEi3MOFR3lyBQihXhX2ctwGtvQkP5UEAwGfzBUbeixbAAnO1MOA3q27vDYzm9Ls6BAli7r67iM+YHSAt/A25gRI/2OXm04E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYlNO7Ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYlNO7Ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB8C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774347893;
	bh=LixSKN4IG8942X9O3WgMzj0qvcSn6G7wnwf/U29dHh0=;
	h=To:Subject:From:Date:From;
	b=QYlNO7MaHyHE8y0nt3auPvOLKeP7si1u9SskrXUF58cSAUUUFnTMoTZEq1mNRuHrX
	 pJErkfWaL753G9KBWAhvCIKtDJ8wl88WNQqKG9WFaTRi7VBtxwMXysd+gBYtsGZr69
	 GQ5jfRMTmqL1/vgu9J1LMwy0uzZQ8dU7VdIWxfEuz3GxMcoWSQFKIbXSlGJ/E0HoPZ
	 Em/kYWgxGcHHnSaBVDi5kTHvfB0MMt3obO1gUXjZGi0KfDFDDGMm4lp7yXBjUyQuVt
	 lYkD7Wic1suTCwrqs4xCCIORMpvKQxkG9PVCB8BMRSX5w5YJmk5WpUQ2nnjDIMucE4
	 8L8VsqaPVcJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90470E9A758
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434789358.10100.17211546527765166247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece2ab51fc6701812d29b90a3705764dce89c1a433c5cf1b095d8ecc62cae12b
Date: Tue, 24 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774347893
