Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6AD35AC2F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791494; cv=none; b=B3AxnTv4pb5grdmPmQBzhJhprs0yxaPS84+23F8WocJZQZITMk+1Il3kNfD7bTFaAe5B3kPrhWAvgyvvsoJXj1xMei6fHG8bnWzihDIFhv38sYfoEcrtPX9FsnwAFEk4+K6ek6A1ERG3Z2wp05Gh2j7ChhoquVCr3bS61ICBfKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791494; c=relaxed/simple;
	bh=NRl+z9PFQMo1y5vUHqo7DeV35Aep4kOwzLg/GyVX3FE=;
	h=To:Subject:From:Message-Id:Date; b=dKTILfBfSlI9ruoWfd47V+1uyFCWqMIRdI72Qu8NsJ3oRGajtN5kseGZ97a3YmSvezm/kkAv+rMD6cMSlvneoAWRNfZmDzjWUEfhcMdvnVbO9oplq3ui7sfpAr/4MseiO55Zcle19Y96hVy6i4ueaspM1A6z+WmPkpD641Voj8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKCYfz30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKCYfz30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82AFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772791493;
	bh=NRl+z9PFQMo1y5vUHqo7DeV35Aep4kOwzLg/GyVX3FE=;
	h=To:Subject:From:Date:From;
	b=nKCYfz30mT1hR53AaroCoraN63F5RWtnh9iudM7HDosx1qj3hZp1/T7WIZQRICB/A
	 TGiVWuDfzJyLbJI5DtwYBxosNjqFS/Emalso2fn6cR7VTBoGawzJZw6f0jxumBUIp3
	 LHPavoCdS/qjG40hcSQRp6FASWNRyp8LLPWlW8xxgQjO/bBeo0d5Tl2YY+MF3TRIt3
	 PmOTQhvW7oPc98DGx7lFw9HyzpelxY9gna/uVvTEqBMyZKOnMAx8xjjkOqS4V6Nudj
	 s2puz63QLD51DOzpATUzfAN3hl6sPf9ohruKoxBuyErOTN5K3SNT4V1tR+Vuy46OA+
	 +qvh2fSb7a1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AFFF0181D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279149359.32456.12811937623959233934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0b823da06e2977365c28ceed4b07a9491485f4b4f63d5883550b245641685e
Date: Fri, 06 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772791493
