Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644712AE68
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791297034; cv=none; b=RaTEoYJNAdYvdwcdEJOooiXNnXG3kBp7p9W5VCH2lMCtzmJCNyii1OCnZY0wXZw25pd++l9BeOzR1uSu0b5YsySzP0ZI3lNgZ+Z/aIVo8cxWFel6ZsFxng1o4FuUjadlWJHvvXDdEUgjYeI5RbM2lR5N0Pa0D2PabNRy3cKNlMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791297034; c=relaxed/simple;
	bh=cBcy5d5os+RkJiG9MBptYnc3p5zbPIA7TrYWR9uitOE=;
	h=To:Subject:From:Message-Id:Date; b=lzHTk8BRkp963ljnK3v+uOrSyxhxI1b6GZeHJemP2zvI4+ZtHdo4jzg9VAWAlbjRUv/LlnlHqptw1lsCPfX3Y9X2oYnzGo50msUlnLLf88gkRqF8W8hIxPsUr4maWAwuQx5HDQ7pvh4FFx5qsRHUIotIEfQ2bBEDuyazCqTmfIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRbxgzyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRbxgzyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DABC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791297033;
	bh=cBcy5d5os+RkJiG9MBptYnc3p5zbPIA7TrYWR9uitOE=;
	h=To:Subject:From:Date:From;
	b=mRbxgzyzULyVPqj3dkRS5eYZm6elArREXIBATOTlrokwUJcbzkiPKOXfTpNRJJatG
	 7dUNyZ/gwL38idC5YUHRiJ/Fg0ERfJOIyv+twH4f3kp4fG7EvbpmzTQhS17WOnneMX
	 yUhd68bHPrB7KQcC2XixWJCF+2v1mfpdheTK+Z6O/gLBc9qQzkIVHOXks1RXRGF9nN
	 DpPSqkAgNkMLi577KJ74mtxeFr9avgEb+z4Q8k10r7tGPCO53mlvIcR35geITW6S3J
	 ApI+hyXqY0p5Nck0MxQ8kGzkqQaNYJKT4tKHePg2N6/xQ8eGAJAaaQxcOeQXNanbDO
	 5H4i4QzcxsIrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EF8CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129703372.7827.5467269520326119689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98a21d2360e258b740286882a8db8b3abab1b3679bb70a412be192e5ad6748c
Date: Tue, 06 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791297033
