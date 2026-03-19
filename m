Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F02440DFB8
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773925494; cv=none; b=Oj6YWBOVDSVQstLmAU+SUJu1maA3lvys9YoKO7byUUFEXpyM+ddwoAXs6FrmgAFX0/jYJHQs6nYchpug6PlsOGLGsMzSAToQQdq0ad9xVvo8mA6esOv1vrZF3eehdBbFRftn72l51PrTDIudyjMrw0tNG6oWO4byG0frIKZ/t4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773925494; c=relaxed/simple;
	bh=SmKIY30cT53FyiDdEKdQh3WCj0FeGJUGXbrYFsYNVmg=;
	h=To:Subject:From:Message-Id:Date; b=JDVbJd7jr9bDWDeY1Ttd65vWM8qCoru61kq5vzhcqd9jeVgpj27jSaewL0fXC32RzhrOaBhq3M5tiGtO36mUjOagAfyeQgH2V1a46WRWROrLa6Y8ZPWX4A1KgNlgRV6m/lti1EVUdiDx2mA+B4N8fZP/bxsusIU9XemovVS0Afw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O188YNGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O188YNGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E92FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773925493;
	bh=SmKIY30cT53FyiDdEKdQh3WCj0FeGJUGXbrYFsYNVmg=;
	h=To:Subject:From:Date:From;
	b=O188YNGnO4zirgL3HjnS/fmsctfX7XahIyVFn2UGGo96FcY9DI0AGRWj2kuWpA+5B
	 mtuUG0XmBWuCHHeCpyZndx5k4sFuHgrEjVh71uykPm1/64emdh0dK3VT1nu8BBXHF/
	 c/lKv5ItkxiOJHnN5epG2zOP5RSZCzEabw+VErRrj8i79HoUBMd8chOGCVNggHj75Z
	 gm2q4keSafqIQF/XqyKpjW6kG4MLwvGidPgQ6sEeaEIEf4k7Rkp0sVu1wWtP/V+wKm
	 VKuUCnENjuzZQSchJ0uf1eXCzseDM+U7z2OIQVrSZDlxI6NSq2RBGOjPxTKWBqHlue
	 siKB+PEi2OqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902AC1090224
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392549358.3316.1895016876444150346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddc1bf27b9ea2e963f7e41526ba987dd33354674f958b7945e9add7d0c69a6c
Date: Thu, 19 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773925493
