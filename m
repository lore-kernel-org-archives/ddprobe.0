Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988BF157476
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712704696; cv=none; b=oX0YmQYoSFhGbNXkxAXLhFvNqUKkhr2xqfOYthsIxJBI+0inCYbwAPoBPPUBCPA2o+/ZDl7K4tZ1vFLUy27E2ve0MlLugNNQfABIbtDlWy6eeDpCOmKhn6bq7s8KzLRxjJZkOdS04W8wtIXmunY6a66bjR5EX8qBBnLl1MURm6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712704696; c=relaxed/simple;
	bh=22W1S9sZ9uthnel8FR6N2Jf5AJLma0Wu7igLmy1QTFY=;
	h=To:Subject:From:Message-Id:Date; b=R3uBu38RoNIvZ10cqQ2lOXP6FfyJQNYKhWp6B3R6JT9Ur8ZkstPdDRqx7N4aJTqWRynPfY8t4inlFJwchR7bZDAFIARRPFf64UWRj1pHJkmziuqVTPkGOkw6BVDpXWaKb8ozcvtE77Tyr7JchIayaWAVHdHoOu0LnaWEI2gqcXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpBoED+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpBoED+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7775DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712704696;
	bh=22W1S9sZ9uthnel8FR6N2Jf5AJLma0Wu7igLmy1QTFY=;
	h=To:Subject:From:Date:From;
	b=YpBoED+oJj+d2+8DhkjxLiz5Og+boafAuRd04DCCZv/hZ3KEoeVTsfyAEB4Ot2QK9
	 zHsq428NS6LH8KamTZ4LgJ7Uicre4qMMyfasIWIu3Xu0lP67o2xuoaJ38bNfEUdF/w
	 rkLatJzdHWdBv5Hznr7pz/qiy72EgrAMkOkDNqvbof99noHVIuJoWoKjZK4/QJErJ+
	 s6XNhf7T7BjT7MuudHnsbCrID+oGxidPiyZIFkX/hV4O1ciX0cz5I+TOcyyNmbCgMD
	 weV0ctGZSD03AAnxCpo46dhNdF3gmDiHNalRLWGUwDH0HMblTLRZyFcP60j71LhkiF
	 B4l8rrqUY2xtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645B6C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270469638.24171.13324801680578732286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eabc4306de4aeb15404e8703b5d414e7e494563766d989117d84580b9763943
Date: Tue, 09 Apr 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712704696
