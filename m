Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0BA25DD15
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746986393; cv=none; b=t5S2s3/F41I0jToUYk+YdpoH4kG6ZxlDq8w4beNmURnp4TXDnMZioOHGHA0WkN0V4q7cW9YgvT++Pg0u9s6n01T2iGZ5oya6aMxP9EXY9OzqLXHmuBAw4liCGyW6tyBDWccMA3afaNIWLwCm8gRhymWgCdv5awoe5s0hXAcIaQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746986393; c=relaxed/simple;
	bh=Odj36vk9VO7AsPt3/zVwhZ61296tdW4usWeEvzj9R5A=;
	h=To:Subject:From:Message-Id:Date; b=PVSi7TREQqV+/SuibTg/4OlXuUI0C5wEaqsUajPhsf+YdPyyD7kpV6j9Lx+eoThQlKjiZwUNCcHFBSG5AtiHOCOa/aKdmPTNgBF5SC5fvdnDcZulyF84v41psdAME2D8Tndh9aI0qyRMBqij9xJHwq0F2LkV6e874aaniWbUOcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojBWJdMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojBWJdMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746986393;
	bh=Odj36vk9VO7AsPt3/zVwhZ61296tdW4usWeEvzj9R5A=;
	h=To:Subject:From:Date:From;
	b=ojBWJdMzhU3Ng+ziSPQ6cISmflNEOkZwjQz05D5WVLRoUJ+/cg4rFlkxnEULgo66I
	 jcC2K0DBZPp0qNvSqp1dqhE205CCflPXL1xSg91Jy6kO9h2LF7yocPj/hBGIXjEcWA
	 X5SStCuw6k8cK1+2ZdqIN13igUqJOH9DP0t58mHTWy/ZlQHjT+mRmQpocYBrEkO2Pn
	 WHlvl8blQ3Bpe/9bexkaEKjezPY8T0shYsUiZ/HUq8SmgM3RIFYqApXy9CGp3KjpsM
	 6YOpM0HyCKcpoYZQGFxbdOQ3hze8vNkgPwIUHHpFXiVVzd/eNDD89VDw1s0OP6u4us
	 svQ8/0mBGfxGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698639357.16200.12182501967683110317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4ba29d027151e382698ab6f0ffc1a5f72d10bc350f79567546d5f4596be488
Date: Sun, 11 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746986393
