Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385743E2AC8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780524874; cv=none; b=kRNtgiHbCjQvBxj/jtEX07EWC1DS7wX5SMYUIw5LvgBQ+VVDOJ6xljfMthmDF5yH9RK40X0rRiGgQIg/quQlXAzAwb3EGLCmjt1tZmJqkq+im7e9hy5SOb3OvTOUhI51c2kQuT9I1PgsWyrpKQanS3AnJl+Zo7PQaROqvIUP+iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780524874; c=relaxed/simple;
	bh=GH2QDMl8UaGlWAoqDPhS2kSZVHYtCXL7tRipULbfGMs=;
	h=To:Subject:From:Message-Id:Date; b=Es1/HBm/xyfPWPCShPPRToJDSjqdCNJ1CrwWLKBEAXaw0vySwyXaQ4PfOeMeaQruUoK+hyTtv2QFU8CSZfazv2zKy2FmM3fEBnuQ8VKUeJG5OM/Q4R8kxu3pinrQM5E+AYq/w24qr5hfTeEBDqIGqNkejJy6ZnDw6Fr2CGU8oOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr3LpDSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr3LpDSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA44C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780524873;
	bh=GH2QDMl8UaGlWAoqDPhS2kSZVHYtCXL7tRipULbfGMs=;
	h=To:Subject:From:Date:From;
	b=dr3LpDSowTyGrsdrwTx0r351WIf5BIgNC4Y51K2jwdrB4xsaVe85PD2aAYTCTbQYO
	 HmyMF+AoSVWFTGq4QRGVbFFHKOnk8OcfNCeiQaoA8DBA+5US7lnw3RS5KfKZ94SGbP
	 OlcdooAtrAdZ2nT1mt/nhgMZue3uAwe0sBXkFhHJt8DRGJWhEJJ0fjDQPKCda9S15t
	 +6AMrcTSXcg6WmcNRGKSHyqb1dzzNoBJfhz3U9xbvebjua0mFVfVG5LEfi2Ymff6ih
	 uYpdgjLlQYAwuqa7RWtIEhCYjdoPJGfVuiKZ5WhR/ie+VUCDtAdpymoh6NoYJ5KE5Q
	 PxZzTeBv28N9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CBACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052487369.25880.16646883492755334550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed7b790edc121c78abec40ca77c0141999342d55cb4421735b3fc3500cb9187
Date: Wed, 03 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780524873
