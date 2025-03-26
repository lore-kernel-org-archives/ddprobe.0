Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4819E992
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742990394; cv=none; b=JZRq30j1klagtzsABfVTyyDDBfKw2oFptaalSRfikH+cenVJKWNfX15BeDcCF2rGSPOEPFGMbjxODyYVMPsQmon08ExH2Tt/PPMZ9KoiuOLieyPlK/DFIb36ee2kDzIgSk65Rjpzcp+91nA7TsSeDegG9SfjHGF2MyTpNMZkEqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742990394; c=relaxed/simple;
	bh=G6LRrS5dkFWCnRewkFuN8kJuUF1RhM3m0YKijL69PCE=;
	h=To:Subject:From:Message-Id:Date; b=aR/2xplqrADwaSaH/Hd3eKAimVRS3B1y1iEuHEEmdlZYihQOI7XVzcqx6OmLgxH0l69tza+kg8+1Um5TUK8EzPZre8564+S38mzneqv70wahAoiYY529lBZioeVuNcj6H90Swv4W0wjJAT3yy2Ajt1Y2so6eeSsAJRkd8NsiZhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmVfjPcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmVfjPcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A32C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742990393;
	bh=G6LRrS5dkFWCnRewkFuN8kJuUF1RhM3m0YKijL69PCE=;
	h=To:Subject:From:Date:From;
	b=EmVfjPcWSy+Injv2gyivAXCdUC7gAT2dPfQpTQ6nRuN1ghH72PDXA8pnUzlhunMSq
	 8vyRYWY6+zAxgtGitngz7Wf3pNMVJhLvwyEAyHexqSMdkhkpiwyl4gU/J0rimf0l4L
	 OC10R0rb7L30FW2h69EajcL2YuEXEj2aBEaAGIYWcD+t3gTDfF10RBA69yZ9Lyk7Dc
	 3QjJgvMoweUc32EHb+NRvd3J2dxTk1SVmf26tmBYac/Bv4JLd/MNSPF8eALKlGeDIF
	 gjEPAFFb32j9cGrmHCzSKJgK4ZlY/RD+4i1IYKLiissZfLITTAIt6oGqhSRCFE5Fdj
	 OMauzuuNNw9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C03C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299039361.29183.15333420377228252425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773b3ab4c70cc4b503bee3f5ddc8863d3a60c597ad4f4aa48cefc20d6afa9198
Date: Wed, 26 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742990393
