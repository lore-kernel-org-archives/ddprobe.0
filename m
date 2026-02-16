Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11801234964
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771277694; cv=none; b=oM5fUlTNWEm0nS0ry1uW/zQikJVTKfa9atIpd8Ej+R8dTwX5KirdT1Qtjvqjo5Wqw5m955rZU79kXCoEGFoUUgrhx+FWIgAZ1VoltX/nvwFdoOOVHHCVHXqjAukfA1ixiZ/VHyh63kgzAk7RlkrHTBsKjkUXPr3qgMno+jiww+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771277694; c=relaxed/simple;
	bh=Z78+L2AxzszAScn1XkS1pu5Jrco3HY45dVE+8yMd1PY=;
	h=To:Subject:From:Message-Id:Date; b=NR1vMdfBxKzMrViZrEJ77WKkx2/QgyWm5pJ+pplmBM9Yo5irAxAOpz6ARoamhUr2z8erYn621HYO4tVmopJx+xX8YowJalqACPy1vOtbALWD5Oj0wHXtlCq+BdYoG0EaQd81xz6tVZAu1IGmWZxbst5ren2FLI9tS+Z8cPZEAnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4ELxcNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4ELxcNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771277693;
	bh=Z78+L2AxzszAScn1XkS1pu5Jrco3HY45dVE+8yMd1PY=;
	h=To:Subject:From:Date:From;
	b=U4ELxcNafw2V6y6dWWzd9iph4QiSngxz6e199mnQcuTZZktXkpSVJYFWVmCE7V3hy
	 oWHxrFjMXchDURoMHwvo7HSqJo2DttQtC1M3mC+DBNZLwrKx3x71jyfUuwysHmyggS
	 mpBHfbsqBktR1zmiAmUpw2UvJNnUkzpXBt58H488IEzWRYBmBe1/W9B5L7NLX1qew8
	 t2vVtT+eAn62kVfL9fvD5Yp1Yd2OMVfbiXxZkFoQk8IQtlm7pnqJTQEH1yMYKLNrrN
	 8yIv8Ad77M79xOTJnE+kQqS/BBW6sVQMGoa43Q4DG+PJBjT0voNhV29RZjkgm/j/0s
	 F3Q6D1XjpbxlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B93E83837
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127769360.18208.13614010592106643437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee69501d1dbe3888f64ebf36692943569e5ef7bc2ed99ab6e7c66e7c9e76b1af
Date: Mon, 16 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771277693
