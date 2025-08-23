Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF24F1F17E8
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755971393; cv=none; b=W7qkTGJDdvEd4lekOUDLkKV6doAlbLYut0NHrQp1O2ovCNau0XXR5btv6M47SRPrtPDCpTkeU01FEg7cLv6H2QcNl3vghz+oYKqGgO6Nea36vHgvCWNyQHqUeYh3EULJyFb44B34VmpHBqvAFp59zU3UiV5D5tjxlGoyYy91bzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755971393; c=relaxed/simple;
	bh=kgAbkxucUIDn9MdcrmkU0AtnRfxS6PijXrxIkE4ykzs=;
	h=To:Subject:From:Message-Id:Date; b=icpEBQRWDY/M4VgBEWp/oGo73LZlbunRWdCKzLatgr6RxPTvo2uaQwuJtImiPizWVzwa8tmj3j0+y5oQboIAiL0Iky+GgieN+9qIx2+km7HOHC6Lr21Rr8SKyzdAgxxad7qv9oT3EUiVjcymXYBUSiEGiiy+Z3Fj8kQbl1HPCYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMuodpRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMuodpRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAE1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755971393;
	bh=kgAbkxucUIDn9MdcrmkU0AtnRfxS6PijXrxIkE4ykzs=;
	h=To:Subject:From:Date:From;
	b=IMuodpRQT+9Wgr4IdeXKqeIoYbP1RtlPrpf/geYOxRt5++ev0UN6HewYvoWsUAFqn
	 JO3MGFcIk9uDpoFcydsdBZjYHOL9/ZePVuDIQCyNgftK7IuL2a6ptS+XstxsUf9fko
	 HL5HSNGhfFj2dLTfW3ICDTA6AN8YyB8mSabz7Ty2YbcozIi2kSRkz2nmnBiLrcn7Ok
	 to3/rYngCqeR97WEMxz6tHcfGcaNUQp3lCyib9F8KoyB19WjMOTlPcQYHaCBP6YDdV
	 UjlFVb7E+y0pQADeUQNMQlEN9ZpZbb7Zk3K8IMVkkczWWdwlvSSqTBpmBZbMeBeL13
	 2RYAMM7ShWSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597139357.16316.6516258923703490892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9aa22dd9acecda0c9ef43b5c2122615fd01ea0185ac5a2fe50855a199b26f6
Date: Sat, 23 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755971393
