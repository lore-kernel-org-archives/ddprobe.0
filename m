Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442172594BB
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735442754; cv=none; b=SpaPVjADHmltou4AKc1J5fvWXc1ZhB/SHDyIwhq741TOibUtJD2ETrS1S+tRd2+s/Gl3dX8slQIi6L8+l29ztFRU9o21Z/wgVbDjhUYSN/Mb1pdMuTMoKrsOjeucDUrauYopMcJCxxByzqBTMgfcIIO1PxmFONdmkIgxZ0R94MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735442754; c=relaxed/simple;
	bh=pkh/IDEQOTktc+1Kh63zmeqIVZf0zXfBVvv4KMWmRtk=;
	h=To:Subject:From:Message-Id:Date; b=XyLwTgF+mX07AunCUyKDcMO7kkSjV9espcLyXoVXTYCoEq6cqp9sWcmiAznBeCM6qIrbOHqO4RS2GKCk7vx6RUQ92MA/llm3AHWvo7voJfFzewFGThbs/EszsoweQ8dSJbah8Kbs3xPmvDhbIlHlHbuk8pOnZYW7DLt+LOrtWIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5Qq36Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5Qq36Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AB4C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735442753;
	bh=pkh/IDEQOTktc+1Kh63zmeqIVZf0zXfBVvv4KMWmRtk=;
	h=To:Subject:From:Date:From;
	b=K5Qq36AeIxy0kc+63Ne6w7Y3rYbBqDYqI7xGvqSKYQAtMZCFz6dKUum6CIT607IE+
	 OFfIKIdb9aMfok3OmnTChSxlTXzIwYlN1Zp9vDqSrsnCwsGcHvsZewRhX35J7UHF/j
	 +6+3hkA/FDVPr4jAlGdWzis/Sv6NsJ5iZhkHZmu2Z/ksH4dJkAJh8A8TX2URYf3amC
	 kAZwct0pzKX3b/I0O+ltnOW4Q8LCGnrjUY+yJ/hrDDBC7CBO+hdYGG8sfdS9bIIGGb
	 oSFPEnqHX4YAzIOJzQSUg0xsM58Lkmz4+/aUniAAl99DnrnBfbI6IyTuyOHJI7Riig
	 dmMCw9vbF2thw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D14E77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173544275359.13680.12358280582850730612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d473cf630926c89ad6f5267fe1a10049d42081f0e583dd41a14027ccacfc07
Date: Sun, 29 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735442753
