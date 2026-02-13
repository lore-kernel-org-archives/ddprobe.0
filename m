Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0C24E4A8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770993894; cv=none; b=DEeV5SD8rpWQB3+aYF0GmfVV0PJX/Cr/y9dUM0svO7KZYEN24YyHsC2M4RMS/GhzM90N3pmgXDOkDOUt9Zw2/vrn0qROAlwsGAz7buFrw3N5M2p+W4OD5DyEWUlmgRcLDO/PosWVjmUl7nTXXPgbl/jO8+Lw1GilAVIOQICIQpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770993894; c=relaxed/simple;
	bh=Hy6YIRiHQ+vPCQka/bPgLR8terMp2iCTs+0B8cie41s=;
	h=To:Subject:From:Message-Id:Date; b=SDqvVjg2zV9vzxcjDK7Bmf+YZVe3P/lWnlCv3GHVSZJ8Xvn/KsKq1vXW6jeyBazuLO8qkHZnOtyhSs5gSBJi/bYk917SF+byH6wvbsnifV0137QVjFV3Lgh0ERbeMJs6UmyNIvHfuVsy154He53KrUbM9k4al+9+5VY5OApILPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjJiPOWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjJiPOWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FBC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770993893;
	bh=Hy6YIRiHQ+vPCQka/bPgLR8terMp2iCTs+0B8cie41s=;
	h=To:Subject:From:Date:From;
	b=QjJiPOWncNXLlgcPzMInZ4S1vANFhBZtSn6U0VQXp8DRFVUMVL+ZdLLVSbAHyhICf
	 lM7AIAPgYmdIwx/8QLqV7ciq1wr6mfrXAArWXvlocCTDlim3+35W3xE9kB231puyqF
	 C291r1yXrMhvfoxPEo0qe1lZ3TgZMt4kUU6X/Xl3BPXomZHKyCoIgw04zoysmTjgEw
	 D9rSmN3Lm66hxcb0O5dKVAujWGkUq34x3YEERUzxl8XpRHySXBkT8YjL/wdp90yjnM
	 qcNGETnXdWWNSWKJXoUa79FBcvq0U7hUnswAEQKAe79+YQhO1yJVv5q9i5A6BeXuqe
	 qjx2txEI98R1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9702EEDF171
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099389359.22751.3648652607769262950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4b596426c3d4dc274f4bf9f00ac6f57f4e6104f282ea2bddcc00eda8bdda12
Date: Fri, 13 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770993893
