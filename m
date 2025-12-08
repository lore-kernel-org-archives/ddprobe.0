Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9B82DF125
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765189974; cv=none; b=SirkXlIUBFpokoqD03RqT1/4pFcseP6DKA7uidOjOy7/IDzNyBK2vXlVJPfRflI/SaYNyi0UcsXrdhuZxgRAJKm+zrnSGuJNNXdcCDWq+9jyKLI5r6tfOo0q/3BEr4voCoc3OhMakCFUtWwIYNW3qrgD66HkxxeREUEnp56AM9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765189974; c=relaxed/simple;
	bh=X0ez0W3Dbt/K7vVkDk6OiRjiIyBcLm43ociLi9O8Bkw=;
	h=To:Subject:From:Message-Id:Date; b=EzlTAygLIrv47b5IqXryvp4WqDDqPjjALFaFgQtzPRitYu+OKsR8Qibo9C59ye55v74joenQTqTrdLfRs9PJum8UMEUh0Og+X/eoLHGj2/Ey66w7ksq5msUVTMCsHNlEfi/na8gTcqoSVGe3RC5hbT5YUlzw6sIfuGT80dR7Xho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph2Le9uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph2Le9uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCABC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765189973;
	bh=X0ez0W3Dbt/K7vVkDk6OiRjiIyBcLm43ociLi9O8Bkw=;
	h=To:Subject:From:Date:From;
	b=Ph2Le9uEeR/igrZZiAk+0yOvB9FUBs2N3vMUdebdXk9XX7tbUIOCGAFObX5a9zEIq
	 JFAdo7C5SCGOdpkCwWr98FTijiKDaBtdLA6mhSYrz8S8hUdPdcUZalR2i9Alk7pgdJ
	 r/8sfZWtwWYYYE+RhZHZW7wW8pKcnIlTOEIo50z2z8S2Zkjx/ncKIqqWle18elNF57
	 M8eBccGYDxxaZQpPGIpwxKhr4K+4aCim8J1aMowCrkXlSpTp0+4Iz3Xk0AHPBsTIL1
	 MPVQTwKTNOgfL8m1+XpbyMYZSyzqUYXW907u89Q35wK+8OwpU52Rux2E+WRP497RFR
	 9f9FFaRuW0fdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A413BD3B7E8
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518997365.5956.6177104354497511203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089a71a700ce7e32a47b16a8433cc73d45672411c2af1ec21bfb2e55b0d09c2f
Date: Mon, 08 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765189973
