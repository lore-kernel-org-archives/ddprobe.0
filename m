Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447513019D9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612114; cv=none; b=oNKZlc7GKHhb0cUTGqwl5juIF7Z2dpo7c6KGIKeyw+/4nlpgtkw8p6HNYnaFVxDwMwN/pClZu0SBYPzaQgGwHvB/7V25Yrkbyq38vZrJFg9FI8Ofpu1kB821S1A7HWQxrBo54zutyoRMzXEB6648K1j0dHI4r/pAG9YO7C67uQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612114; c=relaxed/simple;
	bh=N09uB13ria7T6vHogk1iGVM/JO9J5Mym4uDcQOSgZvs=;
	h=To:Subject:From:Message-Id:Date; b=P2wY2VF+QYTUvKRVxuKPnG4y371osIcMinLpoRjmJBPKwq4548eLUEwrKX5RR9gcse7KhqN53KOW4V9sfvTfQIZbz24OWQodr+8jTlg+UpcpMVEshO2nXBp/URC1UwtMN7vLfd0LysUIKxT/Vho+5hSA8++ZQnU06Ad64XGZCLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Orb7a3Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Orb7a3Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE56C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783612113;
	bh=N09uB13ria7T6vHogk1iGVM/JO9J5Mym4uDcQOSgZvs=;
	h=To:Subject:From:Date:From;
	b=Orb7a3Q6H+HQtWlMgikG48NiOsWYGtnAidKxHJ/Xq6TifPSl8V2LgmYIndUYLhQdJ
	 Lv62qk3zReuubLzTvs+sILPQH9LDUpRlsol7hldtWx4nPYjbIWE15MJNA2GxWyl1FB
	 XB4yt+98bYXVv+NW4r79Ko/n5t3iBB7fyRVi3E+NOnRC2V1XZDTYWVPYd7JaYbspdl
	 sblserwGRJqXSIxH5v5yrxrw8FrElhs9xj0pS0QMrHf7fF+j0cBofTCGVQpHmdGhOa
	 YpHTyxlhHf67xjurE2COtUUg35VDYBL87Ef+PGEfe9KPwY2IILmpgirok69DIDPtnQ
	 wsk8cb9HeBAzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F2DC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361211368.13760.12501950936018707754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255b6d488c5898bb1314ecbc5430f3b549310a98cf31eb4bafae00ae38d13cc6
Date: Thu, 09 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783612113
