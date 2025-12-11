Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8CE314D30
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765482773; cv=none; b=R66ZKmiXQYQImr71G/2IOUInxj0X2kAySa1/HuGSx1KlQ9izdOGmbRqIM3Guo/WZS7z5Zxczuy+Ikfo+EW3EuERu9pxBq1yQDuv6FRl2TeoU7dge+qr3kSAtHMwPyMdp8IOOx6qmjHV9Ec2blsTpYK3iIh/J3lY/TJOLLn+08qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765482773; c=relaxed/simple;
	bh=kz1VSVqEsHm4YJgSMEc7y2X24yG7F7tdM1Flq8YXwr8=;
	h=To:Subject:From:Message-Id:Date; b=VMswWsS84ul0aRcuzoJWrEReDBlcsvD6P4WBD3/BmTJnX+8lsGtXAtg159oZbfGy7yIP/S3z29PE58eAi/moxbdbnxeQ8BI2zwQa2tfS5PHuLxM9GwDlsz9KZ2te5wSwZTkRJ99t9UybCYzHPY5uxDKUxLZya7Se8oyfkj71VwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtxIPK48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtxIPK48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6110C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765482773;
	bh=kz1VSVqEsHm4YJgSMEc7y2X24yG7F7tdM1Flq8YXwr8=;
	h=To:Subject:From:Date:From;
	b=EtxIPK48DYwpbjeOomQZSUAoRZGgDHSu9WlcNUdqcE+Po/u7Qh3ev9j8o8OBz9YWy
	 KglGx5iciOAjumQeN+MN0OhiC34lWUZjRiPJPf1ZGUfU92Uie2N7xDBmQFE7Y/xB2v
	 UKRA9YcuWkc5DRRQ0T87gx5Pk6LnJ8D4CzuiNJQRC3Qe+jjZG9feu5qhpiklM4tcAD
	 Fz6RQPo64r0obizwP1EGGsz58uyugXavwzg3jYPft/IZQRS2LBG/wqYmYtv0WbED+Y
	 k2Mh23Je+EK6vUQR97Pku7xZcM6e28oO2PJUk1EHFPN+wsdJDkhIf9t9xubivuzUzJ
	 f2lIeB0/lGyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D0D43341
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548277359.30062.45234448542445947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4f557113d458990c17be1a870e3de7933584279580499949a71ea2f3be2267
Date: Thu, 11 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765482773
