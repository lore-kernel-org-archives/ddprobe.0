Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED01DE2B7
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741636734; cv=none; b=WmIYUS2QYsfcZ/NisWsOmPLO2c89V599XZmUATfxZSJgouYP9tqhBDDJQKlnC8dXcmc3Nacs0O0jlK81S6/QeoUSLyxVlNt+Isp9RnuiWKJMsYRVt63GtmrKoABraBYDJ/ACsJw1uwHkFxH3yhqogIr8biB2W/KiETTfsC/HwLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741636734; c=relaxed/simple;
	bh=Wx94VkSUw67SrnoYJTuW8XpBliyltgbdvyLBc411WHg=;
	h=To:Subject:From:Message-Id:Date; b=rvwJPZ372/Pw3WG+ahh3VlIprDl/jHH3EkVHVbLBAiwc2T0DvMEaEz3uS2Wo0EM9wWM+KGWpki9ON1Ol/OuJ7d5BgNtOyUnyDEzmKmFyjGsrsqkzzWaOp5xX1rOS21xPtscyTSTtOYb0CVmMBU4pSs+Lw8toBRBQkMuaEk+CwxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYj1SUw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYj1SUw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A386DC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741636733;
	bh=Wx94VkSUw67SrnoYJTuW8XpBliyltgbdvyLBc411WHg=;
	h=To:Subject:From:Date:From;
	b=AYj1SUw3VLcNG1aZWlaU89ckU9fjTcTXnJvGUkwFwraZMcfekz+GLGlwrSFi0Bp11
	 pNZ3laUbL4bUcdL1X3Wz04IjPa7Jm26Ebi2jPC+v7PshdJn99iQK9IFKPdg4bHvzu+
	 ccrSzmZ07QfXV7brKTDn+uSQZ2utEKqHMv0YtA8zWihsgG2FhCOXTTz5CtkFWEC65F
	 fkXpF3wTSVCWyG/eyU7pxda2fWvXrYQmOJ3eZ7b2diU12GjBfOUxxQhZgit3ENu+2Z
	 DVnTP2fbIt1snqNdbG207qHJySigbmIyUFEiAVdkCNrkwnPg0+mC/6gGAwOkAvYCJ/
	 UImj/ak6zb4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93343C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163673359.7152.17043010785666610740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0246c8d8b9de8cc6415e9547575e079a3306ca3aff51aba67440966566013d
Date: Mon, 10 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741636733
