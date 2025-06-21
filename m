Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110A514D283
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750529994; cv=none; b=qTWQBB7acTHEyOV0jtMvtTle8yYrAKRFYYzF9GL0w+F5qetgbs8L0ow78ZwlKVtWAbBkglMhbhs0ppcvXxIC/l8DGBhVyhCsw+Z65LKghISAYT+uDyO+/Xf4GWV9po478zTM7BDyd9HCuBUYnUxsXnWBFF2s8Osft7QQtG3DzPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750529994; c=relaxed/simple;
	bh=tdc/zJrBZHKsUUyeFmro8szUjebGidwHV345NgW/I+4=;
	h=To:Subject:From:Message-Id:Date; b=h2F5CCZin8bKJz+2SoJ0o8euU2nz4KbjexBIHihem6lJBywNpjwOBlJ146AnAEyZJRV9iHQQAsxvOJJAE5BMbA47hPEX0pX0yhmcs3/x89LXSifa2Y6g81jwSMVplotjd6rSDH/JLa6/DO0L8ROQGwmX6CYdGM1/k/NwGvKRb6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHCB3bQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHCB3bQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A055BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750529993;
	bh=tdc/zJrBZHKsUUyeFmro8szUjebGidwHV345NgW/I+4=;
	h=To:Subject:From:Date:From;
	b=IHCB3bQR7FCWFOw0S3rfEfnyCrLcmZ+pe+af2hJIf7fpK/31cBvGwgTd9NlStFax0
	 na4n2HWdfkVD1urPZcto+fFdo8aNcKmFqGuR1jZYuZQgbweUG0d/+vCdSDCQPlTzRW
	 AodtAOvm0k3JgEDR7VAOLV2PHFl4aRKQIwkG4JVC1Bm/5olJdpuAqHgy3Ghddiu6rF
	 HsEIyS0U6rQFTCMsudUbk7ccColEsOVj1Jb5ZgT1efgNLi8IzMO2ACx3LNilAyMSg0
	 /TaJ9B0BkyrJGA6GLE51WdWmHszBiDe6uAoVNSYNS+fc6+STCeEN+zm49p4Yo6GrAe
	 N9S8mkOxZWMaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91184C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052999357.24813.7792847926358453957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a84d44b7d26ae510cad7abf090b1d9a0d568889152570f113bee34422897d2
Date: Sat, 21 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750529993
