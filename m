Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ADA258CFA
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759659594; cv=none; b=eG4DuJDVZU0DpWfnZHwKRfxk0tVgMhvKaJ+uOAGmrq1qpqMinlhjRf4dZT6dqPp3WRnOH00U8a76B5zrVH5q2RxyIyH9CzHynYcHnA9FvyZ74Wzpg9M5TkaZpaeGux/opDiBvYSv8u1xq5afct9KY8cxfRTB6aF0b2h+khUja6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759659594; c=relaxed/simple;
	bh=l6fFYegBEj9BSBTCbmwvLSkKKVB+h4i921m+GNKpZ6c=;
	h=To:Subject:From:Message-Id:Date; b=jo7JEzsNuImIIGXv2ak+PxwI1SnJPLapP68GJfxz6RUACfLkeGlfVGHjo4n1zx9hIhltQiTGZOiRu2/nEtjFQnZbxnGzqjNJ3VxJWtg33xShvOf1IdUshVF4YkGpmnE61xo7Jdz4cilxtah6ZVIh5qajhNw3JNSku6XI9+t2miY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBXxbLRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBXxbLRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759659593;
	bh=l6fFYegBEj9BSBTCbmwvLSkKKVB+h4i921m+GNKpZ6c=;
	h=To:Subject:From:Date:From;
	b=eBXxbLRbaAvIPBzrYMPMu1zV+VA8BPPoWL6WrMA05pfEnC0gG5c/9vLzdCVpxalGM
	 8TkLQ1d6YilIiuYrL5WnZ6Ps1VanGR6CKp8eX9TRz1KQ1wnoFqd69OrDiBk80dmZEA
	 5uH13dtfJ0I1F5jpaxKO+PMLHgputHRLOWQbh0yuvHPWP2apl2dW1ugbzF+O+ugLCX
	 ASYHOtIQVoRvlaTT3u7beoHge1jitjPiu5cfCmV30dGggwt2TEh/qFP6TAKf7+aZxI
	 8snXehx48XPY76lB9Bja+Q0OAU4vZk/YbmdCEFdRv2b/BZU+QbJkkkIbVt/yJK2NS6
	 vPoP7VS+NdUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F4CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965959359.19938.15001252162096134943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bb017a9edcb03589a704d8bdd7ae27dfe4cd34999288f36e7721f8defcf20d
Date: Sun, 05 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759659593
