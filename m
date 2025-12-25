Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1620CB652
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766698434; cv=none; b=DjDOzZMeunhdK2qz6XbV2G+qcmjGQr3a9Fa7g7X6+df7O6aJes2mvtq7UU3nxQVhv34G2dXm6B7geqkajEPR/az4A8+53q1AplheuBOB7TonCHgdV50zi0IBzZ+pT3xmwrUyNyAddhf+D0qYW7r9DlF52sPZBpc5/3B+eEmv6Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766698434; c=relaxed/simple;
	bh=EroCJLhRUZg0arfqeqjn4RFAn00JUU+V4YbpQyVwXww=;
	h=To:Subject:From:Message-Id:Date; b=UwoqGdrJha+O/lgHBJ0GltEropaqemJnXA429qU9lQqjRTFNcr1jMJLQXoDCzeVga3c2BtLtNwoykDcYkx4UuWepeYDtdv4+NgbIp0DrDpdlVre6S0OjOMbhTtPbdnrel1W9HBltzWGa91A9t4zCfl4UIVa3l+qMCXLl8uMgotk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txcfmTCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txcfmTCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B90C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766698433;
	bh=EroCJLhRUZg0arfqeqjn4RFAn00JUU+V4YbpQyVwXww=;
	h=To:Subject:From:Date:From;
	b=txcfmTCNxJLRdCg7q4Ll8BLabC89KesSsBBav1qNE4iKoWwNxzqvMTqfvpUgSYUN3
	 h6V+IGVGidM39c2Tf0i+ZK79fX/u3qMV/acDPuLcztm1gP0tCWgfUF2ONB5Vit3FSa
	 7m//tcTVnzcGn0ljx8/1aLEfXKE3Rylw5icThLr8eW0NuHVUe1yPjJAvOefDhIVVGN
	 CA4l0Wseisslt/iCkHJ8GV9Lfc2eves57EK4fWdi9upwSxUxFETDSGbmtssgo8Kt/C
	 8mPmY7W3h/Qyu/m+QQd46afrWAs+OlcQGD0dYgHl5H9N7vCyDeNtCQs+sHkKZjecEQ
	 ndlG1jqUHCE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91126E7AD70
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669843358.15317.15070866524642724378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f29a01d08b5527428053347a87a0fda2630ccb88e224aab9fac108421e51c2
Date: Thu, 25 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766698433
