Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9CA3126C5
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769804034; cv=none; b=uR11qWDS2EOw+aZxutH9NlcQlUla0HRRLEGCQ8ep+pW/WkDW2hngPF0YrOMDNXTQCjcizuFLlSL1K22XSAhzyuZ6RhPQ7mHhraFoST2QnjIavlX712BXmqZb5ALgX9nuiVXqw3CyYyNcBivecr2+PTNIBIr/sKw8Gc4WnaThvYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769804034; c=relaxed/simple;
	bh=hbdmZEe/sIYqaNXxbN5V7rjTaJIr93d07oUSbe0wK64=;
	h=To:Subject:From:Message-Id:Date; b=VQX/LRU5ZXhA+0GrCwPuGSvOsEqHfI09eaZHQy5kkWU5jai3x0MWi813RTEj4PhSSC0biOWYqjLP4UW2p8ZsfGyueg6q0Vn4Aw9scVIy54/jmRr6JZZ1ODHPU5wNlL/vHd2d0E6Je1gbauRlweK1JbJsfbPbZicQsD4TdQKKrUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSXO8yVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSXO8yVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769804033;
	bh=hbdmZEe/sIYqaNXxbN5V7rjTaJIr93d07oUSbe0wK64=;
	h=To:Subject:From:Date:From;
	b=DSXO8yVygG7ftWmNQkVKGWqZ5TO5nZ3rIKr640c2LzGguXZXxztNSZ8HRpC4GWS/T
	 v1hTfASMupP0lH1UuEc8q7268zvMeHBFt4xtfKpBukcbaSc2u9a3E2dHXhqGSADsWN
	 /EPZ0zr0XGi73SdUrNnKboB/UPU3hllHnPOl+uu4AJFiG6c4dc9zKv0+Yqqs5hKafF
	 vZspGP2H5jtNKoFf2CmeFKGVaC8lyEYxNc6kR0DsY6BV5scvVRl4xjAyhSCE1XPUoY
	 cfKSj4LidAURlmsiWOeO7AWa0PbUUw1lov39fkso0TR3TMPPS1i8oELEGh6dM58CFj
	 T9nB05VjYQcqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE3E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980403357.6662.15514025357146827627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c283fb234efdc8940f1dcff97ac1ef86b636897838b5337d7c2e81c719557fc5
Date: Fri, 30 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769804033
