Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A931354C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756145994; cv=none; b=fjRzWMBmBMBiv5Ht1q4fVfUB5C1slCfGu4BuglPOObd1MJL/0V9q1bD4iFa7NWtEHJR4QsZFTsTR2Mfhy3CPwMMlRICOExqoTSSGNeiOhUqUkWKpX8DYQRxhvTYbAtVurSA/IQFv4q/d40gfuI/6mCF+krgEXrmh/tZhhhwPJXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756145994; c=relaxed/simple;
	bh=9RaJORoolqS+4YTgWal2X1lJGjSioxw8K/qKN0McI3w=;
	h=To:Subject:From:Message-Id:Date; b=qmxfU1MEL5wKc39lu7LOnNfRCE6YQictdy/8KJoEjgDvDWghgnpBbyIkNL158H1oMQspd6s8WJHeS44TobH+EJPDLqA9diQvDnjx7jGwBTuxIbm48uOSwZMy/9oaoppOv6FLFlkyUntDMcy8EeedQis5AMYyy4NSmfohCYm0Bd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCZOX7HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCZOX7HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A267DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756145993;
	bh=9RaJORoolqS+4YTgWal2X1lJGjSioxw8K/qKN0McI3w=;
	h=To:Subject:From:Date:From;
	b=NCZOX7HEYzOyoPbQ2pzU2mrFoeD0eWA9xpmdwPy5b1CnkdPQUJQLO1CMNvJz06OVo
	 Av5HHlGdGj8MjobeqDDHUozRZeT0cqFAqy4ZSTOo0J5VjuLwLZbWRmPz3RHtaqKCnl
	 XzJNfZi4sVx6i/PoLVhl/moXiRUAQCxMiNVsvfFtkFDS5nx+JEwnLZXHkkkg4aRJeE
	 COA4qgz1tnBww9m+zvR1Xs4S1JSM4jq1v9hs323lvzHKEX7XraWmwjXr5pcyquyzR0
	 haTDrFNmGQ2QRpI/q2aTFgQqRDW//g9VL9DBNNKwJJBiEq9miORFjI3YyQYE5AdI3s
	 U7ioPCWMKtW9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367AC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614599359.30493.2695373804943807307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbce928f84fa09194bbede352338e0fde1de959eb2906261b9988ab07408ad3
Date: Mon, 25 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756145993
