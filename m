Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1469415383A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753796395; cv=none; b=XSF6jmsuj//vwvT9V+cRDmSRgu2gEPgQOyX3kod4PI/5Uhfh7dWDIWDpTAVrr5sHCHUZ31EE56V7J50w8OqsMq3bdnDLEnEcS7ItQTmQvx6cCR2KyVYV0suFe+zJ/PYF6vimhyY4wxV8oe9LdY44MYqDe261qqoYf6miyHGrqtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753796395; c=relaxed/simple;
	bh=LLruW48AV6uSThvX3UwUFj/thjIsdbSwV1RhStQFWew=;
	h=To:Subject:From:Message-Id:Date; b=q7NW1RjMQ+l757M5pEbj8vCOFVZ4+E55EMZi/C59v8wXKo/HO/WoPpyXMatbnLXPhgQxZqWTdVtqSXskgEiGB7uk+Fm4Nty2t8z24jFgWvi38ODCNos9Cde7l4eRR+aele0NMECaGzDC8NWHT0ASKX1OlPLpQ57ivhFLhWOlVSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO0fstLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO0fstLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F63EC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753796393;
	bh=LLruW48AV6uSThvX3UwUFj/thjIsdbSwV1RhStQFWew=;
	h=To:Subject:From:Date:From;
	b=DO0fstLrcc24G+9g2kAHs/Ns3FxOhCIbFKGvc7y2ZOWPcUHS7gjYcRvSNxcgnQgNV
	 9w9sfUBFzf3UYvwALXabP6hA1DNJnr2jN6g+DDkW3cy31Ld8NPUm56AfMm2bQVMOS4
	 sOtqurA3p+e73JyfbMLA/OJ/BMlI/kG0B0hbL0VEcPPILXIQIFZflICkWkEMe1LNR0
	 LU7rHyEd4JS4K9leveDVhh3niFKCBuN+vNwU+YnkGBekqv+GNPNklAXBUy4tGXvhl2
	 4muJAV/liITO7l0tMfvf47rp+QxVOm+9lejQ/JZGnBImrKrH5dkcJkgDhs59weVtCC
	 4OlYy6LTTbPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90099C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379639358.26467.16375011927060722009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d6bca014303bb810751134440eac5f712fe58a2a48f9e3e08d4acedb713b5a
Date: Tue, 29 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753796393
