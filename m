Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1BE1FC0EA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755935995; cv=none; b=RZgpoF23gO0DkimA34snOfixL9sNQHZCNICpdA1bYVjUpLkhmcUlW01hGbC84ODTU4KBYuViXU27CmhBhX02+UIGvm7Q2/CnKTblMsoQ0ALTwzDDveq+KpCwu3aiJijD4F6jwd81EtoSCr4NVJuPRCm2DdB2yFKJI7geMYSqpX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755935995; c=relaxed/simple;
	bh=9MzTtAIjbZ7qx0fNFGEsxhL1xD7+oB5d55SwzRLJfV8=;
	h=To:Subject:From:Message-Id:Date; b=BVaE5cd/wgPLLHLrIryUglVU7CO8kaHnh1gV3caklsLxuJ2ZAf/o6G8+Vg+NnbJOplcpftc4hsfX62aHZR1CJiqA/5E66VlG6hAHvOASDEz/LhUBlKGWDRqAeKBAHQLyKpSweaaQIWQu7bA8czUYN9obbJJhlgzgVpUhJqenPsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgK1qLSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgK1qLSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D2FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755935993;
	bh=9MzTtAIjbZ7qx0fNFGEsxhL1xD7+oB5d55SwzRLJfV8=;
	h=To:Subject:From:Date:From;
	b=hgK1qLSM5LgEmU+vojQbitBbfT9TFa4fu31DHfS5A8VGcnNeGichIIE5B6Bt1uUuw
	 qNNtejO1aMg/UGc92bdjm/S75xBGtXCQAY7q5E+RXsg4n5GKjuCkhBx8X7+ULXY3Vi
	 sDSfxOtjObSkd0FPsFB79UjyHTt6I9dxTWLNoAkUWnR9FE5GGwm7vJKTeZ9HiC+GpY
	 BXn3uKNm4oPrT8lTs2QYuQBwGU0vXNmmYl/6JMcaiH5wCdoqRz/gwcfml1GWDx8cPf
	 2PJwYnJtu8tXALXaEPxJj1BjPGnogfa9XDsv/k1Jq3l0HRqh649pykXH1WHFEwPM1t
	 FQiP8JQWeW7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8CCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593599357.25408.292290587946881198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72974dfa76126b1621d7ce1a9f303b79d5c3e0d0834c710ac4520a2607e66431
Date: Sat, 23 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755935993
