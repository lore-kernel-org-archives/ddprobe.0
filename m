Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EABF244EB6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739050554; cv=none; b=R77/+xMKrvVXEc0k2tNsCCWI5DFb5wSwgqA3gLpmajmWj08VrwkNTwlt5dgcXCUFR6A52bhaBS60MG0GtcWYc32ZBYMDH2LEXoIISCUVyRcdPh1+YnT2ixzDgl3YmsusY4VhscMoY3kBnB4hrLchXWIvKdq3BdJwnFtCz45BitY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739050554; c=relaxed/simple;
	bh=4v95urQ9kCibyljqisrwwfxJ579HMe4j90Rinr8OOJQ=;
	h=To:Subject:From:Message-Id:Date; b=Jk+joKPYZor8E9bmtK1fHn2x7G7iQDN2D6NwbWDsfNzE6/RkWyKwBOAg/w+PfMgiKOTxUb/UpSvMnodOUbYGZbzA+BMSUdq2CJcKC4JPBs2zv+Fbu5y44BDXilnxbCBj4qrciHqyOCYZKonjClrA4+pSYve+2O2BXpifzqY0WEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJWo7TiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJWo7TiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF3C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739050553;
	bh=4v95urQ9kCibyljqisrwwfxJ579HMe4j90Rinr8OOJQ=;
	h=To:Subject:From:Date:From;
	b=qJWo7TiQLC37tKLwMr0EXi0GXQF2wQbrymB+xchFzxoDtT4G4s95Kz0572vKjlzQX
	 R05trXz6WuDX8eqheSmxHLDuDHHBXycSJ7q9e5AFi0oqiq1suJ6iHovIr6RPvaynt/
	 fLNFNhS+oSSJL5v4SdeeTlkLt2Mu+UcSDd199s9p2S82ndAWizlUOfiKwnJ/cFq0tI
	 hpHQBs2qrYyKGpgu3uqgiCT/f9sNiDOBSh+idllI3sCsbTq9TUUztIvzpq8m9fgnSe
	 K19C5hSg2JbjpVODszlRcDpiQDii3NxiswPjrB1ps1ObrrHiQzHJ3KN2tnidhB64dN
	 fI0dyTTpqUSJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0726C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905055370.17897.10535241079671977460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d9147b474038482572ec4db0acf135c6e750c9f5aec497979ee704f95402f7
Date: Sat, 08 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739050553
