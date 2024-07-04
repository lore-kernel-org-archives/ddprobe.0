Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589391A38E0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720080323; cv=none; b=EwkHJ7ecFFC+onxsthNWuGJQ4dGijTfT4XQcfVO+aEZsbZtkTeGdxX1Dku4T5AIex3yhpMizilJ9uCSf9coJoICenq+ViJyLs0pYefGjut97StWbrKnFwqQdI/v/933EqjZ3bGfqcsMHQcpTMkegLxoOPnyQBF0lmaGNS16Rd64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720080323; c=relaxed/simple;
	bh=hu4DA76dVQlNngky1aXk8wp/8fnQnk8lcYPBBKbbLP8=;
	h=To:Subject:From:Message-Id:Date; b=kCLRp9b4SZ2eVIagscpYeop1/fD3f/x8/g2wOGWgDXLCIKC4KFh0EMCOTCNbkG7nTKXwYU6GR47Tv58I0QiPomBT4eFZlHsS8cfrDEAPxF8WmA02+bXjCUcZD8/NHFjc9FSocSN8j5vO7A32onPV2kkzD9vuLk9KF1PJOZWs3S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocyjuJz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocyjuJz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8274C32786
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720080322;
	bh=hu4DA76dVQlNngky1aXk8wp/8fnQnk8lcYPBBKbbLP8=;
	h=To:Subject:From:Date:From;
	b=ocyjuJz80WfpQ/sH81ox09vp4dStW1WKwRLREs3WyZmEbDiXVB1TjhlE3lflIfZCQ
	 xxbeAPNny8rXPzgLr94dvEOHtYRNbMqLkP3dlcamppseeOGgBam8nMAvPZnvb1OOYi
	 QmLL3Ory26oSuW0XALDBFLC22RbizM5GbN8GPYI1SfZb4BpGdwD7GpYxRYvw1Va19c
	 e8M9OPi7aXb6uYUJE0EcajDHocayhy7U0ZFw+bUdkaH24U/SktRvMSAfmGR1Iz3fxF
	 NPkmt2KuvRdoZy2GyJs57geAGI/t0f7FZwNwPIEcl93CcSYNA9qs8sO+OweRxdoOjt
	 Gobm3y5KTkhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF652C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008032276.24749.17169029781072407233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86c9e2e0519b23414095aa58bc06356b87e7de3d4559b5911cd138d39220a3a
Date: Thu, 04 Jul 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720080322
