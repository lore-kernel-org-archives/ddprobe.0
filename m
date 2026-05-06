Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CEF3469E7
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778078854; cv=none; b=oeqp88nY9e6JDdnvqy0g2GPWJ6zGw7LDg3DfyOuv23X4JtXS5CrKkfSdYc9ibwtUXipU0XZlHF2vH6sTQEGb6978Zb3LOEFZUW/rm3Pa9KgsjDvx6PgR4ux0oISMhYXN+/HT+qNbJGSnlmRzsMFNLEZq7ErkAHcldmiiT1uYib4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778078854; c=relaxed/simple;
	bh=9nTkg467pa8eduk5fUWz39VkuWnxlHf3FIIIPWjrrTE=;
	h=To:Subject:From:Message-Id:Date; b=kfDxSjfIghKoQ/dUVYhG1Nitwkp8VZyu/wl48sBK/6p4P2ufRFOxHmW/bJ6s/i3LAaF1wfIsA0qlta0VlPJHczQ/uO+dyn/fjs7dBvzSfgxgBPSLgdfyW9UeuO660AWUN47cjjZKZeUVnFIuOPa4tBFB4k0zHnhrG2+UtAovV+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai/VPARE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai/VPARE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9924C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778078853;
	bh=9nTkg467pa8eduk5fUWz39VkuWnxlHf3FIIIPWjrrTE=;
	h=To:Subject:From:Date:From;
	b=Ai/VPAREIVdUmNsuIO+4ecL+a0ss9K+wa9dQjJ/Slmir6LYPLDY6NhunCNKWMPCC8
	 juzLcxD+2qewypw3anql9vLnP/BS632McwgJdM2H/RxCKeo1Zw2GpDD3wYpVlWee7k
	 Edb0SygO5mVvW866ti+YIuX3g4Mxl0fsmNSWPj4FAx/JQmbgmfSt1e1Sgr/qVRVAYT
	 MbY3oKtfoLLXBb4X19nsMyZ66oBVm+9V6eTFb6fAdqCgzgRiLLWgk2Gxs5XUr1inpZ
	 7Yn6aN+XTb6+H8YBTCEaX9g7adSyo2byqsIRt/MyCgyiYyF85IQWy73htuYAg4jf0l
	 Th3Q6ztZLw1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA22CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807885369.24002.14491426672287410233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b1627f7afaaa8811bed1925f0fe49576d355eaf3a940d9dfe41042fce6d7e1
Date: Wed, 06 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778078853
