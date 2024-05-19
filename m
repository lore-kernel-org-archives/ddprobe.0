Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2C1DF58
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716123143; cv=none; b=XYVg6RqT2wcqcJ+L1oon8b4P4iXjcBWKMnx8elCdPAAPx6rleE9w5+fVmzNKUVhqHyrzwPeEeeY6hoZXymGv/8vTprOWdNMuGQeqiSTrP7ftfaid4n+qJc7RrAdbBja+OVM139tnnFbC/tFULnCD7IMkMGIY2dB01BuRAGAldWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716123143; c=relaxed/simple;
	bh=iNcmNn098BjY2+8Uf0k83UOmObLlgHE+WX0CIJ6v40E=;
	h=To:Subject:From:Message-Id:Date; b=X62bWW7ZaukXD8tGfUf4U0lMjaaKhjrwaeGZPbfnTf02tPAWnMyYqon1bkDXsr3nqIUMvfZa+MTGEvmsOkmzc5WOxOE7Dhy/DZ8jPYxlZdWz0EsOduSLDAOHzCTv9CxVB8/0VTwtbZcZ6noe34QwEFh9Y9w49VBxjx0YfNKK6cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvnS8qgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvnS8qgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DFFAC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716123143;
	bh=iNcmNn098BjY2+8Uf0k83UOmObLlgHE+WX0CIJ6v40E=;
	h=To:Subject:From:Date:From;
	b=AvnS8qgOvSDX/9ft+T6PVH9pjK/qx21wVZCgzGlOrd9EW7nIFFklHTMktjEttdSxK
	 Tgx+qZ18ZE5iHhg9wlgrARt8lx60EESUXjSHUD8b9QBccTad+u6CZ/lbTLu3dsae8G
	 0jg4KkHE85v3JKpNJy9L9Byo61LAllg3F4mna9r2a1lpOO/oGWmAROhHGQPljR1Vi+
	 n4JgDLVexOg2H6lUtMbkZqYajK/wMYaft9cSPNVQHUin0mBl4H76wzOSxfsl7LiCLQ
	 qrsWgtgq3rFOmVkDiAyGfrNPooIM3ZxwLU0tloYdDNWVJUcQ0JNKt7gIZk24GyRryv
	 cpiO4eWh9l5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED7DC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612314287.24371.13132482197571177802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0246c8b08bd3380c5a6433ac3c5a6bb2f869f3ad0173f46f7fb7399814d502c7
Date: Sun, 19 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716123142
