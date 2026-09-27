Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7C39B48D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790543434; cv=none; b=ZyYGMOnU7jMamx7MNv9xNqbTYBht2Dxgnb+P7XJlj2x0lNZ0pr/tP3lTyZmojlYFy3FbAsvdXPz2bQOWJ6OMQS6f2Euq39kHrmfuWYOU2b3ZiKG9Nd8pt5dr6wP3TYiK+R4VrkxoVPpHetaFcdizYGJJvykUJVNU6IMNEg1x4Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790543434; c=relaxed/simple;
	bh=QQ/allcji+o9eEEv/lRsluPXvoCEspr7em159Gc7+pk=;
	h=To:Subject:From:Message-Id:Date; b=gkFy4wfshTLOfSlivj2pN9kqW8L+1fNakHntNFJBRKpMMgXZLr1z5UoVRsX1ox4OztQfGf5BKwkPsBmOCAs71YHPoynph/ML6i6EG6bSgLH0j0iOVBk6l9mV/8w+XV+afe7oAXvKIk630oIe32d99eN3+WdHXb1ymn9oG3r8T0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkwqToBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkwqToBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790543433;
	bh=QQ/allcji+o9eEEv/lRsluPXvoCEspr7em159Gc7+pk=;
	h=To:Subject:From:Date:From;
	b=nkwqToBkxfGDk8goWq4SWRhLT1rfLXMDhnvgyBgfJaM4oh38X+Qo9upy37ZtRkf0X
	 xwqDvW3H9SIdqw3yQagLE167gpK+dbPmUxF+LYsxYEfyODV395J8Ex/Zml/uI9GZQw
	 i0PVlG14fGd1ZeG3YKMDaw67LcKD3DUFCIgpKXQOUzv9V6gbxe7tdSnaOWg/0g3G5J
	 MhrWl0yhydq9IagYw177699jNrnfLXEyI9BNXcHwDbAJ8PVEoA06GbUYqqmUy+iojl
	 +WBooO2fpdxKuf1PxFxKyBiEOUNWWKymKMgmWdohzSkweoaZpy1nkK9f32gLinjBwk
	 Hm9NyzQAjV0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A7C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054343368.12053.8212372230603879272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca459ea2ffbfeb52ebd3e024eb4e7d2cd1ebbbe4c49a891978447164428cf582
Date: Sun, 27 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790543433
