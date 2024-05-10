Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDBE4317B
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715299943; cv=none; b=UC1cOlLYcew8H5KxCkUscaVzgVszajbC4hRZIpCBg1BcXJguNNQ+TAnj2WsXgzTbuA7jtAAqWYr5YYbx4cHOU4dgy1MQw/PDAB3kmnlMXc/2YN6NG0zGrDu9lISy5f3pcjUeDNM553a+0fpa46OdqBB/a5KlLL1Pbt8+n7mgwtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715299943; c=relaxed/simple;
	bh=HXnyxzaadDHpwpzBYNJUISVmv1y9D29Xz1FW4Ft2UTs=;
	h=To:Subject:From:Message-Id:Date; b=trj4I0w+KNcn2IaIBtyWLkZseW3y34aWxYWuc/832Yyr+8JDhJA7hZt0l9d1m4jh6iGrFovBm/LAxOTLwhkOvQeW3cypJ9rJhGmaAiayqbWZGMuz6DRle62huxaah1XdxS3zLAXNtL3xUTEiVEP6CuGnNjX5IHkOASxZJvl3FzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc3vBCQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc3vBCQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8508C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715299942;
	bh=HXnyxzaadDHpwpzBYNJUISVmv1y9D29Xz1FW4Ft2UTs=;
	h=To:Subject:From:Date:From;
	b=Sc3vBCQw32+I1IcU8A4iQZrV9qtFzSY58ptIZNuxOyOqQtZyOBEPBVAJ3aCOjKk1w
	 dSWwA31MdfzTmLeMCwR4einhw9ZmUAMFX9zWEUIBU0qDdimzEOvtoRDh5t/SeYGR29
	 TWwLlQs1rg2JOHqUshLKOYpZhxLUgOEkms+hehnY41BxNDZZyQeLAcUwQlcNNST3Ea
	 Xbqxy4Lvn5BzHRlrKmK9KNjnEFKUaiaIPRldDzh2KSsBrxK2JOPT1e1CvsCsyDRkGz
	 bX/Elj/V/Z31SmvzB7+0zncjgMP7bPWrIIMWJAczM2W0BuKgAg6h6RISW4Sjsaju3A
	 TNH9Xr7ZyBaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7196C25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529994280.18212.7179518008258044611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec73670f748cd93650a163142b383c5d94aee6ac56b5f2c71af7e7d4239bc89
Date: Fri, 10 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715299942
