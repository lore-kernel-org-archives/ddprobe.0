Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B4D3A8CB
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718533103; cv=none; b=Vc3PpMrmz4xnbepzZOyVKeTeUqs0FAx6gw1NBBT9geYEs21kSyTgb910gT/mgtmx3ZQeBoLVnSY8iUd3XSJA4RDoAil4p/2SGnL2ucxWJ9zpfWvWQzVwr4cI+RuOb1URZfkS3YKdVHxjwvp90wkE4Uwg1tQx/KmR2XxsurI0cXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718533103; c=relaxed/simple;
	bh=U0ROVKu2C/DvFhr0fIcWW6U9X7yw6iMn2zsGyc5hWYE=;
	h=To:Subject:From:Message-Id:Date; b=Kl5xNeNz55xZX0JlP1ihYs7ocIU3Y3LUUmgXdRfiUz4i8BWuuSR5nkodjTYMcSxG0JLbJjuFevPmZ2omeKnsAJXQktQyUbvqVrn3KKz0bVPqdHubJDamZG7jveuAxQ2vJzuFjB+q7rL1UeJkcXxS8OVFMDz3Ma/WKNqYs6JJROc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFdSp3yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFdSp3yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63BDC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718533102;
	bh=U0ROVKu2C/DvFhr0fIcWW6U9X7yw6iMn2zsGyc5hWYE=;
	h=To:Subject:From:Date:From;
	b=CFdSp3yi5w9l6/mj/rJztciR+Lwd5DPlO3BMDMt3NtM66OzpXeSxLxBXLFnEzLmzX
	 ATOO2lzodEykVyZ7T07pPtnBC5hTw1vn6upsrwBJxJRfZQjuqba2Jlt/dnQR7tKqUA
	 eTSeiJsTS4BS6qSbgNCreZyaKcXG23jpBYJ3ohkHLdbLZZWZTWmmqlYg48YTQ7vLIS
	 2GJSZ5LOXU33+yPaEIxokiQD2XGBvM8HmNYTw7NNfp3ttO8IpPlXi9y+gFbVTApLGd
	 zwmec//uhwEoh0sXP9a/yFeEzj+Zy/ja/c9Y3DnoCuvRJi0N9BPP+BH3vZ8hnohH1d
	 B6PMfVQkki6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C151CC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853310276.15985.15545802282319503501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ca70ea4b91ccab7a2e48276ccfe4336efa16da7da807b04f4b411f62d5bce0
Date: Sun, 16 Jun 2024 10:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718533102
