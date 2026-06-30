Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E6032D0FC
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782841114; cv=none; b=AdqGMES9uF2d8HjtsRDj6Z/F7fdUer+ePIwrRA0vN+xQRvT0fQdFfm6wNJh9gZZz8ygtsiQtoJQxZO/vAeugGnAWYCCHyvTbpeDTw5t+1iQNbqyif+HaNX045dDPtX16Wm99hSq/vcAMr2SQ5y3OmCyecrWqQdQqQkokgkbkTyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782841114; c=relaxed/simple;
	bh=wfesfsLAGU6C+3fEQUn0Nb4k1ZcNZ6Ty4QzPsfPNI7o=;
	h=To:Subject:From:Message-Id:Date; b=n5syAmWkmv2bChoPOEhG6OPSafW5ESvAQC7259z6v09WvlphfWrDNHfgur+1elXJyGJ+T6FWV5DO1vbmJ/u4ZsI9Ylsr0wQaAeJOMBfd0fzFCGfVBR+zqpy0yMxuD8aws0n2Em+TxYkMTphGF4i/exM1jXiJH2AfQp/HDFphxkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA4N18MA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA4N18MA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AB9C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782841113;
	bh=wfesfsLAGU6C+3fEQUn0Nb4k1ZcNZ6Ty4QzPsfPNI7o=;
	h=To:Subject:From:Date:From;
	b=bA4N18MAMsifzFUxRzTtF+IvnegGeLsHHALMrr5b0FdSg7gvzhfNnm4tkVkoZY5qG
	 xGDWjxOIiw6xTTY5Sm7KEa4rVrmKamWA75NzUpFIxyPbDWmPE/s23MiWs75lZaPzcl
	 eLs3BdpykUiBzJexMB3u8WuDldopAjnwoPQl2fnrK4l+E61vC7KEFJMHFcqQtr2XvR
	 Z9efBsWGQanL50cTq33gnH6X3ihSErOj5bz9UsvhRcd4m6HgYMR3ckjE81QehITd9k
	 i0Dcz76LcetjsRx6zdKKVxXfnpBB7DJyJCBjxbQZI+rp9zKcBSOz6G9uYV7lNSyGoB
	 paVMCtYP1HSKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9410C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284111368.3066.17133130434494409698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e62bbe231edbeea1ce622d5e26a8ef829fb3574b0b7edd319cbde89cf1b3849
Date: Tue, 30 Jun 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782841113
