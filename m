Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9E51E9B3A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738249554; cv=none; b=DDccoIfPoXoL310zdsl90vxNZ4KiMpnItIkd1ibMhslDJ4Ghz3Cf16+OtCXo6t/F/A7fk3MwTa+u0crxqpvu29/NLPOyUnE107dCV2mENxnax/sHG19Lp72D0/O08Y3wLZKs9JeYNDBrSZuskgGST+wulALZhichMpRg1kgvC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738249554; c=relaxed/simple;
	bh=7E5Z6SWZrHitI2GmwKvlAovEpc4WkiC+Y2pD866fbpc=;
	h=To:Subject:From:Message-Id:Date; b=sRQO2EJGpP+Mnrg0vRrETtHQdZE4q3T1V4nrOU2VVl9hVuF1dJs8Z383ih7epS5gok+Nwj1db/lDDJlPDvoIVZaUB3dGyxGml7j3L/lQnR52R0fiTnDYrSPCCi2RwdVLHl3KWg+scLdqmpsvVJonNkyet2exA7iAoR/BEoZLb+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ5GCMbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ5GCMbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5CAC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738249553;
	bh=7E5Z6SWZrHitI2GmwKvlAovEpc4WkiC+Y2pD866fbpc=;
	h=To:Subject:From:Date:From;
	b=jQ5GCMbRukRkL8aXah09gDtUlyvxb3RUckPSCbdxdBuNUwg2oHb+10OkdZa7Kr9OU
	 PtQhasGnTwWzKTfSiyTqc9iA34dcP2NO4+t3m8/JsVFAJry2kjokL/Ewi2aXVO9u5h
	 UZ1D/TleuCaof9REjiI5BWANtCF+PNUZin10ib/Y+zelry127DZ6wpk+4TBJTUieU2
	 Qpr8cQT6MR5k9j/eHYfjf5I2M6JmGcAAn+WKRWRg4N6QHX2PDhh7ut71xODRKqPTTO
	 1KNCL2qNRh2ttpSUEmPDWaeqqAy8gObAKfc4wTcXKvjwryTkGDodNdPdspu5dGOWFz
	 6KaM0qcbaL00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C034C0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173824955362.6470.12373544349261442910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2bbbed576a076058bb859764f512674abf027d05588ef4098e72eb2482297c
Date: Thu, 30 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738249553
