Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FAF1DA3D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754678394; cv=none; b=qDYGZQpjoO1IftFg5TAKdc3b2zMOhcZk99smMOkZS3Poq4R0bi3fj86y0OkKHM6ayP8hhC1DEu0ZaCyd8RfNcllkP95rCsKW+ME05dGdnUuq4LorKn4QJk7jiSGdCsf0e67DmGyf5uKkbwKfkIx1xVayYxJH30/qonCCSUJl9x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754678394; c=relaxed/simple;
	bh=y6EGTW1Ysx+Ws9/pGo4L69RF2hyS/CLjSjog3TqJc+Y=;
	h=To:Subject:From:Message-Id:Date; b=pSpccs7uKVRD9xtodhlunnt4m8nNwlynJFKoxiXpLMjaAD1aputyWNQR90eHA3hLk2IqrEvfUdeKUS/n7+ksHzJPxdqIQpHYsqnNeystWgNm6uOBUhG7Qp6VuqPfoKLMXjSZTXaUTxFFhsqyupNkDDstLUH1hop+zNXtFYW7WlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH3W0xqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH3W0xqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754678393;
	bh=y6EGTW1Ysx+Ws9/pGo4L69RF2hyS/CLjSjog3TqJc+Y=;
	h=To:Subject:From:Date:From;
	b=GH3W0xqDeX9ZWp9XTVE+rJQ75LjM14kjB1JnAqZquOAbRmjsAC21zBKtY2qY2ZgSk
	 2+jlM1pitXYz56cuffnF5iY0RoClM68esyCqCIqfce+nj5aXC/b0uxjTL51NQS72c+
	 qx/vWz0+7ZpEO7juLYm+QLaQb4lC6V6S1Di9wVEw3n51rD0Sx+XvMNFrP3cVaPD3Kh
	 Ecr+hr1sOgBRYB980qNWDzkjJ2Xh2J+2sbVCuC49YKd7YvqCldwFTvdyIfZf+HNmx7
	 FI5wtmNJq/caVqL6JRD4tKFm54z89+mEiNt2WRiLhVwGwniBAKxvp90IF+xfVyvNyp
	 v5V1cFuySVUZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467839358.6923.4906297322240862688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3340b75c228f1047e720b3f4e5b057c43a929b8ededf68e0627b9289b8bbd52
Date: Fri, 08 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754678393
