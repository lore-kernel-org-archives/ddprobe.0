Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16511C5D55
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755468595; cv=none; b=UT8nAgVRf4kiT+8Qy5jHLwR3V5fjfX4pd1iKkBy1uFAB4CsT/k35tuWYdwo0CTPrRWy4AN8o02ceRT0NJODkhwidzdY9Nc3YdydGoRDJDb4/NnTTJswsv0UXp1HwZvBBUyQqFEsTql1n9cvjxVvK43lNrsWkc7pu/r+8EUXDrNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755468595; c=relaxed/simple;
	bh=7bsCMI7/zv7oeL772egxWg8FRWwcPsYJIZg43yaPt5Y=;
	h=To:Subject:From:Message-Id:Date; b=j5+sx/dxQR+7feVg9XMPyZShXcDsCDajY+KOmFIADkssqvtpDBEfKieyPkMoBP0Fb7qAnW5ZEakMBLip4FWGH3Wyj/IC1qc3pgVt3uZTrsJwiF7+l0d99g4WIH3IwOBnN9YC2o1APoJKJM7VW+O91JdXMUMfW0iYN3fqLW1MH0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwa27WY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwa27WY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755468593;
	bh=7bsCMI7/zv7oeL772egxWg8FRWwcPsYJIZg43yaPt5Y=;
	h=To:Subject:From:Date:From;
	b=jwa27WY/8javfC6qTv3lY44eNWhYfKGIxRQLA75CZnY1ovnrSShQb+Oj+nIutKZJX
	 ZYPjG/rIDmKc8H8J3aT0YsaTVjo8jppWFcAPXR9JgKX5hXgCbXiokjPgzDZJLoabp/
	 f+OJ62sXhK5eQmGey+I4YN3Th1LrdvoWmpm30WveiGesTpZsXyZo7QzeNBbNGVhiaZ
	 adM+8f6QXpERrl8oZvbOX6x4Z6n/CEMNZt0u+PdqBnfuHGRamICtmq0osBsJ4tXXNR
	 6yIsa1UOw/PCC4PWpuyrdVDZ9L2/Isu60mVGuGd84jvk8jFuAwJD8Vqm8W0PfTHpxt
	 KLirJ4pmm1wdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A4CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546859357.9779.1454605527207749031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e0c47cef4adc8d14e76d455b3df3f5ef4f8bca87c55ce9117b3dd932ed2d5e
Date: Sun, 17 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755468593
