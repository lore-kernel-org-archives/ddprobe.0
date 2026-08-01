Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59252345736
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785558034; cv=none; b=jrEMSxC9CATMvnuApQBhzeJA+q+ezbF9iSqpQEeUC8U5HjfmFe84IHkCyki/B6+4vjHl65qKs7loRdNWaAiZX2SzB+VG17C4Up3WaaUn/USWpYJcEVkRe6tHTHLiy1qH87Y4nB3TGFTFBgskO8jhJJQ9cku/iptlSCI+oDUaqzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785558034; c=relaxed/simple;
	bh=wdOuPW3wZPxhnwCK3Vlw29j3BvI44IZyy6tKqEp2jfM=;
	h=To:Subject:From:Message-Id:Date; b=a9M/cpzSVY6F2G9mS8A+bMGhyI/jgF2mukr6Wn815tYyWOcj8lFL51axU+ct99ZNDVLcuu/7yUVKpDTG+Y+ifk8ZYtZP+TK/RQPVohJV3q2goUa+S8O8ecMkociFU5hs0Gu8gL0Kd/7lGR+ELnXHV792dkqQ+TmPVEdWiDGmCSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv1mmOl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv1mmOl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2393C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785558033;
	bh=wdOuPW3wZPxhnwCK3Vlw29j3BvI44IZyy6tKqEp2jfM=;
	h=To:Subject:From:Date:From;
	b=Iv1mmOl59cU+xtrcxtn8WM2Ec4LqiZjFb7Dx37zHe3bvpS5/msvtITc1sVRDXPkqa
	 acCufu2ksVZL41YoFg31/USJp30JAZBcXtiUdeasKfYmJV3qJvb/Ylw+oCNnuWklOB
	 CMLbbvtvWOwTXDuWoCxbee6PqkhtL9KWyxB8U92WVFktWeLnuWLl1OXuCb6GImaKw2
	 CCbQ3a046bdwg8tsrX8zKvMtW7ikIS/KTUsZIcxvcIq+qYju08dgNyL6FH0Y2w+52C
	 d6+Ojm4wGGYw+XXDLga2MUuBaPtZouJF9/pmbxKsUFzm8+rmHc458wuOXvdzLqvY6p
	 xUgPcCbQRwiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F46C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555803370.6966.11290347627277214890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0da453c24dfaf261fbaef3cfd9fcd122be702b8271ca926dc425c0bab287f79
Date: Sat, 01 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785558033
