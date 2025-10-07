Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C9A34BA3F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759854593; cv=none; b=TDzfbgUK0k+ozgNT2rKYgCxkvV3KrPCYmIZlZu4CpdTRWAI6G1aclE3WD0mmytmtxKv4ZJROaulrm0gjdtRqsTZ1WU8uc25FHMSeW0MmpGPLU4m2oY8y0Zyq7amvPYEKfVP6B/Vn2HRVjGS4n/P8vl8ovaZGZGSeIi7Ef/fI6Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759854593; c=relaxed/simple;
	bh=6AUWrRYDHg5Idz/3jvNCUWaopnmsHgT0qLItHW3L7lg=;
	h=To:Subject:From:Message-Id:Date; b=VtYH3tvcR8oaLI9jFopLgSDfqDrl7GIhIQnzZ+LxM4ohZwpkOBRFFkauyiIta40tiTvwhhyuaHQcuUNjfjDdEp7qSVSu0RtshY26O3bjNYVYLPRxIUcFfnuPgG0U0g6zt6a5qUMHkU67Yu4zV2FzdAGSOJ9lrBiXuKiazEPDPQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhKQPQHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhKQPQHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99F3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759854593;
	bh=6AUWrRYDHg5Idz/3jvNCUWaopnmsHgT0qLItHW3L7lg=;
	h=To:Subject:From:Date:From;
	b=HhKQPQHZJVRZ25pHSfnM3REpCIJGQe+oYpdNdj8MQh53qn33OakEDP+jbaoD3uW6e
	 3jpG2g+RHBn25AtoT5SXpOk5pA2E5AQUW0mLs5r9//SPdaXXfJYWNr8fs+a/wMZG87
	 e/70vS8Vg0qmAP8qGKIaSPyQjwJ8jfe2fhK1CWm4dZyBuWQ1cOLouFCf1yaFvoPEIS
	 /jzpExcocdcLrRSgLlEwbH4Ipt9wSE10yuYIc1Kj+vbGsrSI4edV/krwrSYMmFnpPd
	 x3NelzFrkatNJ8/CdLwAtPDTUDHhJgoSroZ3IJHK3LPOrDzs+7NDae3a3NqpiZrL3j
	 7sh28SK6TfZHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98638CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985459361.18572.12063974785995971328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30e6a3946af772d496fc29c8689d4b980b93d956d9de396f6e4235ed3dd0526
Date: Tue, 07 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759854593
