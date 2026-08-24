Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542F733A9FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787605234; cv=none; b=J4W+S58T/okCV/vJRhUDsmfxvlzFH2C60j2yzofGIZ4wyt2Q1JT/14VZeZb/3z0RG58g9pTypjvhrYAX7JYG4YKMsOcT1C/VKQlZeBl566uR090kUU35FifOqjwn35+o7f6vMuhIzz52BxwI14B0ElWNn4pSWubthyQGgoQIatk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787605234; c=relaxed/simple;
	bh=sWcMhFH/ynEpX+S5Wffx4kg4VjshuAU1ezKsS53Mjkk=;
	h=To:Subject:From:Message-Id:Date; b=au+ktLGmJD4u8NpDgufsYgJ77YUwbh+N5+beSzMbClMWF5PMUM2E0xDsfEjH2pTGPJU8UhtPrMzmGpIEadxdmClJ6PU8wtHxAz2qNdDYKXxkSLsVpqeMj+be2cZA4bVim8SUyxCCZJ2g58WxQRNJdwVThDYJdiN2mHX0Ah3pQrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwBcBzFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwBcBzFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB0C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787605233;
	bh=sWcMhFH/ynEpX+S5Wffx4kg4VjshuAU1ezKsS53Mjkk=;
	h=To:Subject:From:Date:From;
	b=hwBcBzFxeYL+9bIuohix4oshnXtz8DwvoVxUr1O2uEh5QyZZvOBEIQ2zt2RYEsSX1
	 nz8PAifI8EiAszShrotHcmzdGIHkvKVLgVZCmn3CSXpOtvKjFuF9YTrzpEQP2zrVE3
	 kSwSB8j+4rVMPUT5bNKCvp8tx0XdQtQYlDL1ylFIW4zcpe80h3Q9CrUDSZ8Ij0oPMg
	 GfRyEDPPSyJ/4FGuF5A9ddlcI/Ln9pPOiHsCt29dyCqB9pKub8Ppw5OdAshTi1d4sc
	 QU1iuegnIsuKdeF+yanzvTIPJ4eZ7jLd0MVRYQZRiW01vEPq6Fy57dFFwWgfyXgfQo
	 Sx8rhAa9M9aKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A1C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760523369.20610.9192690350585841904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d0568215d9e299d4a666ccd8b4b4c737ff4712b1165ede630021d09a36f658
Date: Mon, 24 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787605233
