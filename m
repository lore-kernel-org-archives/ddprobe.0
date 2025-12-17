Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250A031C58E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765977234; cv=none; b=MJjtr0WHV6drqY+b+Asn28cjh6Bjfunx1MA0dkjf2JzwsmE/o9RClU0xLaiJg6E2UPbLRP4y93NMgquIrOU23UXtNmHqBYtp+j8dBoPWa8xsaYxK3qpCQ9KAxWyhgCdM0pfLQrRoRXsB4R2gNLNY6gADrTFDHien5bWpUBKBRY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765977234; c=relaxed/simple;
	bh=pLTPs/KITL6/w0KI1ECHPBACXpC9/3GMRCqeRGJJuSc=;
	h=To:Subject:From:Message-Id:Date; b=lS5P7+XuQlsiCSDOo4dkNw6v/M72AxtmnUDwxiJtdBO8GbukYiYW5oUJ5CfxYBo7WECWBZGVNY9TArgr8MSzk2z+1z0ZluM84G9+BIJE5FNPITvMLkl9E18ycxCbcNcdUPCknoZ2Xxw/OhxPNd6dJYVGAjcQX5maTzdu/LjEVwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsFQoP4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsFQoP4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2BDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765977233;
	bh=pLTPs/KITL6/w0KI1ECHPBACXpC9/3GMRCqeRGJJuSc=;
	h=To:Subject:From:Date:From;
	b=hsFQoP4w+XTVknMRDXw+vNS9e/Y6a3edN6v3PuCOwCGm9fm2SE/SA4SI63thpjueK
	 Xt2yS+i6eGXqyZoA8ABSqYTLWKIrTUO0aM+WT6OPoPzxjvusETb35ldh+4lDzDgefV
	 S5wO2bYxccZ2yhKdckI1SRPimbed2C4Yj1snCNhdXWNgnKxGYRqmgqoYvPqH4KxFKG
	 lSE5KYY4GST6QWG03AcPpEPXr7H5P7EbbJo5fyrns7KExLPcZQ8ZUcE5RSC5GJv9V2
	 5/3hhKW0wfw4E7zU1/coZxlOEythyjTmk6+lHaR/Gel9HxXIjvPxwxBwFq5vmKkmXm
	 Ka4Z2pada/agw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FEBD65559
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597723361.27579.3000305190934691535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a8bd2c8ed7b39370b90d32ebe82b1c3ca3fe97e87ee089fbd42781d4c2bb00
Date: Wed, 17 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765977233
