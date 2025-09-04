Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA1623D280
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756956594; cv=none; b=pFJ0RN8HXWTcP1rLR2oswvJeiZkXACqvXPBaatNUxZvRMCT6Trf8bj6ZAwPsdczH6Q8W+k/jUWfRsXPZAuPeRU2JZJmWOxiidP/2sgAmEJwwZz0paDa2ZV63uTAo+Av+NvMjNJSYcXGtKo86sq9ILQuP+Zj6jnlOja7GYtu3xwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756956594; c=relaxed/simple;
	bh=6FzrtwlfZhEfPVFOlqC0b/Y6p6Ile5Ck+gLrSbHuY2Q=;
	h=To:Subject:From:Message-Id:Date; b=Nf71e78D4HTQ5UkkC6qPliEW/i2QVgRjHnzMt1Te75i0awfQHOsAoj0XIOtQhs9+s1RzRGHwpZHmvSrLR7h7q83Cuwu2QthnplbneocGTWeQXMCTgOv8340aYcZU6kTwnM9Ouxz4MOkiXSAWdeR84D1yXik0gfULKsXGZpJORPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knqMapfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knqMapfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA2C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756956593;
	bh=6FzrtwlfZhEfPVFOlqC0b/Y6p6Ile5Ck+gLrSbHuY2Q=;
	h=To:Subject:From:Date:From;
	b=knqMapfUjnYdzlvsbFSZXZ8Nns4yZym+2YWowJXeh9naElgCMaDAwj/l6w/7PgH0f
	 9FiDntSNBFhh9Yk+scO30UYyussNPe2zPbRw/Nvxf3m2JNthihBhug0f2j+vLl66vu
	 EM+4j924Dsztjr2NSAAVR+7jupJ69mVr8RsPvWp0Dkbez9h7vVuBzYvE1exUYz7N0I
	 AKdiQ8xfWkDRxvJmJzwXM5zrygVH9g5ppItOVmvnDZPOx5rFLpayO72Y+NI7H5gGkp
	 gH5r3xMOpwgtWlEkkT1nLucL2N2mODxkXJqyvHhaeOVx0wouknDJIR/HrK4iStRhYJ
	 EZCw/HL7x7tEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FEFCA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695659359.21541.9091585550861089496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726af112d3e71bf8eb16a7c7940635f3794d7fa05728701c12092684525594a4
Date: Thu, 04 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756956593
