Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E942A96
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745591395; cv=none; b=iIw3GtLTr8Pqd/zLeglNd1KFhkxX+CNpQm2BJLRXoq+4QnY2rCQAedhXhVupd6aNXFQSkQlmr5InJOBMXDcj28a5/3ZMM5txgcyL4l4HZxsRW304+0heOw/DVaWG8XM1LyvfmBclhGtGh9pH4f4e7yr2ywe9lAVfsGo+LQOpkbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745591395; c=relaxed/simple;
	bh=74TP9+L88pWP5Nprjo1/Co8uNQScdvI9lNlQd1JpPuw=;
	h=To:Subject:From:Message-Id:Date; b=pGeYnPJpuvXou26AnAbDkhMZhmQxekBJaHgfpFVlYTYUjg+LxRhB1JxhE2XFcsFl1lm4hsbuzrlD2nodtXNJETCuUZI8uxVnZjw1xR/3Yd2/fXxkfyTuIRqJCZiaHzCsFw5Rrg8a48w5avHbIVd3Dj5AisixWc0Nux3IHEVld2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqWG/NNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqWG/NNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745591393;
	bh=74TP9+L88pWP5Nprjo1/Co8uNQScdvI9lNlQd1JpPuw=;
	h=To:Subject:From:Date:From;
	b=qqWG/NNSKo57Ll5Biwg1wAfzZzvMPX8y2FJESGExeHUj2BWM+nty5nzOfpm5RaiBM
	 ZMpi7s7E6+TtZjRznZfF73+wk7CF2pxBEQgv+QjPFCcNMUPPIZhDPKguwDiUjw9TvJ
	 nAgepEy0/lQtBZm9BeTUHLXXwGAVD30poEkuJPHfAemANK9xIWjoP+aLUC4tCRB2bx
	 pyeNM/GIgCj8yJ6wEsceyObqpSHGr7pGw6EQSgWlVRsYlGDR2QTwg7fnbH9IxblbDG
	 ja2ZH2bZnsvvoClyd9R/JDa1pnEMwB7O3Jtda42yztmu5LuymYq9ch84P3jkIhhPux
	 WvCbnjau/YVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559139357.1197.3035732116785042369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac6ca899162a1ebdafd5a80f9249b423c3f8b230d9943f6bf2491d327070c5d
Date: Fri, 25 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745591393
