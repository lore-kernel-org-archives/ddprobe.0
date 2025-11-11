Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B562EFD9F
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762853994; cv=none; b=UObrDYzpBEKUjr7jtBB6iVxRmNZTbDyqsvQpD3C04LQHeclJbt+hMyYHgw3N06HGifAdAlRP4v00v/PCSf2YUglNC/eqaeHaMT2LpgqGVexaXA9bwLejT5RbZ5IjBOh5pPuHSdAjEK52e1IUIK0OY6X7af0LUq5X8y+nlLmSdwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762853994; c=relaxed/simple;
	bh=mVN88B4xdFGlv5myfo9A96FxowasUFkwnoxKJHXci6k=;
	h=To:Subject:From:Message-Id:Date; b=YqfcsBnjqfFBIxjISqFy2H526iQvlOZGJC6FwO8vyZMWkCLxlGRL+2eP1zPg8yyLsQVypZyEhOPubv7B1KR8MtFN8SWwTS3EMWRpniAVQgmYMuawcGXh4XejRXuEiVZ+FaZ9TkO+wcnR3uo3Vp9wb6T6gHW85qDlxdXPSANxb9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDfZpt+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDfZpt+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7942C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762853993;
	bh=mVN88B4xdFGlv5myfo9A96FxowasUFkwnoxKJHXci6k=;
	h=To:Subject:From:Date:From;
	b=GDfZpt+rg9X3nv+Lek9020w2jKwtYhxKb2czmhQBHGATPR6OBFeccjJHeEbz3uRzF
	 jbkaUSswN2UVI9qjWFvziU6ih0VamXZ874GvrGTZVffhDNXlYknxgzEvQf73N8Uw5N
	 0TnTItho2MEB7l9xfHDbes+bBtgBMuiy0XLw35LLE+CKnQscYPqDAdcboA8MsB6M23
	 BQ+egwEmXIS4O8l2FzkyFtcm8eBxL5HUZPdEiXfav/lFCXs2KZPcG+lTancoxG4LHm
	 cKR8DSvXDn6N6pTca5OWCdNzy3kdwfdZP8hOL1Tlk5Kb3I8FeeDWTUNB3WTSzS7mKI
	 IlJsUq61K9PUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5CCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285399358.23760.10269432214030861852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39321d6581ca392556900263973a8e75bdbea8f499e2b08961bf83de5778157
Date: Tue, 11 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762853993
