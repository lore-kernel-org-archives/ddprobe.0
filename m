Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8045135674F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788132034; cv=none; b=CIjup7hnlzMmBi/3fzBwz3bp073ddQfrMVcgAKEUpQLnm6QGJK+G50OKLw/5R3VsZ/uug88D/VYN6ASkSTObRQy+OGtYZmxSbGtdzmJqrhrl4A4Pnz7P62TDW+/buZtoV7era82X5+Iuq35tIoKTx662vBjH6G4Zhu7rdoBJ4Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788132034; c=relaxed/simple;
	bh=JaqGVlfjMDH9eFtQ42JKORLE5Htzy0kiwDfnuzm2sDE=;
	h=To:Subject:From:Message-Id:Date; b=l0Uq99USgG/GFwVW3BrN4q3cmsyOxx4IXx6nbEiwb9Ji4VIm6BnN10jRuYO2OBuXQO3vSAUfbspGqDHKL4TV4IPJPsYirX+DLzMbCy3q1vDRuBLJbCUUMZpVHO0HdmTO4oG4pDPDNY6KoZWkGlQsr9y4GjThaUc9sEvZJoNlak4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci8y8Da/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci8y8Da/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE02C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788132033;
	bh=JaqGVlfjMDH9eFtQ42JKORLE5Htzy0kiwDfnuzm2sDE=;
	h=To:Subject:From:Date:From;
	b=Ci8y8Da/vo4eAXYKocPKJVUXw83+MX1Snas8mlEEo1yu81NR41v+xQk8ydithm6SZ
	 iKCaFXOR435TU+0UTO0NHSRd28VaKuJJ2V4HkNruf7t6JBnLDcSj97Ul0S0oYGqZmB
	 kxnfHqg67ydkZTD9mOAvQlBprbbd43AL5P12zdZzfbt6VB9eHGBmtRiapjeGnNoKsP
	 bI462x2jNl0Tp3Zjmv1MUmhsemZueu6+ZprE+fnLhWODC6+Af0FTvnb79nvSw1ca95
	 hy0E5EFi3i74DVWIZJO6iVA04IuczHSFcpM1t/ykpdWckJfPyzOIB5bCkL2IcXSlPz
	 +NUw508kjD+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB106C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813203369.20996.10632534210472367886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba017e86411fc02a85756ec42213c31d0be270e3aff2db6a4cfcf29080bc7ba
Date: Sun, 30 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788132033
