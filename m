Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A25613A27E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718401703; cv=none; b=lAzh5Y7RBX+7UheGch5JeZPBp3CejKFWHXIuZfX1Qiua+vcmC8P7iz7MdMe0R7wA1jrbvmi+YmtpbGE+fp1hm94ZCAFLrTKrsXAyQZoVDFYHiZRZBGq6Qd+RDiCIpYxCLc+LWHVjV4Lu98QO2OvUSLmLdfw+T+1ZdzFRbnE6Oeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718401703; c=relaxed/simple;
	bh=caUJLtS54gq7eJ3wrRXbiLelss4dVGQZ7cIhtCi3uUk=;
	h=To:Subject:From:Message-Id:Date; b=ZHHUrdqrr+bxEpUgw94RoZVNPebacy8utpbAWYfVhJxpid5AVN4gJFSlIhkFPRa34aac63SvWCFa7T2GF8GjDxVRs3g9Z2FSP6r3bflYVyQjLCgEa9P0NJSAex5Y9gGjb8BJ7ai10jZ2PY5DaVW6zOFI9685A6uXvFTTzQMLsC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnChvnur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnChvnur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C9CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718401702;
	bh=caUJLtS54gq7eJ3wrRXbiLelss4dVGQZ7cIhtCi3uUk=;
	h=To:Subject:From:Date:From;
	b=mnChvnurLeIU55rgmqM82/e7WvODCbmC37jFuwtoaRR7g4SCiKOwxOJB0TXUmf8Qc
	 GxFgl5v1yI5nx2xHcQioBSQc4SoFQMQsYXa47a3hM7mLMmVTJtIh+BTP48WNHHzwFO
	 76ngO+iTCFSoFEu6GJSyIvB2hhpuw6NOFImdr8ptliiuEdTXWHQ4b5DpEznEpkyCbe
	 xhMwFMF1IOH9Pa1QhkJhQTJn/z/r7QFXtXhABzA5PksG1pPddgSAuGETumvMpuit1l
	 L2cL7pOH1Hoh9lPZpINmMN/x5pgoAXlBviCPg9yWOqq9S59Bw+wKluuHh+A5CwKN1r
	 U4fj9sEVrKSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB0DC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840170276.16600.10868309618219451577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bf0d2f2987c77e87761fab7f8a4ded664dc087ae4727128ae2135c81ec520a
Date: Fri, 14 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718401702
