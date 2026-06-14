Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523CA125A0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781475394; cv=none; b=CGFBwG7m3glyYxCq+eO68/5tKURirflh2QcGiL90Ir/JcS5fFN637aUMgrb4L+5R25u3K14XLKGyoetMXmIVHHkXxMZibbVm7O3PGkilSy8p5qh9HfCMVeaVMBuCpeK7MVrrfp/rlt8M1jFHgC3caLER/3XqMdiod0OAeATFiYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781475394; c=relaxed/simple;
	bh=65pBqjd/CYEGsNZWBWziZeF0rzB7dLJKjZRnGexDi/g=;
	h=To:Subject:From:Message-Id:Date; b=fg69DrEBAweTxos/nWGQQVOpyD9pGqQ4fTFBLa/35UdcuAeCFVKHKP4YiwtlhmfeTctErLjahn7gCkY2zDA2KLMKQKZ4YrBzLgwZtnTpoUsyTvbAX5AR3qWJrmW96qGVCCcchGcr6b7PXUlKZaubg//pQMM+dPJAoaik6X04yrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCk5dIoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCk5dIoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EEDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781475393;
	bh=65pBqjd/CYEGsNZWBWziZeF0rzB7dLJKjZRnGexDi/g=;
	h=To:Subject:From:Date:From;
	b=QCk5dIoqr6ThFqXxzNA0C6LlXvGe4TBlCKUpCiPBTLkeCSU4CR1W3D5oEVAtcCcJ8
	 oh1dZwedZQX6fM6f8WD575Hmoiz7wehGXorlW2Bkli57+YOPVVktKELJdwD2QURZqk
	 KPYlkPGroXZIGusFxH/unYR+vGsJTPPcHuLKcZ1wyjFpYUll4CMbt9HoIGNwoilT6+
	 BI6tTb1l7cWBdxUaWgEqeKMPqbJSvZJTeiujLwoPokKTTZg5QB9KKbS+i9dRNqjnh7
	 1LjjH7jiB0Af8504Dug1n1Unc1vuEu21jj6/EdA5U4K9nCaFoDnufKG+XKZD2Hc1qS
	 /HnyFlGoP7HWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2545CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147539370.7655.528260106804562844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34d92f35c198cb5c9c45ed478fac4a0afb25c153f9892dac0dadb5f13b7e014
Date: Sun, 14 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781475393
