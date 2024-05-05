Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C91822EE8
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714918343; cv=none; b=uMnBuGKyUiHJtSxqJ3IieLRoKA11b4qussYxSRWYQHXumAwJHz+DWIrDRcTX6lQytR6EYfJs89783GMvbAFvA+OrXcKBcnwUjbCGrm2BbtDhflUyBERRIw4vUMWuXd+r9px1jiTZfx7+XvejRfJdvY8dGD3IEZXQyFFcZnVe/9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714918343; c=relaxed/simple;
	bh=+HimVGxJNeQJIw/h0fUpgkojZaEDSAx2cqfbNRzHuf4=;
	h=To:Subject:From:Message-Id:Date; b=N/c+EzE7LG7tJhTMnF+vn5XKv/D7V95Lvr6bCPQ29jlLAGtDW9hPBvPaXBTxtYloW2eBQx+wJZyWTDgw4rrKx9S5chGg7ItDAJoPuO6IsTWkXI2q5JUi6GuxssCjs0AX9LdSYiJpJ8k/ctnQfn49URt5tRMyos6QnEnylndPwz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R27KVr+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R27KVr+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5F7C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714918342;
	bh=+HimVGxJNeQJIw/h0fUpgkojZaEDSAx2cqfbNRzHuf4=;
	h=To:Subject:From:Date:From;
	b=R27KVr+Z9JHzAojiKIXD7CnMmgqdE8252S6ljct2Xkjy9trEoLT8zyQwzwszWucjU
	 wP9rAu7CC3lFLT1nHAD4SdU2lnpkA+6kWVRcBamjt56ZHrGGd8xcp4luaLvG4BXf9Z
	 FBJ7b5oMy7jdjTeQwrsa5LNFJ0Z+u1FaC37DtNkfgycZ4cC92HLH5zDSXoDGBXz9WA
	 n7AXyrY0+KSO4U9yflrsYpcF/WIkQRVdRisRjAKRMOghp8ZdYclfFxRd19b5L2zuiQ
	 JaoMveP9Jh81l8igXDG+bYwoACReZ+5CtLJqcRHYqlN0T2bkydOui2n0WNqArzNlJW
	 U+ID0OBksrBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77D6C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491834279.6921.5269995383545802885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ba7a302c51d1d73d04986991e5d5e122cd4c0d169fd6ec7da016f1c443eb9b
Date: Sun, 05 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714918342
