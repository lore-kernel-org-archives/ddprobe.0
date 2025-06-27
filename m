Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227AD4502A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751050794; cv=none; b=d352y42kw2vL/SsCayMr5FWqouwnRbNGVV9Fi2AWzlRcsHpCZm3H4C4YWJsDxtT6s4WZrvBxc4rFxfrNIOCnCD2ppO+N4/fGUHuBaMeNTHhOMFbYMcRjbDCykHzSDTqiAwFL1djcfzsK+evkkt5uEI+aarD09qPHfDmq820opWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751050794; c=relaxed/simple;
	bh=hKai3nWtNilzqwsQzjAY+dGjaa7+AhKCaVS1DFOWoFs=;
	h=To:Subject:From:Message-Id:Date; b=JbG7QsdecuSWmqfFXTMsk3hZlBdIxflusVs8cbCWJ6C5ZDoZsf3MzvKML/7qR8kDgTHlgX/iRclxmVcVhvOH/9Xw2NXCGIqxMDLcNb1fKlbg1rRmCxbl79oqv3kYj2HVZNMl1NWpy/NdVqenOkK+iwQ9rQe/ZLkeIGEqrYZqoUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPefxDGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPefxDGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41C4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751050793;
	bh=hKai3nWtNilzqwsQzjAY+dGjaa7+AhKCaVS1DFOWoFs=;
	h=To:Subject:From:Date:From;
	b=BPefxDGlQtwws5o4CnRMoiq+jxkZ/4/gHMRFIyxdOzatyaFAli9dz2kQ73YZdY+2r
	 Jct36U6ITmNV0NDr6c6mQC7H8xlslOAvaLE08fzthRaM+fYGDmoHytPAtZHtZCcFK2
	 8MTCd8YgXhkJsOdN9kYdk3oMkF2SlM5mjgJFXIy8sVC6uH4n/FTwMVRYt0O1jZWDXy
	 CBl6wj+JIWNhvnL1PaqooLXPhLK+KgrZEPb4eihQvvmwsRmGzh8lPle5i0YiGfKcP9
	 Zz5J4Eao4Z4IK3VWvb1Fgz5OteuZxaa/gtPhUP11fFUO1lygq8cZwwmtR90PiB57+2
	 3pFMHk7Ecddug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0310C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105079362.4936.13541093298209229740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c529d366de8122bd376fce245f1a7c24ede62e8e020d47377b11823cf81c333c
Date: Fri, 27 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751050793
