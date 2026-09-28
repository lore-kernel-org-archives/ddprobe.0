Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D584D37B8
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790625034; cv=none; b=oWf23s5tPVZj76/+qkVnOu8HDXW1Bvd39V4VTAkP4R/0xtIRE9Xc1hiKvhYdEk5NSnShWsxrZd4PIbC20sLLqwPIQa3sSLHVrmA94zXgm0y9Ep9ajy25nhV/SL8uj5jsFrjE+cfKyK0jqTMqBxBN8I9g2+X+zvuejpMBrkIpkXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790625034; c=relaxed/simple;
	bh=a/ydR1y8ksNfjlcdYEsI4QPgRYQ9b/LsWBtfkmq/npI=;
	h=To:Subject:From:Message-Id:Date; b=oin3mtTtM8BLo2KW9Yat8FepLhmPW02InmMh6QzCYZmwHsUUH7EvyA1lneUlVdSN0XKdAWOEsSN/1swvJxWVVM/H1DSEM5gyxHN98vkZjnJrY9qoFDas0KAlSvh8tXSIGKYORrJW2zER9HABQ5yf4ru3+nrlu02NZA6lAIx1B78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtW0pcSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtW0pcSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D065AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790625033;
	bh=a/ydR1y8ksNfjlcdYEsI4QPgRYQ9b/LsWBtfkmq/npI=;
	h=To:Subject:From:Date:From;
	b=BtW0pcSUt67wTr2WBM1aSdx3N3cSV/VgIb9mrhs+r9kpnOIVM+PxaWKTRaezJcfPg
	 bYpgxjLNnYQxHwNd3zJphLvqUqZIHxbvbkLfoZcob8PA2i997vGO42VxUuFn6t1vql
	 Tj1nZ9zEzcI1FYH7Eb8dNVWnS2zpOJ6c/FGHgIPdjscK8DOesgvYPYSRJ3ikDjTKFN
	 6we5PMilhIMpLNlzKwZz8wWVyhKjskCxKhfpPb8rPxtx9umf/HI5q7JVqIcW/yluGp
	 iUL/acDjFaLVynSffoV/AIVeIJx1dATwNXeMpWMvPMwPnFUqN5SUpTmgDyroun7e5N
	 hEeFZ1vwCFF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2BCA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062503368.10683.1144214875080921562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0205242b6147a9701197ff60a681d731ab9e66c8367197b752ec878c1d276a6d
Date: Mon, 28 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790625033
