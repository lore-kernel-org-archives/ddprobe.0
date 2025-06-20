Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30A30E837
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750400395; cv=none; b=bBgxrZkXK0fx+cPqs0V4UnpChS1Nxkb8i/HFU40N1zES2BxDe7N/1kAZgWf0y9sPnR04RcCawQJ2JG0It/NPZPWWP9hVfDSc6nN+eN1ew5cVDllmIM2kdJPp+IOxOJ0qF1o5t/SFKM5Y6y04QHatJ0tD88th6ucHESnH9x3iBnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750400395; c=relaxed/simple;
	bh=E84BvRkXKpmGRCC928x9DaTXPmaVNaL+Gu+0TyTar1o=;
	h=To:Subject:From:Message-Id:Date; b=H+5KMCi56Iu+NAl1FKAl083PsVBPlZTAthCdIl6wi/uZ8T41g7zUFKnwIl19opyUIl+f2dZMRJ5oY6wfFZv/X4n3HILhQV1p5Z2YyFaDSJhutHvaIdjThROwPSS9tb66eLz3JRFQzSC3AB1aUcElvsCxgdW3hWSWUBl27J4U3JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjcNoKgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjcNoKgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750400393;
	bh=E84BvRkXKpmGRCC928x9DaTXPmaVNaL+Gu+0TyTar1o=;
	h=To:Subject:From:Date:From;
	b=CjcNoKgHIe90qBXPrK63XYrqdDx8skZ98gL7x42oP0/MNxwppMQ554kModFLhuRD5
	 5Zgcu6NeufedQA4Prh4v7KzKWx9j4dFgn5aaMMTzDdTw9lhWU7w/cPBQtvlv5EGnPD
	 6T/NGYVFBQbOQfDBEeH1Th/mzPMVoJPXrGeCxgRNhyAzFnZ1gidG7OhH286Kn8IZ93
	 kzEPpR5RkSGNn5yYVy5c+8L5vWjYcyC4wzC5qnBh+TgrG0WMwhgipzRIPoJqzuHw1Y
	 bhD/CKgVeEZE5V2rYXq6QvSZLBbo8YDcq94iQF7MwXWuPWckeVtvXcUOKuI3rSjGz5
	 pkYHJxx6bSDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928AFC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040039358.12715.3179213903797232024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4aca9a449bc961aec007668987f45ba2487a305fd339ee5d0097365b3c36a3b
Date: Fri, 20 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750400393
