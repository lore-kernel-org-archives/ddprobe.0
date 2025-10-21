Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCFB7483
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761028794; cv=none; b=HLxFKw9Dm+QHG2NW0UyJkqOH4zkzGgeHMUusmaIfvVVeQKtHCEqo56ft9FOJsfWMjgDIVCRHJ6eN8yANzjVKmYhmW0NJGqMFM4jyB3Y7X9IYU/bY9zkUdKhsW/NU6pn0+qjv+5+Jth5HT5k81ozMILJiQgsudbDkjQDSNX5lvmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761028794; c=relaxed/simple;
	bh=fDx6cY6T+xw0NhMiz4CZgAau+/BoDzKMREo0xbsNqck=;
	h=To:Subject:From:Message-Id:Date; b=HfUBXFvsO1VcDOTtyB7Q+Ix7i0l2BPtqf7cAvrFTnKimRQlMlJAfDDW7nJlA4zkULGxTIU066h6Pyif2ftMRkQZr8PQR2xZFYYo0KEqyafCzluhl7uCesG9hJHPP9o0HzMbefLtmhbWyUGI6+H/UlhblyrGQD2taLpHDYLfgx58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUfgPL0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUfgPL0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F26C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761028793;
	bh=fDx6cY6T+xw0NhMiz4CZgAau+/BoDzKMREo0xbsNqck=;
	h=To:Subject:From:Date:From;
	b=kUfgPL0sSHTbed1lbA4twBDuaV3mLY9mmNjB4F98dnAdk5Xz+jQljVTXHOlxEPo7q
	 TqICiPZC6L6Y+QVw1Dvo8K/tJA6o3CNSkYHf40DJhJaS7jwH9tusBrVA44gV5dbLJH
	 1aY4SCyU1mtgpqgbZdh9Uk8X2YCQp7K6fA6T+8qZYVBeCaQlUeG0XlZyo+vjyA1vD1
	 4x+mywQq4SymTJcJSF8QC6lQU3sMkkYEPui44MQLQD6UZEDmuExEQGV4T1tVVNJdVV
	 4R1YnsjjREzAFefLNhE9o5v+eA2dJWkl2P+bdUqGPyvAkgrvqDt8+v8RXYyg1+JJnV
	 /vaLqkUmgOGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4AECCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102879357.12940.11022954322892054120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8399ae388083d90bd84506488a66eced25c5929ea46db328ff1159f7d4773f57
Date: Tue, 21 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761028793
