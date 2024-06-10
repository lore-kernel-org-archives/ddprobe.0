Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090DF18643
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718000843; cv=none; b=C1IQaoQFBttPWKMTXDgp9xFb2n/mshom3jfTRE1ZOq7NYjvSEvN1238gjSrSAeTqWCxdylFPiPxhYv+zp0Ab0ylm4Sd8R81HDOmlNS9/6XHH6PxiVrOtLSRviRBtF1x+KKjeJr2BmIcNDWOQfqYlHPli6OZcClKU6aypqTT2DPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718000843; c=relaxed/simple;
	bh=OaGaHnR8NaPb9zw0ZicEmGliF6kwcOi8Z+OLK1b7D7c=;
	h=To:Subject:From:Message-Id:Date; b=Pr9MLSjIVVSfbX6G03JeDF0vJ71ZOAAcfcZayZLUFHG05rglXAIKRXqs5vMQDYkgkZbcCqqs25ux/bcK+QsklGKiS+3VdeMZuBe/YlRajcf0q/xZLobUatIj5lu3krNp2cMFr7J2ibLZHg5OjL7/jLHCsLgFHQwNWisItyHo6CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHYJ0zIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHYJ0zIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44B6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718000842;
	bh=OaGaHnR8NaPb9zw0ZicEmGliF6kwcOi8Z+OLK1b7D7c=;
	h=To:Subject:From:Date:From;
	b=NHYJ0zIPVEUXx1cUdgaAfyNqL3An8F+LbzTDCkdfg44RWVwc2uTGNMMpDf/IuWlOm
	 pZxFdDFlPGU4iiDDJaTuNj3T9Bcs/TLTOeDAc02ykjEXA1M4vkxP4MNHbLAfLmMW+Q
	 qlcOJzh7nU8SaBECZs+9aOCJsBM20DMI33Jz7wGi6bZNnpJjJAaHpyMcYCQ8iRX8iE
	 oDjuYOTcUkchGhDoGws3tCAHjDlyPuXODP389+kHnFmvQzGNYwC9WWuk3C6DKnwY1i
	 HEx0l363/i11wea0ShPFqXmd7wVnvpiYYG6hR2pPaNCRzigehPwkToRKICaOwzye62
	 9CdpMKRVTlS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B4EC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800084277.10775.6221185566824151388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef7c72da84cb344e7aa7c964542e73a58ad4dda883deddb59b0765ab3966c81
Date: Mon, 10 Jun 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718000842
