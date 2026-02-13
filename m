Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEAE34E754
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770992094; cv=none; b=HT35zbN40vL1ziP41+lrGrVe76yBbc7X/aiJWRBh6kZqo+eBAQP8Ck8EnKCyYcctyX11wbokr/2NJm+2GuZgsIp3aaKjwVF67lPtqbEndUodSVLV/eM+aO2nZ4bTz1RJGmN2Ggn3XoHGae7sd4QcVoIVQ4VUlSDS4wXMTUBQRD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770992094; c=relaxed/simple;
	bh=XLBw76pTpb8qABWyicey2G9Nt1C5p03y0Er51HVwtSs=;
	h=To:Subject:From:Message-Id:Date; b=gu2CO18LvkvJAMKZelXkvHeBqljTJ1WOpsGZf6XL3YCEi/kwOyeomcGd5aiBSWY3XsXp1T+/69gTExilUx7hB0cCu0Yye0Terc5evRXwDbIT4TnItJKcZZMT2u4lnROYvZ8yg56a00n+HcOu+kSZPTAjEeQAaEaPvke17w1SOwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbQhI8hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbQhI8hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9B6C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770992093;
	bh=XLBw76pTpb8qABWyicey2G9Nt1C5p03y0Er51HVwtSs=;
	h=To:Subject:From:Date:From;
	b=VbQhI8hXmK028pwlPRXfW8sRORV/wcnmCEFZSSbPFgi3gZEM4FKkP7YM2jBbpm/D9
	 rNmFF/f3XclNO7bnBZa28KL4gJiZY0jfo3NnFfDVoUCaolpVHbLwarG3SaEsu7Jz7e
	 iRLAkvOpA95VTvugpkOVxKl7eB15VlVlCNF6ii+L07Ys9Bt9g414vVXUCinGneB1FY
	 NRTcO9XDV6dIwEra0lhOjGAHQ43+IPO6muxyLZtZX8099DQVWjdahqks5CT6EiYOyG
	 iNzN//Jj01b7e/7XFLq9tdJ9IoFTrIlrmNA4oC2JS56UK6mXXS5XHDYeGCl0L0F1R5
	 jcWnVFKa3hn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9895AEDF166
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099209361.8920.85124069281219419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ac1a2dfef320437214e4f6ba329c6e2a3208355ccc81f6540bd298ffae6ada
Date: Fri, 13 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770992093
