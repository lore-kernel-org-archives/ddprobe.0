Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C06A29C35B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752187194; cv=none; b=Aj6D4GvsJHQl/1T5Jq3Uc9gmo2KRkEItuoF0mAJh6nkTj7pIaABbM6pm3iXuawUONs2m6/d+qylcpu8WdIwZw05bUiGL7mKgjJnRjnKZX4D3f0R5HndSICcPKwW1bZI0ROSoHDDnmObeuQeDDHTX2HbZz2zVMDLwbswpg8O/+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752187194; c=relaxed/simple;
	bh=WVCaM+8wp/zXAgvO/kpFEXhN4wOUCjaRKucHdgkDZiI=;
	h=To:Subject:From:Message-Id:Date; b=WZ6gQcwqYQJZmBG9BKfBkmIqZQ87refuEzOX2Aq28Qk6dO95d0jhReS5qkoCfncWOgnzTf1yyqBJNmyWcvhmNA9/CQ/ZPH5Lk7FHOxdoqRvR+a/0pEQx+HnQY9Fkf2JXZODneO8q7bGoE8b6EUEtCxPmKocGrAG70tBTFT+6EmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6VWFMh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6VWFMh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F717C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752187193;
	bh=WVCaM+8wp/zXAgvO/kpFEXhN4wOUCjaRKucHdgkDZiI=;
	h=To:Subject:From:Date:From;
	b=i6VWFMh+kcMaE28MlVLkMTIxufDCbwwuEs4lwRwdOhsFW9cXMq6amahZ3Hs+9cSf9
	 mUo8UxDwNUKQmFDZcfs3wQP2q/FzmGGnH4YnIySUP0iMXok9VsucSM9E61KIn5A6jg
	 UmQ1XHhAhTGwJcGuUqEDDO37TqNbvexkgcv8l0HF90A5U5ze3386Iats9EjF6LSaEM
	 E0xYPdBDInfeN7/Zc5mRx5KgiQFfv6KSAt0tT545NZQvJ9e+cJ9pdfUwgrWfnB/FYX
	 S19e+jfKvCTQrIjS0LWj0oak3NZ8B8PdA3N1s2c/3MuhaX1p2wDN5LUv6Hbx7fwLb3
	 bQADph6wZX1Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F884C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218719358.7753.9992877356379087890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58998717041a82ae1effbc8103fe7b36564065d2002c3cd4f8a40909a8d2edd1
Date: Thu, 10 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752187193
