Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31366219E0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722576954; cv=none; b=nPGepm87GPXQmGL3VcdKyKdDl8U8pKIbPzTI7sflr+1oCMztwsTxtaoMhYJhVeIsqMQcrXkCTiutJl0uSDBbvYqmLmnbJgExtp0tD384OlVOTSE79OxAP7s3lt/MdnMnR7NtbVcT3Wt+Wc185Gw1pOLhEMXD26scKbPpjOiKj+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722576954; c=relaxed/simple;
	bh=xVTdL1+FWM31X+a8ScBqYwojD4SRXMcfliBpcHXA5DA=;
	h=To:Subject:From:Message-Id:Date; b=hB9F663nmQzUBTGoyYbnqpHHsQ7lB/YUOESyoDcNiPOuVDyzgTS2pi/pA4FYrA/eFqIEmuGgdRnkkDr2+FKTV7uuO0XBbi+irTU4sMiR2O3UGTNcniT1Vg9Jh+4fwd6T6YGo/pXcKxInHyQLPQt/cepW2N7DCDpJ4QPcHIbFbOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gETOMoVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gETOMoVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B177AC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722576953;
	bh=xVTdL1+FWM31X+a8ScBqYwojD4SRXMcfliBpcHXA5DA=;
	h=To:Subject:From:Date:From;
	b=gETOMoVED/k/CuVYsa/F6uESWE46UA1MVcjCXVy4ys403iHh/J5JfgP91OywYTizY
	 YEhS92doqA2xVJCZN7zA2r1OfpQanLpY7wu/exmSD0nJleM3u5MMZFqgiXhrJQZL0J
	 SsCK2AwqK6OA62sFOgNDFhaDMHMkdcREXG04cLNVB2UjD4Mx4yxmd9KwibGWN7gQwz
	 rxJqqWliDzkOJi8wJMcoSQiQ+6X9oOrhLNvmk4e2CRhtj3Ox1KG4UO6chdewN5hwx3
	 37brOhZs+Lw4OSx893uz3H647dgE9oZTgKSulCMkLFtXaCIlv9ImXabgtlxxX6RjOH
	 t+aPuU+bgCZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CD1C52D70
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257695360.24471.1696748954946689089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff0871d74714c9a6ebb73dd78b81b96a3ee40393e18c3fed7a8ff9a706e82ac
Date: Fri, 02 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722576953
