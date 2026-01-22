Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FC328D83F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091834; cv=none; b=ePU8emTuiDuPvw10KXyRnaRyT/Y52C2DbAkKpwFPPp4Uv6/9peF1+ZutUFR7V79IRjEkKgI0MnFllJt/kwvrl3ALsXOnNqLZ8iDqppnV4ukYnwwDFOjovo/YGPr4VoYTUJMye7hznIZlPZqjHd4FvSCGVZA++iUtGVw75GWE8Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091834; c=relaxed/simple;
	bh=dz8w3WlptJ6j7oFQ00zNgIRKCSf0rBL1hJN373vk458=;
	h=To:Subject:From:Message-Id:Date; b=nwfXgIYlHRMKMLMFWrdd3QZk0hF3ujurb8sz261v0x3oSUGQ4RSvdTLQSIn9aAXvh8kFI+x8a1mNWw9LlidWSFNN7TjPR8LPKKEg6WxPUNlYR4f+2OavOfZg0GZIZsG2qQTgKCMi7Iw6l1N4qqmA97JUCvsoSyAlIL4sxoOHgVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIcWTO47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIcWTO47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F341C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769091833;
	bh=dz8w3WlptJ6j7oFQ00zNgIRKCSf0rBL1hJN373vk458=;
	h=To:Subject:From:Date:From;
	b=NIcWTO47lVC45UMLMDf8ODZmbhNQo3flTfBzglSgrTLohYRF8eCSB2DsbdJN5xxFo
	 y1UJzz6Lc2u2Pk4BsT5/ZBtSk2p8WWEqRhj/fadONEb9uY5kwIcfVKxnOFk/sVRVbU
	 Ewvhq6zPw2z1dySeB+t0lny2xg73l0TyoByM7qDZ9AMH2eZzvoUDwdnHTLHk+84z2c
	 SNhUDDhfwry3d5BsffsgboO1PcFaq4w9g9+m3Q3h54QOvb6VaTuqJTlo9nfYJEeMcd
	 F3CpnOO+0qiZOzyAtdnYQFegAQ648j7uhhJ+phksdEKrWwDCVyTF7dvx9hJERjyRb3
	 Q/R4ZqLu9p9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D43D3EE6B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909183358.9470.1710588157651424983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7a53d074efed55122f3747a831cae76cfcfdee8f362358a0a25d13233c7d3b
Date: Thu, 22 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769091833
