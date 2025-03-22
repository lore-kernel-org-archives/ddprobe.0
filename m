Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C7E847C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742672995; cv=none; b=S4BYqI4IEVuEJeU0sh9unyPCh6tMM/ZGNvpnlGH/cV5ImO9ZQCylGbw4MyqaywkeYj/a5tJcSiDrJ5DgQofCr7EonpgS+G1SsoAUvT13TxHO46kORV6KGreGPUA/W6MVi8jicfKSCPWM3sccT30Yv5IAQcqb2m0UXDpYH/UFNzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742672995; c=relaxed/simple;
	bh=Z5YmbzF2lnZy0pe9eklXVvgYsONH0wXf2EUT0ZK6MM8=;
	h=To:Subject:From:Message-Id:Date; b=CX7I3YV//tLmyiWaFbJt9cUu9TAclx5iQf9nUW749OwgnmXH0AmrjYLxcFU8OzdXzhuMW6RnP2zv/QBsVoNA30YuWuKN58v36Mnm4io+kZQgrpBMFokuMLB1zxsfCQ9Z15BkbD78dcwPcsVVl1TzlpOGsb8HVyEwj2yBp9mlq60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMkm0zr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMkm0zr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EDEC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742672993;
	bh=Z5YmbzF2lnZy0pe9eklXVvgYsONH0wXf2EUT0ZK6MM8=;
	h=To:Subject:From:Date:From;
	b=pMkm0zr3rCFEuGTGYjnBWnpjsC9/NWxriY5Hg2kqImK8RaijDkF38855vKrIl9AIV
	 KeuJCarnbIE7SE/ldSiW0rZHLk6bMrs0rt3+l3Oh/FasPIoptN573ajci3WnD/8sNW
	 uaqur625LTla80cAZrb2BQ4+3ZVvReKursXEmaRWim9rpRgNjDDF/iX4ACVXOjrec6
	 4vaDznNh/XLPMge+/4uDbm5u3voCSZzI7gSmqJTC98d/3TnV3dpxF0VPyEppFqKK4I
	 t2xdlL9xgucEgrRCBqSc0txXhwpDudt9OWiuNeQaMHG03P+NTK/ximRvHUh1k6FgsH
	 uscn3rHMqlXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54EDC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267299360.19358.14946160359015501060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3002f572cdfec82472f999cd99c00e6ee4e34dfd991574abb77f49e815aa97db
Date: Sat, 22 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742672993
