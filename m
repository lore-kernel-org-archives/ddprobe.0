Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB96881E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752933594; cv=none; b=Tl8yYHUkSbZTBbcZNXmwVlShN3jIzBDd0iE/QFP6iYbvoS+C2h5PGy3VqWdUa5WgQbAVXf7pAmrwFCMhvpcuXcRnxl/wudTRIZpXEzicNEzP9vpHNVL1tTtZuU3IRLVYrlpkZusBRrYoXI7FtPWjE54EQfoPkPcqnm/3OtD6mg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752933594; c=relaxed/simple;
	bh=CII4cynk4rpT/9R7tvQDEJ5DwAmM+uP/AYz0C9nKwyQ=;
	h=To:Subject:From:Message-Id:Date; b=GUm+TpswgliWtyUkQFw3kZrHidTXN/h3g7Qg+Xq0NwoKp9L1ZKdEj/D67L0l1WUimyyZa4F5G0VHqUmZFiuq7JNacwLPvLLT7LpY6ywSsHC9KOz+uOqlXyv6KSYxRZDqhxQln/gzCXoIJTNtJI3Kv2g8+mi6DFDLSHjsvtEzofQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSPrBFsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSPrBFsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A69C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752933593;
	bh=CII4cynk4rpT/9R7tvQDEJ5DwAmM+uP/AYz0C9nKwyQ=;
	h=To:Subject:From:Date:From;
	b=hSPrBFsVKjNgm7fDhC1poZS5dy5UQv9H+dlmR3aYipmSFQgqjIwZU+D13I4gM4l2V
	 g1/2ar8PLXUfjqk62CTVQ0Sl+xGDOUXxZhqi6kUKmsFQidpX+oZn0jbYlVy0ddX+RS
	 tcJY7hor7FVbfNLUPvbqidNu1GB1Z53IyapZy1FPLRcpSLueXLZM5NswHOeQroEti9
	 LudP93t0oZXmAKdH2BwyAf7/MWF/te0dMnLaQZOFN/ck1sIFi9Gm9rCd14T+bSpg2f
	 6dswQrzSlf1T9qvrCF81pPrKaRA7XlTDyJeOt8Zt7TLcyEK7unf6a9ekg08hfMGsCY
	 CLxvnsuVjNtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9EC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293359358.2702.17085341934771405575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9c5030b2bbae35769a4fa0562535a79991eead395fd48357da7588ed85fd64
Date: Sat, 19 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752933593
