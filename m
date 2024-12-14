Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E2242A8F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734211554; cv=none; b=G1uZsdZhXH8KFT7BwbRB3vCsTC5HOGd4KM8YpYnkHNj2JBeE2YtdQYDOXGjtq1x3xLJzCSYV52RNwH4clbvuStfQM1DxJ4IWscmFKWp++f89we6IpBp25bQWXpvT5HJZWVNqtkFRvZtxTBM1Jykj6WqwEZSggU+LXTgvUMv0yKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734211554; c=relaxed/simple;
	bh=IZkUDuS4B5oawTHm/ZMoA14RBOv0n5MjL/Ub0edMvAk=;
	h=To:Subject:From:Message-Id:Date; b=XE04Pm6+FW53sNAC2fOhK+3uiU0zJO65rLCrvRqG8i4zuzNMQgzGHoO2wY6Nacq55gPCyLCO6mIJti/Irx+XGG5TAzgL8bpejMs1qgvJncLHW4LrWlGC4Zx3ZSn06C4eO0W5/PsBtPI8kJ7Yiji6ZPEsgDuPNIf907qoVbB3UgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFU0VXcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFU0VXcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF0DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734211553;
	bh=IZkUDuS4B5oawTHm/ZMoA14RBOv0n5MjL/Ub0edMvAk=;
	h=To:Subject:From:Date:From;
	b=SFU0VXcP3OcFaHHLmjKPjW3zw93+2L236WiMAp+LWFuj/OZAUh4SvRpdrWF+EYL9i
	 Rqy89eXbrNKB93Ed/llxk42DobJ69qHUX9WfMko4ugRe3J5tp4bCwGDcDjxFr0Ir7J
	 V7FE1m11YhAIAw7/vzQ9AkayQVBZGlJLhWr60oL0TjKDBqJUP0Y8c3Sa4B6UVtn7z3
	 NyfDp0Lym6YEqa7m/4oKp+zNnw1w9z0Rp5MvzdGrUIMgn+bR3SjyFXakYaiIsYAd5T
	 p/aGj5RFfXjp5CaHwSShgjQNZuakTnMfEDkUux/1URlfHm+C7/DCxw3e55Iiz5jnY0
	 275BiJ8nuhF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B1E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421155359.15156.10949276147550366359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52975b260a2dc247173a95818d3c1f7c5ae2766e06a6641a954743df993b481
Date: Sat, 14 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734211553
