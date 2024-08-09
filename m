Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC07194C86
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723209954; cv=none; b=ksOSOvmajBlPB5FD5iVW1gFPLSJinxccSqGfCV553urfBrA6E91O01voDSSAT2M1mtgwZZq3GFMVH4yUbv/7f0gEZKOTTuIxym3nyOwzlmE9S9WQDoEmZsFoLNHXeuTjmhrO0wLRT9iVUWvdCEzz4f8xQrCoK7MgSCC8ip7Ateg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723209954; c=relaxed/simple;
	bh=6YFHCNk4pKfqGQAB3Pq0HVLQXCkh02N8q7lv4OAZock=;
	h=To:Subject:From:Message-Id:Date; b=eYxkAi7y6DHI4V3Mz6ntTBv+aBKBS49zchfLBnD0/F3J71InOg9eJBJf6YUIXzFK5yYFf+UVvBeHipF4/f5KfnbNSiFwPL3lEMXnr044fTjvLBuJFDvlUaG909sV26lxeK6CEYzc2rf0m/a5mDDrbg7bZ/Dfxt3bgE89M5NwgKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezYxT/C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezYxT/C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EFFC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723209953;
	bh=6YFHCNk4pKfqGQAB3Pq0HVLQXCkh02N8q7lv4OAZock=;
	h=To:Subject:From:Date:From;
	b=ezYxT/C2VRkAm0EEOecr6gbFTW73QdxKj1LJ/RczPDNqarxwpGvK6enpQgRjTYVJ9
	 qZZzX6cVSVVISwK2gdk24eYNQ1ObDh0LUUOOeATo+BuKogerxFFS2zdVqA/c47wQlc
	 x6htEzGM57XHhFx5KicGCQoNfq7EsbxOIrd2f5QU1smaBz1E6P38xfjMuEgNHFaOSH
	 xV3pWfDgjjIZPftw+q5iVLtu6B9cNZOklgFYw+5ALN5Irr/U/0PnVKQDdwVCP78IIr
	 vYpSKbkQedUlq5ySxebY4rA28eafw5Gh7VfEYtTKrN2Ffhz2POCMljywlptPKCmAIP
	 VuQqUDJs1rt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C8C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320995358.11914.6617133566915201949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ab9aa657a576a80389a5d5ab9647c22ac0ecfea9116e043fe090ccce362104
Date: Fri, 09 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723209953
