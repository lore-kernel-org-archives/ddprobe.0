Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5B819539F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781746594; cv=none; b=ZbOg91n3Ont2sr9Rofm/ZvjPcn8oDfLrp3U2bSI02NDICGpNXk9VYm0oL1sf7l6OWhcmO/eBNY3wVzoPj4BO2WwwbNNlzDPOViCF5c8H5Mo36PI5wJ0IGV4YKEbcXWbloe9Iz/d9Q3oVkWrGoJoOYUSz/iitxY/ND3iHl+OMKZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781746594; c=relaxed/simple;
	bh=QUuGWHudxGtvrXGtC+96RuAqf+JqRqc0JfCUtfMAcwU=;
	h=To:Subject:From:Message-Id:Date; b=ltG3l7D5dN75vp7VCFSyz4FaKy5JvoT5bLOKilvITOJLJFCLVEOjtSud4Q21pNbcP4UmKDs0dabnxnlrVmReoD52ImgnzjkeMh4iWoJ43zEabGzLVjvxjH9Odf8n96MMLKcALZQTokCs5ZEF5ELORvYjDkz4gYXJR0t9P/7TSqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzmKePhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzmKePhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7C7C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781746594;
	bh=QUuGWHudxGtvrXGtC+96RuAqf+JqRqc0JfCUtfMAcwU=;
	h=To:Subject:From:Date:From;
	b=HzmKePhhi+Az4x0NOArzD9Jtyu1ed1b3JL9/jv+FjmdUz9W0G2beDE0j3l9VyWEDi
	 +QR/Hhs8wqEEtUVGIcGjPJa6Vkf/hv+IVgFIlAOV/uOuKpDlG25KVRq5byUCKqBmei
	 4xq4Onh8KohOTi59A9s7hr8MJCUJ8D0zBsa000AzW7GLyT1XMVyCSjICyFo+CCbBzK
	 35Vg60RfuG+j+/55kTCmGeNxr2Bjas7pIpnhdKi+qJcIISm3miCSdKmmGmyLmbiRUG
	 qsP4OU2WsCMJH0UH4BRsKpSlWgs8rjJVuO++M98gcyqoBhZF1vRZQGOuqOI4K9nvdB
	 0qA9yY2wArMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C216ACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174659375.9582.4483510652073267512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d00e137ee0e3434c469ea619c2f2557a77bb06582f86447706620fb34aa708
Date: Thu, 18 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781746593
