Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056C367E89
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708534697; cv=none; b=MLweKiikjTAMxBim/UkS2wFT95ihZRumtWgVFF8ujj2GsBXWABSJJESYx0jfQYB0j2GdFHKXu040Aaq2Fr7YRW1Ih2Ft2w2Dt1oEvkdMsWkj8aFOk2qxZe1dWjhWQLwRWcoHB7jRZDSAh784ANV2D3Ile1/HIuudh83iyndV1Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708534697; c=relaxed/simple;
	bh=tduG6PH8eMwSg5kqoG2UC11zU8cvPy0WWy08E4vICI0=;
	h=To:Subject:From:Message-Id:Date; b=Bu5SOuipzz7NkwWcjojl00qBqElOONGke9zoPzfY6iFl/ZyLw3DG51CMGymBoWZWOZPwcG4+6n1PFE2FMwwK4NeGtQP0X5AsG/MYnNx5UrDnFabO1JuavncQi0EgabnArW42F2aSmgpcAbnXIaRJzfQGBgIw/hYIgWKdGXhfrVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nslAtfaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nslAtfaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C5AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708534696;
	bh=tduG6PH8eMwSg5kqoG2UC11zU8cvPy0WWy08E4vICI0=;
	h=To:Subject:From:Date:From;
	b=nslAtfaIjHnhZAz9WeTLRcRtb9Wj0u2oL1dnF8DRi+oC0aSkjgfs7sUBIRSBh27i7
	 BkmOdhUhy94LJ1PDncJ5xZV8KW40rjjytjtXcIrEP7IwvNhVdlGXvhBCrhDwzd4Oxn
	 AnmLVoBV1nIjn8f8b6VwOGNFx0WcWnVnPq6C8w+Uzny3+o4ZXMTeGEPC2AbwqgzeYd
	 kNGsoWyZ3/OeKR5OhTvjvYMv/YF7CxO3MGDoLSgWKyV71MLAPPd1RlayF5sDUQ13Hr
	 Bo6+jF946MsHtdLqjOQQPLyAp72N50ODanWo0IC3avI45eOO6jJGfckURojU1CCvcJ
	 /KQS39uTmS0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61574C48BEB
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170853469639.355.3911989153815915360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0e16a74bc80cebc61619bebcf0a89a0136e75d392dd081fe628e6a910c0bf7
Date: Wed, 21 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708534696
