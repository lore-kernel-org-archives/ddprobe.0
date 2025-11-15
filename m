Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18C1F9F7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763197194; cv=none; b=Qc+KLQiWivBrDKFFnD3pQ5G37Nv8Vh25Gfu64+q5z5l/IjuRQ72+8IkOy8CgnbY+MocYaWFA9yL6L2sWZIZjM4nbQIcHTI9bqTnbATAD9QGAcTk5kaNty7g688caLWb+WQtmMgOYxUeFiKoAysDSWQENJLKwUI5NpOFsFMB8dDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763197194; c=relaxed/simple;
	bh=3nd5FxtK2pAbo8WD43qam/Kz1KNq1+HJnH1l7WnXi7o=;
	h=To:Subject:From:Message-Id:Date; b=aUIeZ1fGb4H2Gd1VnCdhTN2cq4f+ejDkpO19RJA50tybwFek6JnC0HQETtMDme5GUaDRlyhqwOh+FZh1lVT5jxq0/pAkwX+UXJ1GGDkBwpwCxpojVoiYfSt1npcB4C5G+jEmEXbrYCuwUL+M5D9SEGdLHnGhG8xptYyueVX0ZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSAcaWRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSAcaWRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF232C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763197193;
	bh=3nd5FxtK2pAbo8WD43qam/Kz1KNq1+HJnH1l7WnXi7o=;
	h=To:Subject:From:Date:From;
	b=oSAcaWRTTV8u7XH4ul6y9dFFkEecdqPPHUt8Oa9PiyM53gOP64aH0Et2vhTTQOJjM
	 nqHXIFfuzN2SlASNSwN1PiGfH/sUFUEJXEDYFLgHuhbTFgDhSIeSNbDoIPfK5quSg6
	 Edrodoz1BDYx80Bd/wfFA5qW3eyp4Y4cNVfZTXE/yRg5UuMx+y4DgZeYSSrXPP5uQu
	 4sZvaRpSos32r6lC2Y8/bv/00Ptm8/ua/IskdcXrZ4vHJsjV1eLb1eiJLTvK/7VasC
	 TW8I1DFz8yCShBz8HME9j9V3+MIq9npsWdGKjZD/eki5YhLXzQP7QAVO9lRJXClOK2
	 Pq8ieZ/gxLRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965F9CEB2C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319719359.26028.4852111230867804703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28c50082354a9a6aebbf409a300d0719c0b0c3f81ca3a871f170f9815d6d24e
Date: Sat, 15 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763197193
