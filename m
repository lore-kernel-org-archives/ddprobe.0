Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBC91D63E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742674795; cv=none; b=U7rFyFQrn1GzLEF2XIHaa9gBj1xd6wlkxi8yDogM7bEeVWixILOL09j8ocLKabmVRBxnTDTUjHP3fsPVdWeOuC3eZ5YSEQg9hiwh8pyiSpZU3D27i6S4cBd3TMPFBPzMx8lVhIES5xIWCyM7pOOX+EYcQvopEtcqKraMjpQXByM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742674795; c=relaxed/simple;
	bh=5kFDM/5p5a3Fvd508MAvKfZVY1WyQVXOYQAzG/81d1A=;
	h=To:Subject:From:Message-Id:Date; b=jDrv8iOfQXBfkPJqqqmmg1EJzR0/V6XGiPa3bbPWGmlv43PIMa0Dnf7UKA7Q764MnrxK7Q0rOLvV60mKSnXG0oRKTz1XcLfqClgFr+zCan6jcpZzjdCPuHzAU5h4yUwJYo9KALAxVFEOg7YQlnYB7jBdWisvVEiH7O61z0zx2oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PS6xEFDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PS6xEFDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD2EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742674793;
	bh=5kFDM/5p5a3Fvd508MAvKfZVY1WyQVXOYQAzG/81d1A=;
	h=To:Subject:From:Date:From;
	b=PS6xEFDQsTx2NuyhSEcTwN4vf/OepBPQwuMRbO55MXfHNspWbVIGR2/FIJzCsUEOZ
	 1FIVsTKPc07ZRs5HxFLDT6TtkPyiH4HvFORG7e+jkypbaJshnxOXKf0IgEstFs+2ha
	 F+3MoHcxXnlQpua191zF1aoPDn1Dg/WAGFVL9D+rjQKVM2n4rTv0SyBrj96cWpwGwQ
	 R+17sWj+wkzQHven+PntD8RUyXII9/Ly0A1VYH9zdaQkyuDP2nAE/urfZTXI8gtTpj
	 T8eUpUm0PAnHtHt22SYEl+88cmNxmwfWYMWNHXidlX7b1QMcHtfBzBqXOO6FHOOwLY
	 kFYkbs2A4IguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95813C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267479359.32715.2077716112138961861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5d1c01627a841da7f6f0837a3e4ea5f1baea72faf9b75997c83435d186faf0
Date: Sat, 22 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742674793
