Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF0B346A12
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768887835; cv=none; b=Zo8Plx3kH8PCZp002xCgOSJjgdxC1V5eDLKeayVFeJeVUfeReJpPXjsx22JUyTpuji39oTJ5pHi3o2+DaNs/7NeUs2glVowJD8BpP+WUqg6Rq/hmGmx8OEthGWeowVYS1hSAs7+6WDQFsCMvnQsyFuSIwGL/jgUFeZDv9KcYI+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768887835; c=relaxed/simple;
	bh=qg7xuXU3lopwyO+dqW4I7bH9oG99/1YMC/K9kPyJpsU=;
	h=To:Subject:From:Message-Id:Date; b=U+HnD4qUElJc6pWZIHQRFowt13TsMXyYUABEowsSEK7+hNHlgWjhE95NgG7sjndRfnwvRnMCMP4e8O+5lzrkaRjgdFgwJVAoz/EBYgbv1uTP8mlF4lwyQE37GUgxpueU8U+LC7fsot4zJBb1+c3jzC96kyR19Aamjx4ANYi0JQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXc9dw1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXc9dw1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1DEC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768887834;
	bh=qg7xuXU3lopwyO+dqW4I7bH9oG99/1YMC/K9kPyJpsU=;
	h=To:Subject:From:Date:From;
	b=BXc9dw1W+G15U3J+/axUIfSS3XBhJ+skjnZYADQHiww/cuJbhkBsaKlpsfQhYjD0n
	 mZw8bQTBuboGL46YxStL0fJb0zCIvuZK7yOilcVcWtO8cJvLK08qkI2nrW8Jf5Vyky
	 HEvEPEzVdEX0BEdlFffPjVmq620rcZb6MdVLsNolgc1E9PBFy7riJItZFXwWS7Ujs/
	 x0RW/zSMfq3Bl5SfCf1k2k5pCH7KRy1Fy1TSAuraIqKYe0y6FsdWJ9VXfizoyUeGwB
	 TfkCSTNWOZ+5w0Sd5b+Ad+A4HY7ARbkLfGLygj36y5nULN+Ul2zkfpy/BA60rUpuyw
	 zgF68XmQUzJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9935CD2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888783360.29112.9257093293642792715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00a48156d225795fc48c6407170f1de5ddaefeca5ffffe2b5000389bd1ac8a4
Date: Tue, 20 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768887833
