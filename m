Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AF219F13F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753913994; cv=none; b=GN0vkw2xU+wFRT9qIevLSeZcRgfZXLcJkXpBiSfcVDlHs1ioZSzu9gmrkVv2HPhOPSLKiB1IQzpJobl1eoZb2yNVaBA/pww3fLYlk7w3fGRBG19F7i3gCSqL3ue0FfNUrxPx0WwipyytjQzX02SLxmXvr6+tx0omJn01d/ewXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753913994; c=relaxed/simple;
	bh=xPRS/H4wMDMgMf1CgcI6zKuDdFik5tuprSyuR7msVu0=;
	h=To:Subject:From:Message-Id:Date; b=TtZ1NdI3GcJGT50OoTRYakqenPg9RQtETN9RTu2Jn5saHuuEB+C0OLuNLM9+eslnz61he2UikyRUF9ALr0/TXMIQH8H4AKKqeSz9757FiKzdjAC8OvDKEVIGNY3VF/Xh5ZoulB4wAiw4y+H8kSjqn54Cr3dkNQmnBcIyJvqX8SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJgKIBEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJgKIBEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E595C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753913993;
	bh=xPRS/H4wMDMgMf1CgcI6zKuDdFik5tuprSyuR7msVu0=;
	h=To:Subject:From:Date:From;
	b=pJgKIBExiTQ7soQD0f6pt1cMz7UrnEdycpbXnVee33J9ulmSchy3cBDOuAd36M4G7
	 BQXx0CUYg+0mKAJ+YIZvXhTkSl4/2nTU5O1yox3ptYybd6/B2sn+NNCGEwkK/jG5i3
	 GtECxn3BAGZVD9wK2LUvKPlu4BZb0BlMNcncGxq5Z4WeaSUETg7vGB1ISCU90wLo7d
	 q+sJSKWxcgPKMZgfABZ59JG+SL0/X7t1GXij+mCGYJsvM7tDSWK4i0Tl225rbrY1td
	 /nXBvttUjBXI2B5I1pxnQu/hxeYTXuENBGxdLnehDEjViCjx1R/N9Q+NWrAkvDqsgB
	 zymUKDZ+UeDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE94C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391399357.20879.14765963181033413726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bdadd1f30f70a60590dd3691ecbcecbd89a882ad57fe0b41a584dfea13e3f5
Date: Wed, 30 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753913993
