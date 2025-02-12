Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48976260A5D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739387335; cv=none; b=ZVeI2NdNMrfntImRqUk3hhK7xdhabMVaB/M6M4bTJaNZq2g7vFonz2r/qxQJzEP1bDPdLgVt3MXwJT17URQajPjMc0zNjJbbsVjyuxiA0JlRAcO5AggWVt6RZA7uAN+UZDjatSPJnaeqy/gVQF/ArTvMlqa6Un696j1uCS1LArk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739387335; c=relaxed/simple;
	bh=5bK1WphnW8hyq7BnRSRe7e0r8RscxoaaB+P+lQ4jXLw=;
	h=To:Subject:From:Message-Id:Date; b=bj1ttzGRyl9kZISjIEsNlE5nw0iGSwzaf1Pgm8UIqUJT+AxiF4PLAs9nVq7CHWreXP2ly4HU+aBXM2DgmyGAS0oViKmnCIFzOIGl0e8p79Xd/62BLT+Rqwwt8l/8TXlbyKi9dPKleOoji20uC1WbHjFDn7+dP6pNbKmDVdT/WW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPNus6zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPNus6zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FE9C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739387333;
	bh=5bK1WphnW8hyq7BnRSRe7e0r8RscxoaaB+P+lQ4jXLw=;
	h=To:Subject:From:Date:From;
	b=lPNus6zp7xeePePp4MVfS7oG320K2Vi1K+diR+Vqqiza7abR5YLhST5bePExn7/R/
	 XYUIn67NnkONXda4/7lU2aN8vH++utdNEGOR9xrrTnrTxfaMGv5NHioZRRlYEFodHV
	 m6X+y3NPNYf1+w+aGhJBcanp2IVyaKunOwm/mr5oa/QSEx1saznF6WSHKpuJE4bAcN
	 I8p5jTcs0i2prHpsfHQQ6aHYv57wXMxlFJm2RWLrQf/X6iTQMAjhiiDuLNkz0hteL+
	 7Mtpm+QW7jrZmxQ209+QVVMyahOf234ApE+P5/rYL27ULkhZDav8d8QIGkMYPiq56X
	 uUwZ007a+pvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1893C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938733365.30705.11196752394986280501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372883492c14f60d6aa92e5ad82a85f19785de9831ffc8b807bfd004d4177984
Date: Wed, 12 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739387333
