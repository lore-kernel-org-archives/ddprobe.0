Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143491B412A
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735203354; cv=none; b=dL2yADyTjglwvr7tnnlAd4iXUoLStfL9XeKxXDE8i7wFWh5COXePsRH7upYpa8KmoQ5K+k/8sYECBBX0RzJUYKbGgeGMXe7Sq+ICh40ScWYwpBQSiEJx+7AUxlvQQC+5O1FRpdNs6IOZIqXJO2jIZuwKqA5BaZom+R7nDjIYS0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735203354; c=relaxed/simple;
	bh=9zA1br7zJtu1pM2Zt+4VMWqLgBW3t57AWI+zg+3IdCA=;
	h=To:Subject:From:Message-Id:Date; b=cKxiMUwcU5BtvF0NWXdqWrWoZoGhMT0IqdWlsWeAe/b8Tdx1QJqGY84SgL29n9LLnWR/oQCvVTG1Ej/b/DBTF8wbysL9ckJZEXk/h+Xz6hG8yLO/BcgTG7Qrbs2FM42XYVqf2KWWYI7DZZHVvrgAwjjoU6BATXA6u0BflBMaWEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nel5nce2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nel5nce2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B75C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735203353;
	bh=9zA1br7zJtu1pM2Zt+4VMWqLgBW3t57AWI+zg+3IdCA=;
	h=To:Subject:From:Date:From;
	b=Nel5nce24GGlGPt2iTElU/MwLUhJX0xLmIuVLvXrZ1OPQqapIkiwnu0pdGGiXPzxb
	 bT8tJ/h+k0P/DuEYex4dpePSpp8i1cOxrZt/DW8G4m6JrOx8B34DW6yhgNQAswRUBW
	 xanBP0BRAD6/eo5ZDxbs/PlObpJO3vgUAv1v1xWaj/Mfl9TQNCZjQL3PSPEF+Ok2g/
	 pLebSxt9miuYe8+s3YNlGLSFknIZ+EerGSQTuxDbcgdh3qRVpIjbJgdJxRxrj2a1SQ
	 +mOrMqJWY0LgJ0DrhoYLXDQjzOEvTZX7/ODBYS9dDibWocunNL3htcmOlTbuMqmxgA
	 oprMIZz5LQRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1537E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173520335361.18179.4458308366285245320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b948c2750ac40e5b1aa7dfde69b35db6f3a369774fb58b67690c0e8c904d841
Date: Thu, 26 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735203353
