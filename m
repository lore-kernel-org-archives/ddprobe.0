Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F0618DB03
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739707136; cv=none; b=QkcPtLciuK6tBEjJt7nWc2Mk7Mml9wU0Avg53Hw/FeoU98lrZ20HhnHKUL2UwXlG65C75WkweL7W/zDax2ZXhLVKhPPKXifJ2ajsGxNQLt39CZvLP/mM5NUaYES4iXU0Tjla3b38apSYDNPb24U5tpO+eO+2g48iqs8RfjdcxOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739707136; c=relaxed/simple;
	bh=U3bSGkFaygIH/0NprUurllA13KzzT0j/jenE6LJiPSw=;
	h=To:Subject:From:Message-Id:Date; b=r/ReIfzJbANmjeYZQZsCniGZO+2/PEzQ1yUVoFBdzjoI0wKmQMbNvIKx/g8womz8VAa0UeJ5HyHfyPIeETezYST0dyJOYl0K6zqKVGcEJGREOQ5+KNkYXujieoVo1kcenpGq4dYdWTrQqGjD7VGDp9uS+i0Fluo8dTSwDeMgF5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnEY2Rb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnEY2Rb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739707133;
	bh=U3bSGkFaygIH/0NprUurllA13KzzT0j/jenE6LJiPSw=;
	h=To:Subject:From:Date:From;
	b=EnEY2Rb9R0EsFumjIu1IBn072+rBuIRQ2KCyh0SjU4HIEEWbACtCYWgoRRvgpnGee
	 wANU0su7N7308enCfqZu26EX2SzIIrkdwsQ7g+HvD1keI7bKwJbhNVjNwCK+j5TXEd
	 S9YiWdoqLXaCXpqjIUyZ78YBKONxKC8/K7A4HO5J4kGDPf/m9/NNXTNcFioZ8k9PyK
	 xxQbNQ4Y/Cucw8ldNVkjn16T2uiIJMO4RpcdF6DbLdmHKZBp2NoYCHLHfY+ixLdKnD
	 fy3xWw261lO6LWbpaEUbxsguhg0RZtXNii2KN/YZQd2j5ZGvKAZMdSL3oRvZf1aVIj
	 nAE9BnToSPDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B16C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173970713361.6043.12541983232224056145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50ace9582a9352bab5d35de596e049765c23ced2fbebfe81c58ce9275fb0847
Date: Sun, 16 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739707133
