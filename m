Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7732336683D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784547514; cv=none; b=aGWWnosR9mKjo1gl8dWC+EPV+XH7DvgG3nlE4xcN/K69jhZNSnU/LmcKZvSkLudUv3jhhUK8WwIaivf0EMhU177F2V1NaPp8BhjLSByRAvycgV9YrrDXwIijxT/4UtQlmUTuYRkZWlleINAjcIk3RsOWYW/fgEwguICIIB4tKEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784547514; c=relaxed/simple;
	bh=TBnXr5PVsOf5U5hvYuaZQR6WVChJd1jpU+EKVmNiBYM=;
	h=To:Subject:From:Message-Id:Date; b=Pf5tjD81MP4IX/Btd25Wd24cdGovf19crz9Y5TQa20UWsKiygu5AQCudpt1a/ug6XELAbE05j0uzVdWqcySXmKq8u2EGB4bUxD+zeVy4IADrf2Yij9Y2tH4sMlfODOioAKC2dgKxwqA5qOJ6Hc07yZUqak+eFdN7fY5ZwcS0vpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRSjj4y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRSjj4y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E114AC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784547513;
	bh=TBnXr5PVsOf5U5hvYuaZQR6WVChJd1jpU+EKVmNiBYM=;
	h=To:Subject:From:Date:From;
	b=cRSjj4y4yeHfgB5NsynEklxwdKo1adKrDTqMRIbbWhBo+i/Fg3fmQ1WIygM5MmYZP
	 BR2vqktjJqvAF6Xzj/8/bcWCQWHfPcTPVyFwm3/lRtEu4c6m1bOgxNCby/Rey9DCRx
	 GcKhMcvA/AQ48HdjKhszWlKLkW1I9EEZDPbLirQqaPgwK8lbaegU9AiJRdqNaWFWYY
	 +5X/ZQxgXqUnKsVPF3k4UK08T3BxPL5Ik0zxTSe75gHm/e/U3shHfuRlCNCZR0Em52
	 r6N1dBVYE8Ps4GiNhAyqe9oSxvLO+rpe6bwChWFoqB0NFKaD5BvSXkRJ+1D5c8EF6E
	 Cx/WjTAzAZs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B2DC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454751374.23242.12481256151315277404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ebe6bbe486b3dd7b69605c2be0a5f1011e0f98b6c8a71933d415a3a49d726a
Date: Mon, 20 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784547513
