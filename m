Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA053112DB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160234; cv=none; b=XuzSDdhwzJdF2MuPb0+4inPv0PiI5hM0nM5K9KdrQnEkQW31a9zAJTIIgXtfV1ASAI3mlxRF0YpcFHl7kqSM9j3dilBOZEV3WITDcBbpzptqaXKkynOO8MZXGygrHlq9oy+3TM2azVjp4wXtjIPhzKC0DLYtipXf/3zVoLD6wlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160234; c=relaxed/simple;
	bh=6CZHv6qzlNKbl+s7qVz6KywjvvRSrSipmZVcHjh5BOg=;
	h=To:Subject:From:Message-Id:Date; b=of3l7EdQYo9uLpTmI+cUHOqC2SVDApNzNp+IX4JqYxpPSDyHojcoxtW43ruoB5VTpBmeTvb97X7nglF5AMndVFFl1SIeNPFE5q+yTfnszIq9mzzcTK3CMFj6ujIwNds9O3/W+9T20GveAIzDdVh3ZJs1ikDmBznquTUhY2mm828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/XObIyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/XObIyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769160233;
	bh=6CZHv6qzlNKbl+s7qVz6KywjvvRSrSipmZVcHjh5BOg=;
	h=To:Subject:From:Date:From;
	b=B/XObIyQ10sjSurfUGF5KzvGn3huFEwYdkJ0/tmiRmAuT7a+rhDd9XuvtxEuB0uBP
	 BQ8zufPhHDxbilWDCculcgxzP/NHSXbRH2+eFtvn3dUW7kJcJRPtnRSPQWaVAaxS1s
	 410I4XOofCejqXQUiVl7PjTFU8oM9MIQKeMzv51bm4bhZTpX6y+vR0AoYJ1pEoo6KC
	 l60spw8XppyUSjmh+NYgehVKU9hWFWxErnGXxdRrq/XcMd3NKPHy5f+8CtC3RXMIIR
	 vU5yVfcn4sKg+zZ3zhz6XYElVV+XH0T/cnSLM3E8c/ZJuvHu4FgVCVXMjbRHX6Nzce
	 TPMHaERHNerMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F35D72361
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916023359.10341.8231221244553489936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64de2a0d456a5bb09e0bc0ce42ab48f644c4e63972c4269083e182c54d8c2b3e
Date: Fri, 23 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769160233
