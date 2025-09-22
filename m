Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4278831A550
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758579594; cv=none; b=NAalOYAxlWtjabW6rSRJVVDevyA7nes3wZH4CCvrax/lfugLlesSjaXyNguTgBFc8GJMkhgYLRibW8S2eqbiuxvyNTm+6Dj8JHvM31nrnmsYDrzk00vL2mdQ6OWTlwTG/XOEI0nvCT647+31Mw/XPeIaPltKZegwo/uGvoXn5iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758579594; c=relaxed/simple;
	bh=GDaOPQENMsNdHooBMtb4DHUBK6MheVL+MwEaxRknoSA=;
	h=To:Subject:From:Message-Id:Date; b=bcN6VXPn7rGuqR+QE9ndi47SjZn7RULqxTK3RLQaN7YKQZAuRGOld+UbxChMiKepRTJeVyiVb8MN/6XBbN/hCZ49SiYRMF7HG+UuSebKRVWoxxK6JfDDFlVpeDOEz2ST1KAsbtpFko+V86/xZQBZidrtk9DDT56EZiDPZ+DAfCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKTovIch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKTovIch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5FBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758579593;
	bh=GDaOPQENMsNdHooBMtb4DHUBK6MheVL+MwEaxRknoSA=;
	h=To:Subject:From:Date:From;
	b=mKTovIch/24ALRdkN6KBI6T9NXAdOxrTWiTDcCIeb11ct9bMeTlg0yZUhAS7PW+lE
	 15365ijPXBZJoUJbm0j6i0cb32R2w8xI5SywIqRGK7VqZX9nwzkopzBckbzpDeNmAY
	 NBUdIdqVuO6xTJr+DZWG5P072pn2dX/EGuvpKdkGEpuO/9uRbXmsGi4oCAxDXPQ8z5
	 KOnCPZC2nUO7Qp/ZkJwzZpZT0AHbTBkLUh+kEHXzCM5bl+x/U6fo84s/n1TiEEnvDh
	 LbBach6G9NbQ655SHT6OjL96sHnEvQxFOzAvJIm1kzLNOw5XQWBukCdx17LxoD3dFX
	 a1zFqUYMDmrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A392CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857959361.11081.5953990041203312926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d55cd91c77e3381d0a31687209dd20b836aa7c7df51f5424d81ecc658feca9
Date: Mon, 22 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758579593
