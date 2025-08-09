Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37E27F01B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754741394; cv=none; b=upqYykhX5LkH7735dj9jWAOJCTyl8dAkETkfrglNg4gSkDGa0MZqnEXRW83+Lwgv43NdYEtyaeIDHxuBSZb9/RRXW0XR7C7qsXEPrKn0AG9e33skioTMmbfMt9SKYotEy56Ab3UPHlwkwgjUJCFlPtlzOqqSEiikAj8gHGJh1a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754741394; c=relaxed/simple;
	bh=pQdcrwao2NqF1vQKxKvlc9SWqhtOtxmbVrD7IX+ETAA=;
	h=To:Subject:From:Message-Id:Date; b=kXa/13XsbiQlCuvT0GNAQfv8SUUGcynGHcGMoIPLVplMRtC/wet4eCh06ceAJ8MQ1/tKwit2YHV93JWXrGFw2jTK3C+hOcGP1AltHCDUvp+cesYGhWVyW9W55DL84bfORiVeu75GrtnAXmxFXmuulFCadDeyjAjuYaBoBmNa1yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duRczGSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duRczGSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6603C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754741393;
	bh=pQdcrwao2NqF1vQKxKvlc9SWqhtOtxmbVrD7IX+ETAA=;
	h=To:Subject:From:Date:From;
	b=duRczGSylltKJlP5YsUV7/8FfqXPK5ydZOpqW8rOWFR2lo/xh9Dbr8ElLqvKxJ/0g
	 z9zGk/WNHNaGDKK7O8dS0/rJ7VYGsN7zpPvwScJWR+sHKOw+Fb+QdqBeyv6nkztmXO
	 5sG37A3Bq8DSKo8XGYIg50oDyY9aVdKBpLmZpOU58VIYvEIhS+OQPdzKkGj/RHOf6V
	 XN7ssjeXO0DgPI45AXUdnyM9MZiHhksr/682ygHTFbTLauYiN7iKnw5DAxz7naguEC
	 n7NYmRCUvwed6m+LsX3Kui0QIlqc0i7sEBIuAFejg1/QPZRuhiBBt07DDySAFEY7EY
	 ia9i1STMSNwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A0C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474139360.21924.8195249655225647992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e5055300cc42e88f4a87862e2e8f9a60854b3900ab50304883663a4d1bb504
Date: Sat, 09 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754741393
