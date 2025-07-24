Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7E1D9A5D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753379994; cv=none; b=JDRdGj+rL/4a+Rd4bqi0KUm89ucWfMmB+noWxJASy4rxLPzGvVTI6THuUZFCqgVUZlv9OtTK+s5/ijJYqefXt/Hz/xXgXkkvgM5fYkUVBU4yWOZ0VnOOSFS0fgT6QicmaPxCoGTMovHqF8MpEsDMg+0Y8XUxNEf51yKfmfs5n0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753379994; c=relaxed/simple;
	bh=es5W8pZjKEshYyfy7TZVMCWVGpbeH2bO/deTX5QtSsU=;
	h=To:Subject:From:Message-Id:Date; b=ALH61W07j9H+O05k1sz27klwSnelfW3AK/tF31AlAa98TXN6H2GEccqkgU65K5lD3Ee6mZm1Z6eCvECWkOeaYTzEYiiWk8C6XTaYaKXeJRj0mIsdyR6oy3a/h8BHP000/BWrKuwXDM8YOT3g122nyyatmpzcoZ546EVkWm++DSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh9FQ3au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh9FQ3au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F0C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753379993;
	bh=es5W8pZjKEshYyfy7TZVMCWVGpbeH2bO/deTX5QtSsU=;
	h=To:Subject:From:Date:From;
	b=Gh9FQ3auDJJySD2zI35sXMdAJVWShWg3LhFXLHFbeszK635VJXhHPkZ6eFIcWP2yv
	 xnhGZXVGsAyuk8oKgQQlgPVQQZuFnhxT4Y26HqZk0mSzAC7LT1nwHj76aGpRyGOEt5
	 veHd9j96QUB7NRY2XHRS98J3oNipBwbnc7C3hrflpTrZlNlfO5kH6lhK5WeZ0VirRI
	 NM5YIGKNhG69Qp3S1IfiOKTS9r33wwFiGt1HsFMcu6dmXT3zYE4m/l1aVKvaBfHQMB
	 rjWUiJvlUeSyBJrbi3/L74xJzdmOJh5ob06NC/swkhY64ElF9kMMeqjxdSjgtOR1Tq
	 fOYhSssUTNAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD4C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337999358.22714.3606468457538807483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09bbdd1581041f2bd7c94dc52fc7c5b790632470ace572c12e8641ab968ebe83
Date: Thu, 24 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753379993
