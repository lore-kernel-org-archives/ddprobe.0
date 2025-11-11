Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7125A2BB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762840794; cv=none; b=HXEl+iepl8BbbVTCnzDj8a2B7aLSVy7tbfhdXl3U4spFIJtF/2gYz4fzCQeM5/mGbPGKtbNvrK36TQCfG7fExYptl9Bxb7YOz29GBSz6Rk5OJIGE2svQBtJnpbyZs5gXPKMzVijHbFqrM58QVCBeE5SY749CX2T4R27noX073Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762840794; c=relaxed/simple;
	bh=W+JxtYVwVyKkGuBReRWCqmgXagBN5EVKuTeStL4tv9M=;
	h=To:Subject:From:Message-Id:Date; b=cUg58kui3Znfh1wdEbDtiqsDGO25F8SQkW3uYRT5ZV84jMDFj2Ue6spliA4JsvBv00d9R1R00MnPBFMhoVV03KCEc1rwG9MphBYNewCCHjW4U95J7cH2rl/3USyNAd3nzqgOIJv8+dDy2lZXZ6uXmpzOQCTlIx38TN9o2qxJa7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGVGF8XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGVGF8XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5412C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762840793;
	bh=W+JxtYVwVyKkGuBReRWCqmgXagBN5EVKuTeStL4tv9M=;
	h=To:Subject:From:Date:From;
	b=LGVGF8XWaacQJ5ftGS1FFXEa+ja23tjI23ND2et+EQ1zBLpxdoTl4gnOVYSDdQUbZ
	 mFmyOX2rhNl5gG6F3OLNks4cZ0+EWnD9Yg+Lkoak/lYCDsCL5jpIib5uab5+nABFZP
	 Rg2WPjXhQMXsyraDsNgvb0EO2ZmC+rKD79Pi6wagGowcWA2bue+a7Vc6SNxM+K9f+2
	 p9SfRtzSh+UKmciJjI33oKdIXko2vqpqqm1ktR8qIwQYKdznn3fihAJ9BBpJfd58DR
	 Tt379/57di8lJsfHbSLSfFDD8dVrQ0OMBXemu2cDDnS4lONSrKm/l+2X48aqEIQZVp
	 e7TRwljWBnDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E34CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284079359.3772.6495845960777266512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904d4564b524f59b9207d35c09a1608aa941df491d697797229640be5bea4c62
Date: Tue, 11 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762840793
