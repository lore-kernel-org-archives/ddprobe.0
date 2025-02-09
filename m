Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA438F4C
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739076354; cv=none; b=LIwaPwCWE9trb2A3+aYnop8i5kOG55mRiknkLKOOpD3OysNuEHhZ2xDz/g/Lt47IRoT2bffOQ6Ia6rQ95O4x28iWdnEi9IvqpmEsDDTNJmKb+7AtT/dPdZt/GGm/V601TezLybF1xAKHDc3maH1cWPFw9efNJqOwDLup2iwm6L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739076354; c=relaxed/simple;
	bh=/KEflzXL+D2ALEtIWfmKoBncXMdZe1BXrTVnJghBsxo=;
	h=To:Subject:From:Message-Id:Date; b=DGrZg9Qv022tbStkLxspyAHVj1/884vd4JRJvGPnqH2PlF7pw3Wy/7uRwmucd5/UwlMixXWt6dwb3e/9cHd82TscK1otNUUGtEpmvcNuhSQ1ZUwhiE8Vs8KmGKWbc3Er9wgkqpZBIUi3WRmF1nTBxh7RNaT3jV5IMu918hIX0m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV9LKESb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV9LKESb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C695DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739076353;
	bh=/KEflzXL+D2ALEtIWfmKoBncXMdZe1BXrTVnJghBsxo=;
	h=To:Subject:From:Date:From;
	b=VV9LKESbbVPoh6JPOXnaPor1J1CjF5Mfr5utxL/K0/ybCcBgmytp9LBHK6q2GbUi/
	 iA+tPEIMQFpHz1DA6l4HnWQRNfWILWHNJCKPOxSCPsZMNzoYcswReCYW6mk68GIeq5
	 43hglKrtCPCpZqAIEjWYUxqorsGuVqB62fU86GkTf9jZ4wrf7LqmyqQoPfiP+j+h1q
	 OG2d1F9B0MTjoA1GP2aG8cv/XBXvIxaEwxXwkoXgn960G1XWLiX+hYhQcUT4siBA4t
	 qJGi58W1H2To5X4lnCtBcFMz64RC4qYwDnCBfN6ZLGfq3bybZkhldzJk+Z/06VFxfQ
	 mEANj3cONa0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8DC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173907635370.15360.4264768684638011742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f60bde30033886f16197a374321cee3758930a1e837bfc4808854f9c7f55f7e
Date: Sun, 09 Feb 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739076353
