Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA2042A9D
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785715834; cv=none; b=AkRItl85A2ZIbcOsKFDTE2ZKu5MKL3TUMYpT1a4yUC2UDC8ACeS73bqKU1zfmExP5ciWGbX31N2X03n/5sVSKqlec8LvHZZpr95bt/RRl4uPSOzKsyhNaqjNFPYyMo3jKaY//1hgXuVZ2h9ihy+drFeeP9zHJ7deaV0eW2BM1f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785715834; c=relaxed/simple;
	bh=HI/dkMUbCpd+LHAaApOU+LAaV1pUD5ZQxbYVLgr/k1I=;
	h=To:Subject:From:Message-Id:Date; b=ccVRtGkSLC8dPh9nLx2XpxD2ZTD6TCzDFHfEv0MaXfalci8E+6oVKXdRJe3glV5n8pYDjhq1wYKH6lVE8zGmJw2KDCRIx35NVZ7/hD6FFcnXnpgnFUfChTM6mt8vW9Qfn3spVUZRhP2e4nFKLuPDJ3G5cxLuT5sHy0B5xZqZTV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbOKBNmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbOKBNmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA69FC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785715833;
	bh=HI/dkMUbCpd+LHAaApOU+LAaV1pUD5ZQxbYVLgr/k1I=;
	h=To:Subject:From:Date:From;
	b=ZbOKBNmQDYvlbsDK3mPj3hTkCx9Ov7W2SerIwCTbSOMokFzIskS2SinZmq8GVIagV
	 /06kJ410bZ78ea4F5ErNgCyaLHX9o/9KJFcflR5qPb/nVzz1S1tRJHivwX0038vvwZ
	 ygXgs8sso6MqReB6s1JTLvq1M+nfzQjJIwnihEX3FIRDOhm1UAHPslIcXC+yguwEg9
	 qeSZDQwIbGK0orBrTIy20P0ShE/ubyRXc18SD3uSoGUdGZ1f0t60VWWZ5IW6xW5bns
	 /3xm/ZO04Kcw4sqPpY2bKN2KcsCKdmIj5WrbUZJQBb71Xu/zSLgTWCkrnybxY3wOjX
	 3L03z77JuqwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B017AC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571583368.4268.13419565554449389696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8084058efefa07a45d99b3a9d82ccc91b739e1e2e18b6e9410e85f52e4a4870d
Date: Mon, 03 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785715833
