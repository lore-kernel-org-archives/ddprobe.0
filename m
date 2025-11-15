Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD0E2AE99
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763176194; cv=none; b=Iee7gJ11csPzjFJIUjzi0D4EunkmzohkDR8Rjc5coDop1F21F8nH8Hq3YE5+KyWKmvRS0Zab6sHZMZPmCKfRBbPHTjKIZh6f23it6EDp/vyt23jmQWdczUFuSBYc6fLpGPtJ/lt9OKlB3sKisOKOmNLuutBijGVRkUpCdPa1FUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763176194; c=relaxed/simple;
	bh=GbZsV5kgNLLmVQhEjmXBC3wIT+YkrnG6+VjoHsRh76s=;
	h=To:Subject:From:Message-Id:Date; b=Lmr551hBCJHOG34DIGVQG3TP5iTLBHdOwe5RTAv2s9SVcIRM6ldlocvepi0P186DErDFzI66g5T/RtVhKkCC9pbpEVAdP6UCDvn/QZ/I9wbC4bw13YK/dHbC2RAOxW5wIuCCWot2/G7M6dwznb5+X2AibBRrueiM2SBhy50Ca/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLBvvor6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLBvvor6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4A8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763176193;
	bh=GbZsV5kgNLLmVQhEjmXBC3wIT+YkrnG6+VjoHsRh76s=;
	h=To:Subject:From:Date:From;
	b=KLBvvor6YftpZE5MqOCwDgbxRJ1OBXSJbyXTjeJggblSqW8njIpuFiqn6zzt5tgT4
	 ptShJebFYgEpGNZGu5/HcIjgekx5T707ije/EORtLFu6eaESDDb4Yb6A8EbL/pWpzR
	 b6ndCyao/BGh9naw2B3AubO7bFfm3EJzQx/3JMp7IR65h9omQMsYfWOMaHpiulAmvg
	 GZffTXI+NvhqmmppnoIERXWSKBrQi6qTPszjEe5wzzwqy3kd77ftFkt5o/drehM+8a
	 gOxTW8tFit5B0Nj2WH1JAW/WzBU3PLyo+nOkMGXbOqQ3DnQVXc+ta+5WYTkR50aiLk
	 TzZdrudDBH5TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2ACEACFF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317619358.25081.8414292208204184174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cda50235b66c3d90172fc1e4a109dad3ac01d1380c24ccd0e5e0ccd2f35f55
Date: Sat, 15 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763176193
