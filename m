Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B61199FBA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772508894; cv=none; b=hF3+Q3OOXKlKKo8qa+pr+5pF+4kBV4xJXSFYo827Z7veIQLBJbSeOY7e2C/MQTOsk8MrhMrnsbJuTljUmvIycpPr/Z/1sfX50KCcDlsfXqKaKzV2uW5jZ5RmfXEXKWubz3q2dL53Vr6ylIIoKGZGi0IO2fRSw93P7L+MRd/DqaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772508894; c=relaxed/simple;
	bh=fqJYN3x6d8yi0onir61/JZUr8SuiTpwUP6sK9632Iuc=;
	h=To:Subject:From:Message-Id:Date; b=bFg5pUmNPkpaLWG5YHryXVmauJIhcpE8X9ZQG2ZvjUagjSfOHB7OtQjuaBFaEp7p8M7Kqk4mHthojV6oUrAYBXJvDh0dYra2Zo5Tyqi0xvrxws+CnH0AVPuo81o8oZNRqJgb+TGbUf//ThnrC4F1Q/iJrIpG+H949VwGj7wAvIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxyHsGlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxyHsGlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD34BC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772508893;
	bh=fqJYN3x6d8yi0onir61/JZUr8SuiTpwUP6sK9632Iuc=;
	h=To:Subject:From:Date:From;
	b=BxyHsGlLol0SygUtVRXNT8vDyw7OBNkZLaUJJpwOg9a57V++mjYqm+uvxCz7CNuDI
	 4STpwvNA15Hzp+FECIyrB29AQhM/K+XrYDk+0ghIOvnLregyrr7KnMrgnqIHMl2qNw
	 oZVdwXWFSRpwizLRVom5Z6YNGL4pGnLmDoIqBA814PNb8XB6U1aITC3T6l5nne3X+s
	 OHY3G0xRa3b1B3036PYHllQkQj8kE2PNYSMzl7Yp+ojSGYufN/CLah9QbkczKdfBxz
	 KJsLnPbZekR5ckEIEjbF+RDOpZtLmGhmaHET4l6zbsT3/rl+KlCR4z5tojX/v5T82h
	 41vcWSd0z0peQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3408EB365C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250889365.20736.9519231454510447424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc91e506095322b0051fb1c5f591decb2462a02d9aa7e72074e30a914e39c198
Date: Tue, 03 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772508893
