Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7126656D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755850194; cv=none; b=bh/JTgvEeTGiCrRybYB3hVIRQJlkLBJGZ272Twf94Z9OuEyNelrIBoIM51Zs8/9XTxmFyhh6ezl596kKEPYrHaFiclrnPWbCOJ2mdGqj4U3TB3IjUWWtgN1XU3scdkg0vNfgGSmdau7bmwnrrIIvtIGUQBHoUApkMXXR4K4lWGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755850194; c=relaxed/simple;
	bh=byz9qudKZxGwC2kKNzFUIvADpU3JpCAWmPqVaJC8ENU=;
	h=To:Subject:From:Message-Id:Date; b=jsZRFkAcx3t8+q5ZwtH69kDMltjV551ZwPtSBdxhwTFUAn81fYZZ2sUV5s6Ojix6XSYDlS2GvHoMwSsaHR+bQeOITHfqmwGGmXD0jxFed74ey8EBBD0Sp+Kx8Qpo/HXh5mqAja44HWU+ktBMUYTE6+7bntkTION7XbauCj4ndzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BetAkI3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BetAkI3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E66DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755850193;
	bh=byz9qudKZxGwC2kKNzFUIvADpU3JpCAWmPqVaJC8ENU=;
	h=To:Subject:From:Date:From;
	b=BetAkI3+a2CWMNZ43i/Zy9gCTrtJAFV+I0GQaZ+iKLdIAZxmyLNnUhjChoO4Nj3Bc
	 sAna+C79Tde9Fe7IJMeWywRig7POz+EDhqodC7C1IKQ0J/nXiqwrUxoXAr2ZEEZ3cj
	 rgF+vnDwJSM6cRXJxvt76gRWAhVF3g0SRGEKBwfAGDnvp7DXUbr8QdrTaaMNCTzr47
	 gapA5/7S9xujglOc9hfERusF7V4tikNphipvF3u9Xr+1Cs1H8PqHxTbbbFts11UNgu
	 8B0lrRGB98sAA/wRQ1mjW2BaNunRvvBiCREhwEXvaFtNRqiGig2kbZRzRi0+kXZdDT
	 xMgExUmwYAEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E545CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585019357.14861.1820482159917263747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55535bbf81dfbd6a27e7e0ad385abd7b6b0e31e04e8666b3acc01f8eabecadd
Date: Fri, 22 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755850193
