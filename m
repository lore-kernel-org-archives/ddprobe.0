Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C04D17F4F6
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744577394; cv=none; b=eqYv4CEI9dAwTO0+1RyfyPjiWu9yd58LTVRUWp30GseGnup+iptAreSHuI6ZJWGtx8WA+/Zb8r51HiKKUx+4jdZtS2MbWw1E0nBVOWK+ywSVBQbVRxENWUD6/tSybBiSaiHzFOZ22+KqjzUnwClj4MYtL63zz7py068EgSAv6BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744577394; c=relaxed/simple;
	bh=BGh86E8xeKKmbcZX5l/t+OWnT1C6IBzXKFkzZN1bGak=;
	h=To:Subject:From:Message-Id:Date; b=WCLZW7ZpSXx44MWW7aal0V9Zk7Zn0qe/qvJIr/9UG1WehXHGm9+yA9kpzGhQBpZaRIT7IXBGOuFF0sVLRAYIkOYEZeJS+sx5h6vgSPcM0E80M26JazQVvV0vuwamZXe+EllweSFf6QKgfNKt0IR5fC05yBr0PTaziv8Kz4DRbAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1ghj9AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1ghj9AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5335C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744577393;
	bh=BGh86E8xeKKmbcZX5l/t+OWnT1C6IBzXKFkzZN1bGak=;
	h=To:Subject:From:Date:From;
	b=Z1ghj9AN0NuvX08Nq7VInTS9N7FpsTcti4YchYy18W+tfXsOURlSCDcht2vjrfHdC
	 LSaURhOkD3H3LjyJayCaXzrC2ueo8OLaasgCWqdoF5C1lOT7UvH0xoRuTAm5vN+UuR
	 cOQ85j55pNCkkIkjrjwBIhV0oHUyxPO7RIBEYVqIS8MryO6ClGbHsrGISIVwBjjPkh
	 PnptoF7U0WZsNCWHGBhU6h2iM5IFkoqd6m3yYfMiU0xET33551BvxZJdbCSvRo2Pqv
	 Y90SKZfceNReVzCiGMvCtb3GreiTT74LRygusWZ6uKAS8ralkdAxqi294HAPxmbgCz
	 tyffY7wLw4vyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F808C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457739363.22891.650304574824764711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e5d71c3022c78fa9c48164e95ff492ec1f8dd0a0013015019b1d11e58661c6
Date: Sun, 13 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744577393
