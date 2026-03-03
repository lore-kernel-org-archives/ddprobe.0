Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D740372EE7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772546694; cv=none; b=oExUQyAz2RSF5L15RpwkoGno/k6JWV/rDuO/+C2PklvzFGqCXoPhTlwiuLUoTfqM81yp2nVmNVF1Jzskuh4oqtQU8MQ86hIM2SAiHFGjcp0gKLuka38yv8VwmpCMvLhPNwz6mmGAItQ5TEbg82hA02HP/utExWjNpPDkz3/DcLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772546694; c=relaxed/simple;
	bh=X8OVPR53b/0dndhTbeZHSRVyasSyA40y7/2wHWHSibA=;
	h=To:Subject:From:Message-Id:Date; b=CeV4xd0D/oSa9VmtYxzlKCxPONOrxaMRedKWmWCA6J2v9vu7WbE7i3A74nj0FB73Hj1/W0CZvnaSpTmcfISqPhTqFQJc3Q8ofaXhWkBtdS+k33wATYREuAmQALITiqmztJSdnXTy1By2f/RTv2vVjv0hZf4bVhL7xJ9WplDim80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKupql2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKupql2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772546693;
	bh=X8OVPR53b/0dndhTbeZHSRVyasSyA40y7/2wHWHSibA=;
	h=To:Subject:From:Date:From;
	b=sKupql2iiNjUxTnohZwH1a2NV/RK2S6hoUNSRdaLI3MiOgC/6XBEdIW+UWV6Qw5oI
	 JoiwLqB+xIF3W+5b95KWaGQG3Bm/9h/jwhSaDKZ88tB8/2VSiPVwiFL8bZvZMUlV9o
	 NSD+vA0iLU6rKqooDqt0Z4/+HexlpwTKEst5PT9e7sNkOdCBqxkWJvK1z40AquS083
	 MAoJSbgTz4TcZ9eTZ565D0upL62RNgjB0/59vSxBkJ9ZMBJvaG8/FLOsv0e3xV56Dw
	 1MKhKeGBrxekJTL1/J0+4umOfTa2SGQGKpsyo0aK3lR/kNzgEEQMrPEV4HinHVWtq2
	 oaxKNL8kUOPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97070EC144C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254669360.22330.12427164019423087312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d9f3cbacc57f7234a4fe59f069f3aadf2c0e0396fd550f8810c142e0650a5a
Date: Tue, 03 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772546693
