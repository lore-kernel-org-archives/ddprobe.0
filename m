Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379A528B4E1
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744711195; cv=none; b=rWLEnzmScLqiHobcPjms2zKr/vMlg/2R/MGJwzO56ArBJdpDodzexxs90Myd4hAPMbGYHKfoQAyXgkQgOTCHgI9iI7p57hlj60yGvhpCjvRReS0JWVNqCOMzECVmhRLEBF5WGcTvl3v/2ELBxh0R5NvGF3MkBpXk1vSK+2uLyaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744711195; c=relaxed/simple;
	bh=z70d2WdBKYzR46lqGbMr7bLCUeZ7OePbLRnT8XjkLpI=;
	h=To:Subject:From:Message-Id:Date; b=WssE1Hzy/9GRBj4YHtPhShkQ/keGzUFIN5H6bdn771s8JVlCf07u7qcU8MTSz3cGWRzwwR1eHdlPgg6EG/sdoD1C4NtrdzhkwAqp9QJl1EU0/lBYFopvTTKUX1kM3hoavqlbflKcadSB0xja+uRI2xHVv1xiFr7s68qUXFCe8cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiAWx3yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiAWx3yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFA6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744711193;
	bh=z70d2WdBKYzR46lqGbMr7bLCUeZ7OePbLRnT8XjkLpI=;
	h=To:Subject:From:Date:From;
	b=NiAWx3yikuemfw6mM0FutgK15t6tfDx45+F5CSJJyvSfrAe6CGt1LNZyery7PnPHd
	 L7HLd6NppJQN62gU9Z7FgyyDP3iMFJxBR8snHHI0CcLFQaoK8BemSKUdZP3DNQbH/h
	 hcP8Gc/DkREd91YF2mJnDTLywaEJDnXwXSnX8YL/giPrJBKrbYGVOgcsSJ2HUJ6dgT
	 04PnOTpiCzqrpV03IqUPckE53VV6tJxuqTbwCB1N1no9eRd4lMkXQaNla6U7KVguLf
	 cqEo68ytiJZX8Kwmk50QF4RO+owIXpBvH2ABzI4CZciljumn+cn5f204nNtu2LufQT
	 OiyVtx5xCqa7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96623C369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471119360.28747.17663056300604171311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a2533d9ac1e625b10422c78ba17377ecc390d9ab069c745c5b3193298d341a
Date: Tue, 15 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744711193
