Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2380539AEB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721423754; cv=none; b=S3EqcHPaDsJ3aOb6Ojsgwb8UGfE4UXqqXcAWRS4N9Z7XQNKTVmwqod46L73+SJIH5Txbrw4wtF9CZgoCoiVpDbLiQwoRaMH3iT6YcHkrbjbvn32FUvX/PRsQCteQUlKHMXTSdhODcqXaG/+bsjBCpI8b+PUY/mys5X9W0ng4oaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721423754; c=relaxed/simple;
	bh=nd7UQtI/sWfIPIeCRgpKjhIw36M5VyislrxWdv0t7xA=;
	h=To:Subject:From:Message-Id:Date; b=K6Utof+l1xNBAVdQ7tF6v4+GI+xqGxDLf+9JGnhveO03UaFGB4IknpBsUb3w6kZc0rJkT1tv38GzaucdwX/RbVls/xS1e5ltCaahuu8UQ51bS6i9kqBp35dVloG3qXIL84XATefvRBVfrjC1qtVI4l0f2FAfVaZBoVYbNLtrANs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUD2tAZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUD2tAZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF064C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721423753;
	bh=nd7UQtI/sWfIPIeCRgpKjhIw36M5VyislrxWdv0t7xA=;
	h=To:Subject:From:Date:From;
	b=KUD2tAZ8usGgaxrwTAy1wRFhCOAE1TmQPxSkieazN4e+7b70f80vy5DRCRFFxtTVa
	 BvHcC6/UXGPEA2hyrS/Fvn4ZNp9LlEQSeCaemgXYzGlabCLE4Kng16Fam04PeQlrEk
	 in7+2LoOw7W1VJJQ44zy5LhUmDgTqsUhl/dF8OBAGz72V93CS8UbZWqfFFvNMkC+le
	 HVs6dOJ5b8wepR9pQDhcBeoGLBd1sbP6criDsV1ke3ug3NKv4AfAiPeOopRR+G8jFq
	 4fCLcf84xN7R+TJ5LZZ1U+TBhmN5hxumiDAQri0bqe1uaxTB5IWy6zM7JWNb5PGwaL
	 fojC83t/I9hHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A90CC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142375361.15419.7305772280776560863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f325519bdbde29ee08fe78063aba0d33989aa36164e0a200f3419637c1664e
Date: Fri, 19 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721423753
