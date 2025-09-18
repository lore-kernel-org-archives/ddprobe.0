Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160B2E36EC
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758226794; cv=none; b=XJWCcO8tixly8FtUo2K12QnEqRolvJryiHmU4Jq96Cd/2b2kKVz0u9+3YoJCn/tTbHua1QPgYvg2qKur0VWIJe7vZGzNx9xjMpSD9greMmoXwPKd90Tzt8TjY0m42lV33dBdXA/fV2Dp/Tzk3IfiXVuxOIb2JEo74x/v70G62h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758226794; c=relaxed/simple;
	bh=6NHLUGKYE2fyQs4xeMb6ytfAvwbbCjKORUXycJ8QAVA=;
	h=To:Subject:From:Message-Id:Date; b=kLizB6NgMZiM/D6L9AQxQ1RkphN8VVp67cosuj7EBn9YsXENYmI0ip9WaMIEESnrpDduSCJw7xCm4MswdnsWkscQOg+ADEegHpG/eixXLPnrjECUzXWbUhGvItMT4GriwDaFqzMCZ31hMQnL48RLnTxaR3JG9d7LC6fJa9weckw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edQ9NPuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edQ9NPuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74AAC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758226793;
	bh=6NHLUGKYE2fyQs4xeMb6ytfAvwbbCjKORUXycJ8QAVA=;
	h=To:Subject:From:Date:From;
	b=edQ9NPuCct/ulD5H2EJc4EIDFn0FCvBaQD2j5j0ut/nCE2S2jvlBrHE4YFtSsf0Gl
	 bwpOvqctLx/eTt4YciUmFUx1/8axFM26ZhGs49UbKcws6ekxSEJUXCBANyU69tvtHc
	 GIt77X4fFQZkzuMu4XzkKwrOwU+ObORZQaI316a8rkuJhnTEtUQnMYMZtCSo/1HEEK
	 ZtrF4Ex0LfuUQ+7I+hE8UVwoF/puPtJDl/Df9mVA4dFACYWwzuvSlVP0Mj4A9JO9yx
	 yS+jmzHdXtrOz7HcEMiW1wJ9gxH8PnIMImkNpI2ciLNdhWfaKFwmOGGJTCh9gPsUuZ
	 EJexB9o25f5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97401CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822679358.19991.15721220727763823553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583e15cc3d3d04989753b55bff440203a9d8cf64ad93d9554918cf4b6fe06912
Date: Thu, 18 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758226793
