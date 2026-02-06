Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26400283FC8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770392635; cv=none; b=fIo+qyk0zqK+bCeUFYPPne8LWeY+hm+RBRoiT7CJ/alhWbgyhPXFy2MKoaqrpd2uAYThT7iVNxboEk4T1OxfEQr/0fXc3fA6wiNhqC2ViluMsJxPNjLr2Ic6e1yX6sz7927qbHBTVNiMVhJ/+wav9MLqlq2pHLXuGKUmY9EVyYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770392635; c=relaxed/simple;
	bh=li4ogy3709cf40q/BEU/5nt+f3BVZSU2ka2GoAegogg=;
	h=To:Subject:From:Message-Id:Date; b=k+lFyfPqoy0E+s7e/BnYMB4GluWkhCBo2ZUFoB7sbWBkFIhVEMIqM/Wji3wb7HQ7rWZzkq+rp9e65YLiT8YKFQUc9FsTAdQ/1eMcA9nhyqJ8lBVOIfgHWL9ctA5jnejjqxIS/L50CUDviZUdOrPBAMxjPXpFtAi5kBdN0Qaas0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEnlIWD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEnlIWD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A91C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770392634;
	bh=li4ogy3709cf40q/BEU/5nt+f3BVZSU2ka2GoAegogg=;
	h=To:Subject:From:Date:From;
	b=lEnlIWD/yk6/O+bjdveBIC/YkUgLWXnf+p+e7g471p7PHjqiuYByILlC5cRg6TNGH
	 V+uiQSn/r7qjpJ3SZMv6bhcGfvUzhGT7G3q6V/K/IjrTYe/GcoRQ5XHH0QL9ajQDuv
	 UXx8dlYpEYmeEjT4SRPqYH+mQAc4WD/RqhSpsCyoYB8o93WKqXoKYo4FrKkCAcDWXb
	 JkzoZ+2b8IzpI29DhKerhRUd8taLgeMiknsoMTBkChiAlAf6EOmoOkb5YSbznT/iTV
	 6yOUYWi0+TwmuDTWce0pFbCGLzsXFIzYncvzgfEJAmG8EkaMOJf9lJoWo1ky2zhWaH
	 JkjHfrlkZ0r5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D51EE20AF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039263359.28620.5427922636097415564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6092540ced6390f385df23552ecfcf52b2193170da3f2ca37b704097c0b2c350
Date: Fri, 06 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770392633
