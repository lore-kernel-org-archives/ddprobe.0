Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124A3256C8D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769733234; cv=none; b=LgZjjKNLGJoxrn+zvHk4e0bUNMAdjCpvGvl+dEtnwF4UBrU/PoUUy+gofekm7NFI/j3hgwivB1hsPbSwqS4IAjjcKpJNVR29lFFSVherECeZeUefzB+uk+1ByORvNqw1khKiSbNvbOiZFIY1lFAOaIwyYnu9Edz7i4S6HqRg6v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769733234; c=relaxed/simple;
	bh=EBZhvSRg61b4OfLTOUVHIxi4cKXhPllHR/59JtfXvA0=;
	h=To:Subject:From:Message-Id:Date; b=QOw4zLAaBXbMfhBxU1LNegpIQGQabPOxA8wOClzehPW5TtWkU9Eha60OhtQqvccEsh4OYEgfKX0pU7Br9xEpUnByww+wZRTNrHmbJL0jSThIZDIuahSRFb3AW6X6I61mWSXiFwKchhmOl97OEXCQu28VCxyD5q+bcUFWeVcGl1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJbc4KsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJbc4KsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A296AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769733233;
	bh=EBZhvSRg61b4OfLTOUVHIxi4cKXhPllHR/59JtfXvA0=;
	h=To:Subject:From:Date:From;
	b=WJbc4KsBwJOzu2qsPWTRyHir+uk35iUhQAlUYSZh3f2Pi+ED/Geh6jpw3AWcf5mq5
	 HamKk/5On4Nt8DQZsTfsFR8GPlSuhbcE2z6Je/8mtBU/dHdEAekOgJFJU+iUKPsnUf
	 jtGasEw2pXdcfetcS8HJZRcOBA1aJ11gUDQm9Uc7kuNAM7BnSFbIiZZg8v7sFBnZjC
	 5lWro1zKbyQck2MFWu35YgXD7MvqbYDvhyIyQ9qv6xqHKzcH0x2kYDNA5tk5ZcOH8g
	 vEcftvyR/CGZaL+ws0Ze677euDx7WQy3aoz+qQFD11+cCvm2Mn6ZARA04az0ngQ6TY
	 zVeNVriSYEOxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91859D73EA9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973323358.32100.784660263838015216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3515c6f4b9eb03d36d3302b91c540e56d5bda27ca145f9f7184598bf5aa311cb
Date: Fri, 30 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769733233
