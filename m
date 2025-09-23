Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1904E2E972C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758671394; cv=none; b=tsq0xsMcdM/fefSzgU0m4QboUMGhgHyXK90/Bb0PJzwiEcc2Dqv20QE6JuhDfM+hFJCVJRnUe7Ev4Zk/fcJLsKk6JKso278tyd18CiMseXeFND/RXSfgRAFWvGNkPzkOHzQ1hOkX3kX2xGU6I7BT4b1agGsmZapKgllP8/BpmLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758671394; c=relaxed/simple;
	bh=cskFZSkAXDhmCAJ1Ma13UJ5m07b+1BtnVA6bWM0Co8I=;
	h=To:Subject:From:Message-Id:Date; b=E8JxVwHZttOSuz0x2gK8zXd9miRCKmSGX9WNdhgQEdPojk08LkT7bbvoLFnX/oocJ1KAZ40WK3EfwuA9uQTuWE9npXEiK7zMDCrvajkefpRQG6PN+bIwDkPsClxCtHoJzyYyBanQwXRIJEKg7Pgms1cgUGE56kD98vpM0yy//OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAzFdSf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAzFdSf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758671393;
	bh=cskFZSkAXDhmCAJ1Ma13UJ5m07b+1BtnVA6bWM0Co8I=;
	h=To:Subject:From:Date:From;
	b=jAzFdSf0/qZaCqDMD1M9kMByWKTGfj9ziEEYaTJXMyuc0uXuJ6oCMutlCHI9F/hWP
	 9+5y/zO7jqLXru8IWf8N135Hiw1piAYiargfLe+76RxeBvGavPqf89ZBpmo9aoXbhs
	 pkukO/4lCWN6ASVYaDUtyQ0HJDDhBCt2KQeMfv8g9caYkFCsYdzJPv9BuVbre26q5V
	 +vDDiEa4/CdWjqrzUCBDdK5ofzKJwauFozavaco16ppvikEeSG4GhIUWZQkhtI4dwh
	 ypYqJG0oWxhszyM1L81H0PKa1vz91CmbniH0lQO96EBOJHEtR6rFvLWZnJGWsCkIHZ
	 07VHYEkVuC3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F1CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867139357.3855.1362459968581245333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c45df7c7a11b06d383796fd2d1fdc1d684f8b6acb2546e8cd6afe66b6dfb27
Date: Tue, 23 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758671393
