Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46DA2D7DE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789525234; cv=none; b=mPzrijSiwU3s/Y/vBb7wXTY4jbHV1bYxZHID/55tZlxhmHJMUOa8t68alVz1SjWBgOjM+osdb4HlH+GyFSNWNBVauMGQUMHY8GH1jqyKSEyG4Py2GC32faKp/6TF2skOpZORfXphEPtvjIQPXejP0/cOAWj8d9BFi+eGapR4N9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789525234; c=relaxed/simple;
	bh=o5LfXUrMt+4RIy0nfrh5yBKoCBvX9fdKSGQ/zMXRZu0=;
	h=To:Subject:From:Message-Id:Date; b=mqBWTOACT2MCEaAEJIRo8c5P5AF37DgKjWq3XNeZ/Na+5VjcFod4lonQVWkgmsbb1LCP2V16prpBfAhTeQL7u5SzyBA35CQ7qPBx7x+P+QLVnh+DJBcQtpqL8YM7ikMn6Mi+xddmMOGqqUGexNN+tP9vxQj4MAyvXOl8u7hwvB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntIq+Sni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntIq+Sni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA9FAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789525234;
	bh=o5LfXUrMt+4RIy0nfrh5yBKoCBvX9fdKSGQ/zMXRZu0=;
	h=To:Subject:From:Date:From;
	b=ntIq+Sni2vkw8/upeRaaQ7PQ9JcXlRskv+qF8S9GzC78hgFez6KYXrBabLnsxMyuu
	 2cBcw93LoeHrpfYA7BuW3Pv26D9U+A1lDMri3L4YO5YK3UWc+q7duEqZCcd0YiPPZl
	 0U/XfyHQZAMouy4ZuJgPj0XM0uJvQXLuH09t1GcqVtXT3YOLCXm+q1HUDOEEc20gmF
	 F7RrwE60q2w1Q9SvfZDGHqzeIr3yk+zrVeSxJama2J4QG6EWgOC/89cejQyOdZls46
	 dtKQfRNiQCtMURxfrrRxj+okWU0K5CDDytC4zAUXV6tMw1Q/mBdDoEaq1on4uuyqYe
	 aGm/+V91LfxTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA51C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952523373.30812.6271120832521829782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9522a301e20d21226206abbd60cf428ba7c96b079238aa019879a14ce0e7bda9
Date: Wed, 16 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789525233
