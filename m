Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BDE1AA1D9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744562995; cv=none; b=BR7muo42rIMVch/v/q2eN2Elw5Ud0ja0JGA4h7D3fFY/Wbv8NE5faNTTw08wRvDgWmqXpU0sk9PmGGqehrvchYKF7EET7eujCHctjtORku8AyEgpIvMkVJimWbF/SGeYSe+duya/e+upc8izznG3Y4jCJthDEesNbWLYt+GYAfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744562995; c=relaxed/simple;
	bh=rOoedW/xVpGZLOOOu8/Sd5w6JtDLA+XcyQmdjIp7KDE=;
	h=To:Subject:From:Message-Id:Date; b=dB8Om+Y0XsI9rs4SlSbGiXAs+G1lKUGE/xvJD8a/0F6YrZ4lzubRgWeSDsMImqOvYHxR1HTjXYfTrp2V1ka5By6gV4IwicYk4SEGdbbbhkyPBjouzhy64nEgrWWa9qkci3WOha3dwKXRI6xuXwSe5p3OK7+PNWNk2dRhuKKEoiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td3l3x7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td3l3x7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F50C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744562993;
	bh=rOoedW/xVpGZLOOOu8/Sd5w6JtDLA+XcyQmdjIp7KDE=;
	h=To:Subject:From:Date:From;
	b=td3l3x7JwUTcPxJM2K8YKo0cClGTHbn1tjOgfNZtH7ETAfDPzs9Rdlgwu+AZBN+8M
	 uaIsBSBoGk6hKdY2gQYZUdnM/2+6xT2VT3uiaO3TiY5IOfBLqaWDz906KZMKb+X3zK
	 IVAx0NGGlV9Av8HSz0P95u0fujQMOCUN/x9xmuIQ9ErrJlstu/rmOPj1HQ69qq5fYy
	 7HPky98hkGSam1iV3wfsP7BuGLHPFK0npurPkVCMj0tM3dnU120MRdozY8cb72LQ7S
	 ZVk+6gHfBHtijRBsPJsPTlGpUVlETEf+BL98oQNL5QnJXZuFJjLfmc09hUj5nDU205
	 XzO3zQbKT0xSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C67BC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456299360.32033.13000060762123497455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11ad423e96d1fe5d8b70ce41efe228b77876e7adfbe62608e1d6e8093a0f2da
Date: Sun, 13 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744562993
