Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204691DEFDD
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756817395; cv=none; b=Ub/ErQTyklDEa+10GTpdsRPyyQgMV5WjlzkvveavOMtbL5QrSkMlM3F7iZ5opjnII0C12dfJhYl7WT1rh0q97lYsRX1puYsi6bwAPBYjeuhde6iI01OSyY11IhslPbR83xy6MT3VhnwB7BmJi08eN9bbBopW5jxRKJPKRFCXHtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756817395; c=relaxed/simple;
	bh=J7ZDxyKPlVN9OIeCZBmVB4OKvxhVJRqQTy5qL0UScPk=;
	h=To:Subject:From:Message-Id:Date; b=BJE4/lFza042SmhzIjKK8GMb0mig8kXQUcRzDg655ut2PWZDA8FPdxN/EL1M3mGqS+9YX3WHZc217/UHNbbnSmDj0GHeE5ONMMZw9+w0Lq/YVvs6sQKrm2h1t6bE4llCmsdx5dMb/R0+ni5KJo+/dsm5doZfe+NCNUHX5Uh6S0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc6+wWMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc6+wWMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0253C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756817393;
	bh=J7ZDxyKPlVN9OIeCZBmVB4OKvxhVJRqQTy5qL0UScPk=;
	h=To:Subject:From:Date:From;
	b=Dc6+wWMCLzxN1uW4LzEiOAy0ezUwPXPSJnQ0D1oTZwDAKpe3j32/FSOA++1ohO7iX
	 wQt3E+qjtCD1VS2843nhlRk7B4SaJChSoJuskeiAcfAlUOw2Qlb2xHHN7Sx7IBO0lP
	 2LkyT71tUblW14zZBmuWfVXjDij68oCRmVK7SDSXepXJd7Ofr4+pBblwHyGhCjkBOz
	 AAhQIAZl/mBhwhVWvzcJJruTcQ5Qq6FkFv6blkauTHJbznE/rrJXk08fhZiEcSV3Ro
	 1KQjQVjHeMOQcqGn3HrCFWK4vqL+fHEyRL88a7LogS7itwLwigllFpcBx1FU51h/EK
	 kA8HEVC+kG+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC88CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681739357.3057.71758349191125781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d09fd183f587724589698703d94f0139d9f8ec73e77882c12270bdd5a2e417e
Date: Tue, 02 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756817393
