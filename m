Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0933AD88
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781339794; cv=none; b=tn/z4ZcsTmd+PGlsVjK3P4j/G5q/TRI2HuzKUgku+5KTYcMp7+S39NA+ZGMH80bJO7qOYfQu/vfLKDZJSG/uvM5FUMstrkSGiySM9pu/TwhPk3/5DfMmE8KfMPlS/zi6Wf0fwStAsx6S9oRJnqON0VLSTlvoJIlSspVdov7mRZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781339794; c=relaxed/simple;
	bh=zdXWYO1pARMa9Uus6CVohR96Fy4kmjxuFBLIC6F3zoc=;
	h=To:Subject:From:Message-Id:Date; b=ksCZYCAtN77xEzZ6fRUPBUqdosAE4+TLLsadimW3O5Dbd9ITVOU9IhN295xEr7z9l++FvXjTsev+k9zzDXvfhxX4a1yn+3znbu6XfX0GLKWv0WtcasrOZaHR1iBUZ3kwMlWpWpwKsNKiAOSQdSgNaMsjdIcS9rDkwuysBbe3k74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5OMDywI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5OMDywI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC8AC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781339793;
	bh=zdXWYO1pARMa9Uus6CVohR96Fy4kmjxuFBLIC6F3zoc=;
	h=To:Subject:From:Date:From;
	b=T5OMDywICMQTNLKLl1IjZx9XyG9MO9nLzH/eSh2UQkd0UjgE011Dmiri5OR/5bEjB
	 qzoj8xkRLjKKZAzG4f+4W48PJTAqzmTerXzdz5XNLrvlBttXpCjU4ZU1+6l+WdEGFS
	 hqFMH6sSIC7rzclroQTNi4As+uzHIKiFXT++9LYLw3RgNQeDtPOhpTkiclUH9SWude
	 Dq85b1zs0OSRgBDgPCZVwmpRDYNrk9hajO73qvZJsLGMjDgfmyfZlJTNCtmn3uPnA3
	 gFUBQJV1zo1fRa57HvOZ9Gns2n2o2kcDX0GdLs2qxNn0ycz7V+lqgautA+6OdA2MgG
	 +5HFdNOQMe3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7748CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133979367.27706.3627919555893088454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e4b1b5b62684389e2e65d3de4bae796069ff5b98cf7f9c73e12626aa48a0c0
Date: Sat, 13 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781339793
