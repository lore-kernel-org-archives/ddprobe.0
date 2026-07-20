Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476D2215F42
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784509114; cv=none; b=dE+bycFzV43G/LX8/usKWsgxhrYybh+VEQXEOc7eahNS9DXDtp4Noh3tZyEkVVpmW0pU2izQsIBuhTetRJDGNlFtpOUxHLUpe9JENvNwxofBkNMG6u0RuTto5oXmu584IEyy8+/jE3/Fg0KIix2JQQuGInkJ06h/JGap/HaCE9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784509114; c=relaxed/simple;
	bh=tLSlizTxIbcST48Otm95+pH2wib5+ee65bD+oRzxgAo=;
	h=To:Subject:From:Message-Id:Date; b=rY6vOs7NysR+Not/Gcey+rVXFqoz79cm1sFOa5aQziz0xjjSVOLtWbuSJX5olRx8JdUzRnzJ3QfGtzwSkCuOqQtkF/+rPAvArM2xhsn4Mi8kV4dBLvBlYqO4j8m3HqC4Zyt3nUgspZ5bOmsqSHw9c1k7PQN7WGqIr7+2lPI2nJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUAZzbr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUAZzbr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D550DC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784509113;
	bh=tLSlizTxIbcST48Otm95+pH2wib5+ee65bD+oRzxgAo=;
	h=To:Subject:From:Date:From;
	b=QUAZzbr3RJbIEUZBbegFTU59651N0OKZBjc19lTglQPAgUEZ3ffktesZpi8Vos4KS
	 /rl1HUgCRdRO17nqq5W+yTq2QPQNYtX1hu+jxj4EhyFrkT7e/2zdRvqsJGy2BCyCes
	 QLlGN40PO3f6IgxHS9nCZflxCSBVVzfksGBW3zBRihHHTj200DfVZbIxyy0hbls+oZ
	 nCFyvif+O/2LfPOVm5yPs9qriXsNrwuHc8vRfcPbspar3oyFKYokifxK/ehhpG4cps
	 CKh1XUfJVEEmXkf9ljonFJeKSHH8l8dPrl/0DEsC+/TXsYLEy4DZJsXMvT3YIZPXxB
	 Y3OKyx+xUMcjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AEEC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450911370.26952.18020474000777497033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4745483eff827abb6c3eab369fda9e687da5cdd9d0394e451d9e35abeb42259
Date: Mon, 20 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784509113
