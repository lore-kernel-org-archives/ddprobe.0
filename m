Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A13B212548
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764454374; cv=none; b=NOfRL8nOE9KGfsxf/LzGzqG7epVSr0IV+OKrLD5ccHODbjhYaqAkLXcIialYuu9QoJDljFGcGHYT3I1Y/w7tQXN1wqLhZgciUTcexWY/BWGb3tHC1uHAA5eWwNDsDE8AaNhpRVkfO63MoVZmzK/WaX1eA9NHl5mRslK6wQzCF1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764454374; c=relaxed/simple;
	bh=SaPaTjFi31F2Bc4hrPmDGipvSBnyPNJ4MFKUdVWGKwo=;
	h=To:Subject:From:Message-Id:Date; b=HfUcIat9dMgpFQxEac9d0X0Zg3SqLgjB29dsUdwHpEFckqaMnT+JYuQtTz7K/PT0HqXv0XnZF062gQmeXQF3V6GoihmQj5sKSwelxkA8mPoGQ8IK86K8pB6ZOE8niZRMOysme2E742WtUA9M5gCsoKeDX7x/o9eNhDEMAbLhyUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om2jczoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om2jczoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB529C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764454373;
	bh=SaPaTjFi31F2Bc4hrPmDGipvSBnyPNJ4MFKUdVWGKwo=;
	h=To:Subject:From:Date:From;
	b=om2jczoqkbWHHiSOHz2fF6U1qfqeuJGQ5/Ee2A7KLs5khdsfTB/1RmgXVY9AQX15+
	 3bN6YU/NZQTw0GjwDZyLFXECxqDLE70GCup8G1vl1Swp7QtIRLsuFt0gWS11K1E/so
	 1ifPM6VIDct4luRuTiW8ftlEdizEcKJ9CP3zbSe6G/KvhWAVpTosgANBfox+bSkjDd
	 JqwIOGE4Q/MNiGCOfZUvCYupjSukW3rWeJxi7N+PzXEuDiFGK71g5NpcNNd56ieKsj
	 7LOSdV9ItCj4I7HlLlwvEIX/hQvNLE4vm7P4gTljn19WbUxLACRXhNr48pwS6+jNGD
	 3DpaOR4fSQjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95463CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445437358.26346.14702704496406956223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4475e785d25599de7918bcc070028920fefa01ec587cfe71dabec6d47b2b8c
Date: Sat, 29 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764454373
