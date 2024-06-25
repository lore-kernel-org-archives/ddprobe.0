Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1AF286AE
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719285803; cv=none; b=KISy4K+0oAzE2MYbXWhV1wVIk34klb1GBa2jLrHuQjLfdujKcsndo/6FmpGdDj3fXnA5CqRbJv6yIgTX394TvUgIU6kawhiLwwKYOf1xJ6m2jTiT3QiYoiySv1NjRSOdJjaldoIHyLzE5n6emBwCLrWfSJ8Mx5RfYegQE9GJ6zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719285803; c=relaxed/simple;
	bh=uNnyMRj0OrFk1PaTA6DENlFSCki0sfdhURby0db3Yuo=;
	h=To:Subject:From:Message-Id:Date; b=t7OFU/Ov+0kbbpxzapw5Fu9n0/43Qjj62His9TV+vRTddRiza3yJA5xEL1y5duNbktL37sdQM4R0aa075hTTvVaf3APZ78EGJT/u70wVT2EZ5AHvRfqzNtrPEjF8ttT22xRQDRGY97fv9B73HlEtF5MnScoKa5z81/GXO8JUc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCgfdfw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCgfdfw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FD2C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719285802;
	bh=uNnyMRj0OrFk1PaTA6DENlFSCki0sfdhURby0db3Yuo=;
	h=To:Subject:From:Date:From;
	b=tCgfdfw/Pb8BJmFMvvZvFfGOU+WICvJdA+CP7YIEC8YI+FwwyrPJNuzB1xWvSA4jK
	 yPs3uWrFYMTSDVCwoWoimBuFjKsoNSh9o6wJdSEv2KaxATFNgPhCJSMP1BY3BlPE4z
	 nCaYnD48G652ItHaeOVN3Mx+DkdDkDDQSexUimW63JxCIaJCHwKgPxLYv29uLkP2s9
	 O5aJH1dDls//9L2L9pPVwzOZxQU45dOiMo1V+WI2/Au5G2DabZaTKL46bEF5m0EwJv
	 yA7UKa0f14u14Tsef7wfiCSVU/Pl/C1rL9E4xOUgfhQkJAGk96gJxxI0kc8hY8QGDX
	 vp6bb3qflMoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2119C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928580281.899.15652035606261268820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92952e67fadd6b2163e5aab9540c70d2949b138ee8a644e6363d9f4c9fa39ce
Date: Tue, 25 Jun 2024 03:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719285802
