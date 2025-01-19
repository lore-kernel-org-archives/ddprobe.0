Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAC72F2F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737305154; cv=none; b=sv8+4mBAo4OlTxEJZSHOB77AldaPZYDIbH6Op5vNB8KNQdsZfhRH/JRWSDxxv/KzDT/28YYBSh+pQm1p7lfqJq53PnWbjJtDXFYdjx4Pklrp8iJ58WWwVRHpw2tY5x054X7YiBLlwITignuR4luzb0w9xuK1nuLrbVyc/q5KnRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737305154; c=relaxed/simple;
	bh=7WK/n4g78lg0H7xiH50SLIzBDEE1vapzM1J3jz1UEyc=;
	h=To:Subject:From:Message-Id:Date; b=RDCPgDaV71JqvwcL0DxxqaHrkvh6eDjfRa7BxCAprRCUWD6iRYVKTLAKhX0lCMkQ3gWlm4hr8G6ekEyPlcMDSsyK1Cv6UBup0oh+e5m3+287gO6msw8jSuRQusnJeUOYay5K+Xke0ZDMPD6fZiSh/heSWFlz5KczBFKdeWV2z5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceeTR2pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceeTR2pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22B1C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737305153;
	bh=7WK/n4g78lg0H7xiH50SLIzBDEE1vapzM1J3jz1UEyc=;
	h=To:Subject:From:Date:From;
	b=ceeTR2pveP1/ExplFENGnWkC5rgpLLZSKod5MViTzM0N8ELLc0We/a2SUaxirEiL+
	 /4my8W5mno6WnP0qA04PRuZdLIzlpayXrx48eLgrq3YYrsKznxJ0syPCdUveMEomM1
	 VIc9WHyxCWKwSU8MZYAG4Nkn1zdq09Q1QK3BpFUOqzYowGgMAPTpYDJH3n7gFVrr8B
	 r1e3m6P53Ssso0tOkIoxTy1LjTSt/uX8UUuauTwEcwOd1Phkgk6CCncvhRNEmxm7aP
	 a1kT6xMNN+uRVdaaHHXWjNwFVu97Mm4FfdqCR1XDT6iWDiR1DihPrbEdzgOg/956Uo
	 A4TG+z3TPlxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F66C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730515359.15874.6545237398217234769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f461f7bc4e709421cc941fcb20ca83eb0bafd83040e11e7614562270887276
Date: Sun, 19 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737305153
