Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6B37F725
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777933054; cv=none; b=gxqDAyRnL3l0fXH1EUipvTwMo00tPodsAyVLK3rsTvYQ5PKBcL/76GQezWAvMaenNi/6mCtdk2oAjBIzzHdbFDhsjRPWsGKuGT9Z9MDeSm1N5xdJsPo9tqwPQrAKHouNlJ4R26vC8NvcifIrcQKii/dx6m0BXMji3qfmEM1CXt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777933054; c=relaxed/simple;
	bh=AhwrE2wcankDbX4xICbjY9SERzbcAo3KlBml3rsqLbg=;
	h=To:Subject:From:Message-Id:Date; b=qaP9Cb6y9NKn2mBOcVaevHslnShIwa0UDjDwkgR6lwrNEW/Gzers9FDeqlHx1XwI4SC+Xc9+hIvDTrsFQa8ei1rH1hWrgVtH+O9wqVj6S4FzbhiBu2emkNkYiC+jVgR1EZjJMQ8l4A6PJLxG91Nro4GheAXWbUovtRnDdEdagLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOyrxQwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOyrxQwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B4AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777933053;
	bh=AhwrE2wcankDbX4xICbjY9SERzbcAo3KlBml3rsqLbg=;
	h=To:Subject:From:Date:From;
	b=aOyrxQwb5Zev5rRXuQoYf7yG65SfvaFR2lTU6+y4xh6nnU8+10CZyEwgojXaWCFEe
	 mS75pBZ1D0UAhuoB6TEYKMtNqw0Ll5dyL4CA+VJQcL8g76K+8VUmqRU0Ua8VVa6/pC
	 JXgSYip5UNkUX7xMBB4BgFZr6DVQg5k3NEIa41mlD3QFSTnMQxUySa58BbgwzZUvsU
	 lrrSSPL2KCZHucZTmeUYAdSHW7uXvxKMLZYk1hCbf1hbey0vAIYR5j2/U0LrC8IIep
	 NtOOw10zgGAQNDqoKPjPbU+gnQLoYQnfCHJtDPSIQ6W8X6FJJdUnW96JGm8ADCN3Ei
	 Ej3/E3xdHdF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF93CD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793305369.9210.612570784558740987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1f05baae5653c5cfe7203245080792bb30f9850d403f7cd14f45a8055c9020
Date: Mon, 04 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777933053
