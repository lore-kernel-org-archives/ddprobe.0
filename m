Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D061865E2
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731705354; cv=none; b=swUNd/I0wvW47oEufhY5e8wCWdAymJkYvBbkCLGSDMGntd1etClRxNsKsQB28Dm8keU8tUhl6ARBf2ZwVakLpgHLzxILP1MGX8cqEDWHu/dl1z0oDSuaJCjJ1PYDLgfhgskL+qAHGqXCKn6ivRdh5CG9Kfx6NrJ3tEofkelr7Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731705354; c=relaxed/simple;
	bh=RZy0FzA28TdDFAAkuR/5Nhn0d99iuNVVzJRXtLLr0f8=;
	h=To:Subject:From:Message-Id:Date; b=kFj5rG0ZfzyPn/g/3pmU7bg8+AAHBjhpZhq+plTo9qRX6z2KOO3mXXK6z345v4KMyGASMul7uYipNXRqk1tBpTUwcF53AJUa9hBsY0mEIETTnrVlznhAtqwPkrpgBg4oDyZJWs2gXMFEkYlgw5nHJAKukgTgBLbVB3zEYflWQ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4l3nCeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4l3nCeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECA9C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731705353;
	bh=RZy0FzA28TdDFAAkuR/5Nhn0d99iuNVVzJRXtLLr0f8=;
	h=To:Subject:From:Date:From;
	b=C4l3nCeFRVCKT0nkoZwjJC+gcSl72PHBGixWsOFw4cqKb7P+zgP4X2YdL1hAQ92tD
	 W96rfuS9qHYFBRF2wRAcRZzQMnqCx7pGILl8aXswj6VX3eMJcCw9TnsU+e1TgKFkmJ
	 ZV4zyBeS+ysaDoc2H7cW2npLIgogPZVGU79Xi4GoKgasSEa2g1pyZpShaqpiGxqT80
	 bEmny8G4EVMZOpDC6Y7qqwgcyznwaFShvuq6poqU3M4nq0DRJwNPE0YKVSJ28hiQxV
	 0NstSCKXzZJYn9VwVu75jrqszpzIwdrfkqPy9I4G1Kxtd4FuZr84HjuNdjjYDUyI1H
	 osWaR/+dl6BSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9861CD68BD7
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170535360.19424.1147024879931934875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59dcfb9b3f67287d480cc933665a934859f7d0cd8f4dc50ab0a42f132c00a5c2
Date: Fri, 15 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731705353
