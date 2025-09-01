Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D227E1B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756769394; cv=none; b=uTywG0gf+ZlFp3AXgbP0LwV6JR4JV0UGql17fpa1xEV66eZoMySuHL5fvL0X0QnXu7M7OxeDbCO4GGuhrsuYt76BwftTqWAJfb7snimi8jg60KQ0gGiPn+S95Wpcm5quApDBfEJHWaCSEldPGK05eMOAh/638G1QTOjxRBcsXKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756769394; c=relaxed/simple;
	bh=Xh8neYwL7+XVdFg/SLv1TBCPwDg+5rx60RHV+1rTExw=;
	h=To:Subject:From:Message-Id:Date; b=sMZpkUjVDYMe/EVoN8FzumzU+ySwsCbBIwl/lPmbe4zf88/WjRrWYLj31NC1H2GhnfVeT2eSRvktwLbWfcrMeX/7sf+bg44BjzhP/5OIlp8IFX+UuBbA5DYBf7dXgffJlui7ogkPPlnt8gALNStd9sjBVxz7jWOIYFaNdMRF8HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQeNo9fW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQeNo9fW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756769393;
	bh=Xh8neYwL7+XVdFg/SLv1TBCPwDg+5rx60RHV+1rTExw=;
	h=To:Subject:From:Date:From;
	b=IQeNo9fWXW4BMghJJz/5O/raah1brvoua/e10vjDDbAWN2l5VTArBa+b9eB4HlUMF
	 qTlHrHAFKUMLJRtI1RUzam3X7PsTfKcNWNvqResqc2y+CQXR8EED0C/iqIi+EV/red
	 Qu/YxMdtvLPwyumqEmroIIYEXVeyDioZ/LBmNFiQMTy0hHlQlmapq4s7Bxly6hHop+
	 hUYtQNVg31fAUFEMXBDQaIBE1z1en/AQJKOKlPqs9J0ne3hlt2V1f91onnF6iA6cXC
	 RNIZyJEVAxVq7OAlLboLjwpmY9azRgRVJxQGGjGzpBRsv18BaAtCfhFJbjGnXS9uxw
	 eZuknKiN2zl1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83CCA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676939357.9740.4847780737669103906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a643e32a4157d568c3309b7c1748360e17791e0f2f0031d8543a897f1a617316
Date: Mon, 01 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756769393
