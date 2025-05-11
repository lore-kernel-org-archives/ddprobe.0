Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF522D797
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746964794; cv=none; b=Acj++y8hUg+6gtVXjV0yWsO14CNqo9jFvDx/IvagAoxkZNowWqi+QY3EbZyeVsVlxxkIV1KjkbSFKLZLrxgZ+uf09S3PfT/bESCARe1ZaGGj8WPjlegB6SqQw0Fhn2/rBlY1CEaSzsjN83Pqm7S1wFOKAEl7+XZRoZOBj0NEnaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746964794; c=relaxed/simple;
	bh=CwF8pWG/68aSnm2YdnmskuJ1fRxGxUsH5C8grmAfkc4=;
	h=To:Subject:From:Message-Id:Date; b=j0gZ2MjAZ+N2v5ja9tZD+Zg7iiL7G7CTkA9xuBW/cz0foTo5qYVLOIQirbDlKUFc8CsSvDIg23/5aWh0whKwWFKQgSDB5eoUqj1Silll9JH1wvfg3bNp8m0ejSvOOT5GqiSN19GliLMQjOEv6p4L3HqeKaLH8dFbgTZG7UnkVK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqf5D21T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqf5D21T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D657C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746964793;
	bh=CwF8pWG/68aSnm2YdnmskuJ1fRxGxUsH5C8grmAfkc4=;
	h=To:Subject:From:Date:From;
	b=mqf5D21TCo02/PEOfUkgs/dDyJRjjcRO1Ynx9NwAegsP+v7E0D4+ToHy4LtAnnHkd
	 H8EHCcHKGitKF0NgTc6qppMTCHIIFdkZ5QA4enCdbk1WVfcFP2frFDPFB/PScqwAke
	 IZX/V92r818cODWUIp9JZlniMpQ6YWSieF9kAG3Q7ZN8vrIYKzUry01Y72iShA6g7u
	 RXIY1Gga/ctitftijFb8Cb/8KORA+l836CU0aD3hnGgOuW7AM1nL9yWF/xs2XA7NWH
	 slQ7kPLU2596zdypjas4cLbc9WZ3jNdWjwTTQ+m0xbebIACcSUWudSPu5p6R2AGZvX
	 rmdvWu32GkFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CFC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696479357.26767.663057479820531997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a2e77a80eedee4c21b6fc2d1a1b25b89ad5c8a957aff0214e2daf9003f75c3
Date: Sun, 11 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746964793
