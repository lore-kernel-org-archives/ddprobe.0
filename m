Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E671DEFE8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784636914; cv=none; b=LlzZUCwETdReNaioRQuKn0echE2QXgyQ4yL53HqOi6YWL58E50hVsgLV1rp+hL0ifNjkDlphesQzOhN3AjG3V/aAC61UMre5Z/KQGpos7yZWgfB6j9XtcVITVbW3KICbl4nhBAPKEhAtwCNg9WWgO2X/IgSCtaGxd0kWh7bz55Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784636914; c=relaxed/simple;
	bh=d0pWPi9dvDGH1alKNeRZBdV5DV/4qhmw6lOClaMDtkY=;
	h=To:Subject:From:Message-Id:Date; b=W8pZ/JSsqf2GWH9p3Nqfa4Ldieec3shZZTVins5jejGsqEKDLKZmIaLx1AjxPm/cd9XE/60oEB4d2USrr2Drs9l7ltEzUpY6OHULL+mrf1dP++2YN7VlSFOuKzMWPWDfhjDBSiVnbJ3wtOeJOhcZiAI05uAzEKhhugzHdLBpmXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvJyDzrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvJyDzrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E90C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784636913;
	bh=d0pWPi9dvDGH1alKNeRZBdV5DV/4qhmw6lOClaMDtkY=;
	h=To:Subject:From:Date:From;
	b=LvJyDzrhj+0JPVILrc0c4U2bXGreXK8C5zn5257tThrpRfBpoFMprboR2ZAXt+d8X
	 4PRTkj71yDTeyL9mKQJ9Nsm29OFzZKK/FHQxuaitVM5PKl8+gN32ypLW+XRrLtiVuD
	 XzZX1Y9FHjgwTnKziRowwV/MnuI/qx+jJbFWPYTQiuyNHkd0Befj14HrB48FHUqOoP
	 8HKdBwXsizARjMVKYraYxzIBq2nIZXSH3rf0fkyQcqJL/IaKwZbV3eVCY0xcvCV7/L
	 FW8rkcYG+uBYtvOTloO3SjYNKEIBEVO8Pa29LfZ86qz0p4vDBnB99c7kMX6rdPgj8c
	 la0RNfdAHrFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B010DC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463691371.8014.12564873555992294847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b372de0620528577bc81073f14defbd97670720f8fa1fc09ce78ec0359d20c49
Date: Tue, 21 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784636913
