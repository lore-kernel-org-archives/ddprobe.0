Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3975187F2
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790030434; cv=none; b=ugmX/91eCsNjPi8u/4ECan4qhOilbEqy13aNp8CGGjAtENOyoLjRnGn4OayYtz1hSq4KyLcI2yjNE2lxqzSByS+2AvFMDOf8YYF6PgfQDkJyKEqxIRcKEipjm6sjT+35wuvYV/Ljqlmc3rCTH6wfjOzvsCfmzC12iwrTYtA8APY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790030434; c=relaxed/simple;
	bh=756a3ETzFxmpGY3Ow0qtceZyjThlEOyxuHCjCly+v44=;
	h=To:Subject:From:Message-Id:Date; b=JAOrWCbpc4tFC/Of6ZScvuOySMTvqwzJ+l8L0+8wvFUJaXhW+IGzweheSUUoraaCTa4ZPceBmcQJLL+Huw8mammm+y9Ic9FexFYe/nReddhb3D8b2QuyCMetvlRNItHciB5SelAgumSR+B+615z6fmzdv8JV2ggAg9hrhXsd9og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tku7tncW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tku7tncW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2398C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790030433;
	bh=756a3ETzFxmpGY3Ow0qtceZyjThlEOyxuHCjCly+v44=;
	h=To:Subject:From:Date:From;
	b=tku7tncWspraW/A7juQu+IG0X4trhI0n8x+PzlUuW/HR4PyYoaBjZImbLepS5npmo
	 X8gatwsWdDWjccdyOr7t1F/hrBjG/N9ihMPx5RtPzn73Ho/d/1TJtVzQWUz50MbVay
	 4LP9uOIyWSDJU6CZOEUJgiJ8RwjDCciODVa/VPcKSaiBEzlbrhO9YghltcNJBQki45
	 JlN97mQApcNONDL3HhcfZ03e4HWqqK8BTn1zCHFZXDvxPmtjg/CDuDLqTz9w4en0bi
	 keR+P4O5UL23AI5vEld7kau/V1K2N7hBZYYMlCkpBrzEgwoZ0Hv1wHpJ30cGD6ASAU
	 oyTrdSLAOcymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA28C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003043369.13565.4301611738026890814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75a767b88a39969e0fcb5d9d4b22c242640e08e0854eede9328e5b5f0741b91
Date: Mon, 21 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790030433
