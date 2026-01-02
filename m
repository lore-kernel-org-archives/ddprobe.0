Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C55EEBB
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767378834; cv=none; b=bscVk7LIO13iPIV05RdNepydG0JCKGSk/tRzoNgPGI7Ee8af6OoygMHh3riUQgaOs7ZlplYemJkdUtM0tm/WUSJaLz5Jcgbg6o+TSxQwCvo0aIpj22PnORkob9SMWtU1YtVaoVDxvRUzZEgod/tnvZPKr8H3Gku2T5ZIqQfQhrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767378834; c=relaxed/simple;
	bh=0bRWnLWu6wO8R1Ql5eGxPFCUR5kmQPNej62Vn/AuBC0=;
	h=To:Subject:From:Message-Id:Date; b=D+EBZ/t+uEPLMh4QSun/poqP6QWLaMFMQy+99ws1Ceofvi4bdJm0FCgm8pQ5KfNFlu7pVn4XxPLI1dkCnaRYDs5ZjPl4PJdtt7vBs77KKrCTofKjaKw/pL0B6GdHdskIOZTIaGblc3dOlDr+Zbb6m6FwPSH4wu8F5uQKtEX1Phc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QucSU08Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QucSU08Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7239C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767378833;
	bh=0bRWnLWu6wO8R1Ql5eGxPFCUR5kmQPNej62Vn/AuBC0=;
	h=To:Subject:From:Date:From;
	b=QucSU08Q/3gB+BWeWmNgYCKnfUsoY6pyu/RksBrIDpBejjE82pns/jIA+weTyRFEv
	 mIeGGeWl+25F2+et/eqPAsWiR9XhfZRrj2vw8RBpNLFIWWOGSZZ79hotg9muVhGAzW
	 neRnn4xJ+25FEgK1rHlNdoPrzCwtVC9D/EFSzfpQCFEUQ730C1DnIcMvB58n984CVX
	 /rsbwChctjwnMtfpFoMuoYq5RCB5No2IZ+QbBAPM3nylJZkLnOn+oDCndEi2d2DeNp
	 8Te40kyeRpFsX/kL0BifahN+tLpsq1zcooAaVFTsqcB8QTaNEliawWWNfLav7ppRmb
	 M2l0Td9xaOUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95223FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737883357.15949.3276674658899367628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d560628fadad3ac6fe000584175d720c2c7e72e90b254f2aa551a8a52f621c11
Date: Fri, 02 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767378833
