Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34D2550D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769408034; cv=none; b=LqSmtgQB2X7pEc7Sz41w5X/AmJRa1cmAiwJu3DlXOObUVecIqFSrfYDwqSTS/brRkNqxAEtcTB1YNA4v07Hv0CjUd8XU1vxzM2rLU4AHVV4lw1Noneym/HWbn6QeBDu2Y9nsulUoEWo2RksoTgilEapLh1eyz1rpNM0EAhQZ31M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769408034; c=relaxed/simple;
	bh=ILyUgZmC8yphxFoK3mGRe6Yiu/g9OZS30yqTzCmHAfI=;
	h=To:Subject:From:Message-Id:Date; b=JHZMhzzvl6WY91HwwY8cp3ME/TF1CLNUuNjoIbn1iA3UvVdue+0AzU91jI6zdJRPKQjzUbKHqexQn9pmeK17hnHDowiSRZxqL7I0MxFhRDfhr4E7Jv3Bcxl8z5+e/yLlq2bQAvIDC5oMUKPlaFnbX1EvN9o1t3AGD61GWXEu6/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZ+hF0AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZ+hF0AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769408033;
	bh=ILyUgZmC8yphxFoK3mGRe6Yiu/g9OZS30yqTzCmHAfI=;
	h=To:Subject:From:Date:From;
	b=iZ+hF0AL+DusTB9mIT15rKkrjxKeZeOOqD7ta3BGL/OVieOpYjo7mL0Bl3N/paho0
	 oXamvWmBVFhrj7u0ypkz2gyQIT0tWI4FmY6JlCW0XF3RSewPAfcjnv8enZPPofiGSF
	 Gaz0g27fKI62Irp6Z21+xjhGxrfsTQpwwKkXzTtlecS2DwqOvXKQ5ZZKigZtDFq//i
	 jw0o/3mYRrX+n0lodUEGkTOTvahcbTGZXKJafeMpoUc4/lflnefvaFyDSZVh9zhqoD
	 gsx0n8itfyaR73n/pHHTHD4fVRaaL8CxkHHYfKizE50bdsNeSnPSuUO4KTUkZBd4w2
	 hpwrz9jWKeMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAEC88E50
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940803357.28234.15912948854128093833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bc061aa890ef3272c87c520f4594205d4fe717fabdc314e72130d0df31d136
Date: Mon, 26 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769408033
