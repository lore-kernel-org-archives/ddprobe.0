Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235743DA5DB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772729694; cv=none; b=uOlUSSoev/ObVRQ2vfBRW07Pl0EvUDu0FMC62KHDD9dZFpAwU3A6qk6PEk1q6SvHjplSeCe6MwMZtWDlnmsslPTddzMCzO461ZJqzfKvzedVWyjQkjLkot0t1q1r1s+kUbPEypIGe4PL5L7VJV2vD6BbSEaakxu5EJrUcVAwBsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772729694; c=relaxed/simple;
	bh=fm0zZfzF03ubKj7FKWJ6daVpR/cqdCXwfGYkRFJ9Ets=;
	h=To:Subject:From:Message-Id:Date; b=qsmLHZ2+leWqGC2/a9LQaxXayOd511vYlwLqHohVrY1unhHrBKbZZ2s0qqixN2+HQNw/1M+OK7NWQ0PVt2dERunjG8ytuFjYgzOhiJmQJd7uTHlx9wN1UH98oyotXZD3/TuH749/e0l2/3EkfFOOCsvVvRViyi9flKqkiWpWwCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIrIDvXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIrIDvXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB59CC2BC87
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772729693;
	bh=fm0zZfzF03ubKj7FKWJ6daVpR/cqdCXwfGYkRFJ9Ets=;
	h=To:Subject:From:Date:From;
	b=GIrIDvXEZw41gvNaGaZp1fPkT01cR1FNH34NagL7I6N2sf28BOWJithqJHtm18xMU
	 BHkEtEpb7lS2uLXTPsT8zl1NJk9SON36bkn1rdCmOo9/iM5J/QsvHtGAkTKbSkNkIR
	 aRbb+7pnoZD2rweMyd3A4F3YxCZs6K76x/K45oOhP4LzWy+MeBPDM+BR3pSDUn0dxU
	 sSbdeld0igBrdMXP2q+GkoJaIETf3zY/cppL8AiLfYUyfkzweVjUvwaVbEefcBQId5
	 Y0js9Udx+6twwoxYeZc6GxH+GEo+mCq9kPJzYkXiZAUl7/Z4HPAzFM9cC4u5bRQsm6
	 ecUEp7w3XhnEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ADAF3D331
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272969360.10154.13058900614074539947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f406ffbdb79d9a10769312e1535d9809945510eaa40962f9f840bf96ed896ee
Date: Thu, 05 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772729693
