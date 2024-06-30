Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7567E12EBCA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719740063; cv=none; b=ZreFvNZ89nkEZfa6Gbgw3zp8lKgB37y/0yaWex2mKsjPdlD8HXHoJYWy0KlS3kP2NkJU9tiH8lmd1LrItiO89x4o4px1xQnHgIn4lnxZaV37HAQd9VKSCQD5WdVxNzJlgwLhd5kdi+qwn72Vc2GLEAKXLSpqlCvKLn1m/jGKUKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719740063; c=relaxed/simple;
	bh=K12SoCOooPs0apBZntY6Ga1bYC0/tPdg18xYxKndYIA=;
	h=To:Subject:From:Message-Id:Date; b=nJygYXNStJCbkIq18XjJsNDet0br9CeJXvlTaDazChTrYC+rgS5lNYz9nge2l9DIk5MrIsGxi/Imw5rHpI3dDC7smOqWGF5n5o4FZLnmdYpUntJFhOANx3BLYi6hPYS1w681gyKE3TDKbbsO8g1z8mz1Bxzxz4+SjPzHDOHN+KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4RaR9xX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4RaR9xX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47C7C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719740062;
	bh=K12SoCOooPs0apBZntY6Ga1bYC0/tPdg18xYxKndYIA=;
	h=To:Subject:From:Date:From;
	b=R4RaR9xX0AbqCi6ZKKg10CycVpgM8SGu65fo6c77pV6yBWzNFvXoLGKCqPANzUe7v
	 NcB4UosRTyLE5I6Hse/nmwqNsuA+vA4R5iL+HqFfM/oSpA0Cwz9vqLWB9FssS6ZIsH
	 j7+CuV25/acLLJlYPIRe6Sofrj1RoXBRr/4VRPBQb+JN8ZWHayaelC5kowvpWfGDsI
	 k6j3oIJK/CeupxbgsYgjFG8nLQHwl6bahfu0ZRStbX7gUwFdN07RH4kgPpwoW3Gu1z
	 xO3XCq8UaxR4dtBh2HY4Jifs8UWTR8BoSbO782UgoWF9g/cRln57xEPG6Xigvd9r2d
	 1lEMt/FcSSjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81E3C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974006280.4969.1619891447826855813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9f225ecdaf0193cb3e0d4f2e1086c6abf07611e53b960c5471e1b3bb4c70bd
Date: Sun, 30 Jun 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719740062
