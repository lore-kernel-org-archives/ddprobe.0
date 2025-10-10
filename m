Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD17273D66
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760081394; cv=none; b=WW+U66bEw3q4kma5nDdKYExgs+p+arCa9nhg2zPRVdxQ1yv23d8C/cR8pDLfQ502s6kcAkBExU1MsjikOKW8MQCTv+STV2xV0ITR3dZ7u59bEHJsNy2vWdeFG6GBEEfjmOjUnrvEbKcsXbHgbF+QM6hHa34RbVrfAYFo71aFao8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760081394; c=relaxed/simple;
	bh=LrBnu91u6iolpor4wKa3dK30J2Ob8Mh2Xq63ARP5gxc=;
	h=To:Subject:From:Message-Id:Date; b=PdXiK4+FzDOS5+R3bkVbk9VxDCnrptxaOcCgGMNjJVaAyNgp5PSgmrFLN1wlIqdggi35YA8Fo0C2zvrQg1UfiXASJd6EHRqVrKZrBu+0elDwXK8/5y2f+6a6L1ihsok07NnDqt1iAYYyT4+X/ZxZ/3uDhup9+09nvRXSoCumIsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOebcnHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOebcnHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DEAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760081393;
	bh=LrBnu91u6iolpor4wKa3dK30J2Ob8Mh2Xq63ARP5gxc=;
	h=To:Subject:From:Date:From;
	b=AOebcnHRq1pA5t5gb1sa2YzDIyRwL8Ej40obPwueJZyH4AjWjhajjHtezMaqKUDmN
	 id61VrJg5symee4aDHJrlSGZK3+5f/75/Bo9iTo2OjU17AeZbXgVSqJ1MTTK6+RCnj
	 V3t7Clo9TyvWdGOSIniCVNrf4/ykfvmaJ1CdXkMdrJsuBlkA3nA3x6uBP0V+CAxYI8
	 MeI82fkjFtiz+TJ+ehB/gNl7CxdxqlEZjfP8rnSCIT8jWb+EZRygG+c4WVk5gF+jDe
	 1N3B/M7IkuqJ6M3tCaIH0bGjqjrPPDKP4pDnswByfbAe3D5W6MCSN9P1HViss7wRY8
	 9Z8kddJiK6KHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A51CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008139359.18038.7447914178380967307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92de01177b3bc9e4f8f4db3fef26751b920b713683eb1eb33554177a08c6f7cd
Date: Fri, 10 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760081393
