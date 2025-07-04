Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C928DEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751672394; cv=none; b=mjyxQzJrvG0/CWWUp+1yXMCVfXN6FhwnGOq51RX6sUS89ImBnIIUPMd+VHBLsOa1Hm/Px1FuzXChT/CNagcY2gZLQbvGPwoUtKK6Umu3oAbBAoBubxQBLhFfSA9IEi8l0OpUjFddWIWeRioNvLj7Ng2wq9rNyvr2nCdleZEsaI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751672394; c=relaxed/simple;
	bh=LVZxmnYjfQdysgfoGiPZd0NWSGijh1v/6QukBUs1sSA=;
	h=To:Subject:From:Message-Id:Date; b=eZynEDbj06sRju4yDnHNSqcY60sQmxcZjkFod6o/XojZdohdrYjZU+avvlW+gz4XFbz38FrnrrUcITQnxWmzOXqoMjd+Wxhtrc4XR7G3KpnTYDAlW0y4QMPmEOPCSTiIJtmii5ap9UhSjVwI7jsIPiFHJ4AQySF7rfyRLnCzYH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVO2iUCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVO2iUCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F4DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751672393;
	bh=LVZxmnYjfQdysgfoGiPZd0NWSGijh1v/6QukBUs1sSA=;
	h=To:Subject:From:Date:From;
	b=hVO2iUCzxO1pVUk8XmeXcIzfH9QzwpwL/OSUVmhEvq8DKwWUGso7wqzBWatPz+clF
	 0Z6j5hQYc4dwKATMOXcX1JQw/3htxquqgQ0uRH4zjbhxKtdgA1XOgwOXyQA0ck8Jiq
	 cChLSjqBzbUFZDAB9NDGMFXlD5l+hMHIfmVngXwZylJztLOfgeYY9zJ/Tvwl5iE2ff
	 Yi3VsOxQ6j4MqOtw7WQGCO+ambXCtvcwL0mVSG6C8nAGqwM1SveIGvr/m6jcvnbA69
	 hobIETMHh4aqjpqCz29ajjRPl4d6aotXG8h7bLYQUiXdDaWo2+4s8XPZnTg64x9i28
	 FzSC9j/pHB1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C8C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167239358.19649.1663241600638308721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a262c2f4172fa3bbb29ba6b481dc7722480fcb1a0c14fef054592bf584eae735
Date: Fri, 04 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751672393
