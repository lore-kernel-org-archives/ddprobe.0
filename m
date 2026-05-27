Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55B42236EE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779840756; cv=none; b=MQoRjs42C1A+2wfZ1JYpUcagu05SIyCoMmZmkBywsJCDpvOv/ZGnZXvP2RQKD/7+4keaxRaoKtVGvkyYJMJYMFkwpkAP+jrsgmuydDWXmY7mqHsD4c67x4Hf/KPemKYfxjVyC6+Ik5Yo7b6OD9p3uC0iUythjKU39VBLnA7tkCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779840756; c=relaxed/simple;
	bh=MMD1ZRj4LO6nNhFEXsmLNMPQ91YwlNYWwdR4Nxm1EIk=;
	h=To:Subject:From:Message-Id:Date; b=VPhEBBeWmftKTGhfHsoUlPO4+tLK03qVD5BphCHjdLsN5BHj0lRygceg4um51u8kJbXyVm70h7YHQv5hiQUryU0/qGH4d1F0olpf9i3IGZiLlAievVsxdwqjOjftmZHE1yNjUNe/DclHnYvxNQcxLtWyQln7ilAXG0+LiEYRXh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOSLBcBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOSLBcBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D3FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779840753;
	bh=MMD1ZRj4LO6nNhFEXsmLNMPQ91YwlNYWwdR4Nxm1EIk=;
	h=To:Subject:From:Date:From;
	b=uOSLBcBI9cCLDegTSmVawCpXjWcH3m4zeYAEnnwQpAneEFMMloOwAd57RZw3QDek5
	 6VJQNjl4Qk12RF+B47+y7TA555khpYFPdsVJac74RAHIuGhhs8OizGwUgSv1qbL68g
	 uTNH3WLWgTd0R2ukHokczPSAAqhwF5j8haKtJbtEUxmxKQhrQWyvLwE/iYVFvI0Y9g
	 A+2PMCLdPd5sU1KuxA5G4KYYi2dpdGmRaJR4txiHaVJXVOT8wdVEiEqh/aZaaKR9mk
	 qFxl2wTFwYZ77BJWZOS7UmFjVckUdx2jlmutrvjwGvuOvVqkK2HX3cb5Y5U5AdyTru
	 BfiG9rgbLAQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A990CCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984075368.627.9824584551159701970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3418dd333d3df283fbad51cd206c94d7d1fafa6e09561d7eece6565e29a3178
Date: Wed, 27 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779840753
