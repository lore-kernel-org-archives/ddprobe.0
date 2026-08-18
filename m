Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AAB3812FB
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787064035; cv=none; b=JgCFhKhBeeV+7Sp+qkKjSjFM0/z9hD719OX6oZh4rfjLrTRhoaBQl311S4BfG9vEwKn6nZmeN7ydaQ25M0pL9Cbz0a71chvKHgHju6qMakYZ3o/mAH2Qz8dGxUac7QfbThIPxCCFfXM+3NJ74xYFFBdMvLnRn7UyCK4/hbu4nA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787064035; c=relaxed/simple;
	bh=4lz1aGb9HyiVCr8jKdLaSdrUTmrjN9eXdfvgZmvQRRs=;
	h=To:Subject:From:Message-Id:Date; b=mIZja7Lf9CsOwlJoQYoG8WcMSirCm18T13CoPMjscF6ovK901cU5OQYu9g+1YzYV6ulbXMn9/2qvaK+QiT0dM2hCqWpIgaY8AOxPdRz8hpVy/3FTW0zIzhUl1vDj4PeL1CuiftWQRBIyMXqwl5asq6XdO4LaQi4MZfIOGBrchM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heCmBRne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heCmBRne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A16C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787064033;
	bh=4lz1aGb9HyiVCr8jKdLaSdrUTmrjN9eXdfvgZmvQRRs=;
	h=To:Subject:From:Date:From;
	b=heCmBRne3AWyWvDL54aTO7sIK61nR3vD6/KDNhvHd86HeI8+cyJrX//jJNC/5BFPp
	 mLC51MtaVahUOLsXmULTXbGimySsBnbWnJGjxQq5MyagM/3Lm9V/Ro5eSjqfq59m3H
	 b2YFQGJ3BZDqExY9RhHBG/vN5C6418+Vg7kcpnfwVoKe5AoZu3RQ+2lDA5/gpdSeE3
	 JQPS4ygfnOaYxNtn59X98zBCPPKvgoIJP3BSayIGYHp/V4YWHng4MU0XR4KTBKp8Qp
	 0f7eeG5aWpkkmSMksh/YIj+AS9QuOCBgbGkcxm6pqw1Va6qlhB2C3twyB6XviPmS7C
	 NIoq4FmUlG97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE87EC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706403370.10496.8121777346749903106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4e52745234d9f564ffbc4d3a9c8acb9ff8f9e91452effad5fb0a1ccf70d94c
Date: Tue, 18 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787064033
