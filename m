Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ABD3C465
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769212434; cv=none; b=sGuxgqnIqX8oubdUYFTfttuRXnVdO0ZQIIoKAL5W1kQF0e8+aWruHyKxYXBv0CSGwVCqqJ4zR2HejBDdwA9UECCWVvJZN6Wvhvnm+YoJPbBTxp9CgfrapL0KzVOwUsuY4hqanPv+imka5lHudqz4xzzT1WjAgFLySDYg+bwAxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769212434; c=relaxed/simple;
	bh=epw/pDnFMl47nWApGaqJCNq5EsicwEAlBV5ak6MqAT8=;
	h=To:Subject:From:Message-Id:Date; b=RW98CyQbXbBUN4iNS9GK4hhcegU+J3GoOIyDCtlCy4Id7kqa8OaFkiCVTk23DPiJnF0L7HSDeYaWUKgJzjhA1OoIQnPQiu+ARzogAzAh9NyciiLY9kcqf4a1xC/YdePZirUFbna4k4w87a7NUSaqusv73NmNaME/fh5y2z8NmKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9vWBcFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9vWBcFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34AEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769212433;
	bh=epw/pDnFMl47nWApGaqJCNq5EsicwEAlBV5ak6MqAT8=;
	h=To:Subject:From:Date:From;
	b=M9vWBcFeAYusUyUSOQW2YTzFgaCqCP4cQP9oT8CHS37x+gXNKl4fP61yYb+3Ho5fg
	 kSxI6vCmpGZxyvKljnusDLM1n0IuY6L8O6YDzJgHDS0gD/mqPzmk75Nj/NvYOAC6b9
	 4z2z0kyAxWIPFFiTGRJf6FHAEq6kZap81W4zTToVBN20talvJYIJYzEkYh3It797Q6
	 M+8HIHe+srYhdiPW8MebWtdoA6gU+q5eI4LrGJYGO1iw8ObA2vwx/gJWR9FNUPS9lE
	 cUkbdYdA9HpbtTJLzjRIzjbATrKQADrfVw1NLpY5tZoKH+V5/+kcG39UzWy/Q45ltF
	 biW4/WygwO/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BFD778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921243360.2684.2695509013152210000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910a2e2904c56a0e0037a9a5619def182d0dfdaf878496d33207993d9ae3e8a6
Date: Fri, 23 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769212433
