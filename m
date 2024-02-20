Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DED54A3F
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708400297; cv=none; b=tFhaoCHkmYSq0teywFIpejKhvATJ+HTZGVuZkXDDGpAhB0NDqnTkOyRMC9brpoLwbelOToUzoMMKqOQEM6kYGofulJPgM4lfZFQONg1u1iZXyXNMY1QFy6etpZky3glXVwNZMRJdaJFTiRQl4bg4OlkKmhCM2wtV4faBldvzvr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708400297; c=relaxed/simple;
	bh=12QJI86v43XhvPKxwTc95D8TUUE9vMMULtbR5BVBbF0=;
	h=To:Subject:From:Message-Id:Date; b=A66sSIqgRBDBocrtvzg0IzldydbE1Kgv0No27C2+twRCr53MqoafgOIf9ng5nNqdD1BWvdFJBR3ekf+LEqywXlyhJs/PDVF3EXBhlBnQrHL0pDANKCwizGpN+ULzt1tVvMU6e9uAMFJ/CgoL+rJ5s7gjZGdxYxx2EGHtsmVRlHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyU4s66b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyU4s66b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B57C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708400296;
	bh=12QJI86v43XhvPKxwTc95D8TUUE9vMMULtbR5BVBbF0=;
	h=To:Subject:From:Date:From;
	b=UyU4s66bBSI9i4Kt0ZPLKuhgHuOANfo/xxo4Ex16DR7bSR1tz6yyCk7ngKkGaphfR
	 DEgp6GbshTPhXGYTVt+DusnCxGKQjAhUvovOqZttOzLMX9IqeiSl9QgF8NnjlW9xIc
	 pboYg7rB/k1u+qFW+r3DO3b8G1Or8qA146VFMbgu4oaooMyQHX1VY5lr/fxFJDjAB+
	 hajgpNzXEKQyf8iQu4fYO+zbygFb1740Lprzhs/fXIhV3efULvrCp6rSfCOOC0DTMW
	 DI5bDiKSiqHI5RAMXMnF7eIV3DOBt3hQJSpdHcJjkvE3FF6qHqniMbtO6cAgkEwJ/k
	 wgrbxaYP6VODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C52C48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170840029640.11734.5304435786505719853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016acc1340379fe77f4a11c6f54afea1f30f85db13c75b970e70ae48a83f54ac
Date: Tue, 20 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708400296
