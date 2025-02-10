Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DED7625
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739148354; cv=none; b=NS5hqVenOgIJS+uR3doan5ZnNvDi+HdUZmO/j1soC4UmF2581V7CFxdsVn1WGsuF0mloWfKGtNfZ3IKlw4JnzLKsTNsUuvNKyQPQ9CpXZDXsoOjTDiEZsmxsYcZ9Cq7MEjYZRuAIhc1xtDmwIwxVM4edvPYImAY/wQnZS9uFwUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739148354; c=relaxed/simple;
	bh=NUajqKHev1W0uSXXLgMy5mKcxO1OeD713B3FGBSLuiI=;
	h=To:Subject:From:Message-Id:Date; b=bNwxvFB6AMRQSseOmZR5EkzAtYPIHodWn+e9QeDq3iRqpvFUSmwyorxEI7BIuTwELunffhTD5YLiH3zgC50Fc+AokGaPg946xfldgJ28f/6rllaYv80tCqfyS6kEWawBdu/MZKecuFBvvSZNzin2DfWpZ8d21Lu0/MjIUETnnTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVaJpI8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVaJpI8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C2CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739148353;
	bh=NUajqKHev1W0uSXXLgMy5mKcxO1OeD713B3FGBSLuiI=;
	h=To:Subject:From:Date:From;
	b=bVaJpI8XFegdxyNY4jBd4nH36QaBN0YB+rp1Objyt2MAY2Ikj7MXLcF4fZlVYP/7n
	 AKovcA3hO18lRoxo9eFFLfMN61CiBPYk6VcwbCwMouk36Mdy5F2lY5cCjm9YeDHxsa
	 RRJdSVdLHWPbMk3G6qQuFc+WCOAbUlacGY38SvCYLJW8FmMAMu4V+vST283xRa363B
	 evUuWa+lZOxUjKsRJ/w1jQ/KpzYnE8+jhJib9JB+vTckBIOTIcSb2/DuAdlk+NYH4k
	 Nyml2Cay+BM90HplJTVww2+xMcaV2/qp/VvLZi+iQuaeAL9JNNvi9IT5Y39AAUjZD0
	 EEc431Sx3U7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8D2C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914835376.22101.7630433247412724062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563db327968853de80f476d4792101d2f537c7e21e09b7f6207ba22f4b1b60c2
Date: Mon, 10 Feb 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739148353
