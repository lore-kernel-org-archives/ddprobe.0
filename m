Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D919317BA2
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778770833; cv=none; b=P/KZyQ+5wk5eR6NG1iy/05+awQ3uJYEzI5OdepEiXv9RqC7zMLgSTUjAG39ctpi8zFHX/TBYeVP9Q0VQopfsAvNA28cH+vs3m7btSKHtP4VnHIynoozpiyz8krhx0W/lACJtdt9uQZtlu615Fs9zxFHq3TnSPHR+AGSEEh8Ress=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778770833; c=relaxed/simple;
	bh=S9ROCrZEsspq5SDFA+dcBngIGepGe0cMwn+Uv+tRo6g=;
	h=To:Subject:From:Message-Id:Date; b=DGsaarhlavTc1ahbaIqZ3j282RP6Iwly3EnRFEYzZHfyxrVKnWqT0CvlJs58A2/TfFU3IOT2Dvy/bSaAm/h78jP1IAWsrOt6sFue5Y0sz9cVEQLuIw2cEZAy9sLqPIqgdSE/M6CBcpWkeBhYZ6/GE4RcoLgX9EI27rjV7tU+iK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC3s7h7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC3s7h7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDADC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778770833;
	bh=S9ROCrZEsspq5SDFA+dcBngIGepGe0cMwn+Uv+tRo6g=;
	h=To:Subject:From:Date:From;
	b=IC3s7h7uSabH4xNghE9hSCBVuG/mZ+QWHyM76AKYkAUBVkcZjzBG3ytLBMEOOsRhj
	 sDTQ6Xlu9+71H82uJblJf74VMV975XRwi0NdbvyDJ51znUYYEvA2gIkWMMmLfA1GBU
	 QQH1ewYoUlzNULwUwoxaoy0EkIBJHP462fTBQpUq+o01wLhgt2wj8OWCDbblgk/sgz
	 cn7adTrsLD8WTGMV8HP1DruNOyg1vAgDpxCkNXTIwTIDnkcjbB9bb+ZmAUrNu+8zSA
	 ZwW98+Yl8QJlm6Dj+DwJsNEJGPl3gU9pOE/tsZMM0lzJclmg85E7kgmaItgXYsnqDD
	 0qDA+jbs3ufJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4B2CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877083369.26116.5602802067425383714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f9aaeefbcd8d38ef92ec646c0e871a0b359b921b6aaf20f02964a00e965e54
Date: Thu, 14 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778770833
