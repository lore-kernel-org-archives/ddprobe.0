Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AD822FDEC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757530794; cv=none; b=Z4qpORgGzvJTvIZ3ytVRZQ8QgTYj8BH0ewblktAehJgjoWSy97g+c9Eek3sMZgzPkyNRx97+xrbS2yb5wZB2IaYvdLdUnXQWG7BxdcwkTDDVPtjHGiWnG1MTafFbVLnVJcXv08DOTmdtnsHC6R9wypndrQykpIlvdNi8qLPXbYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757530794; c=relaxed/simple;
	bh=HjC9kKn5bLaJ7hiZ0mSiG0H04asKbs6gmuakBx9BA9I=;
	h=To:Subject:From:Message-Id:Date; b=nhBGqjD3vCM8hGX0qHspBpR4Dj++m3XMJk0/qP5HC6d08RJ9e/7634O+R5M2JNN14UFcocREKYp+SpJAaHImk8NAH/sADbzQPyioBxkyV8PMrou2X1MzMwEZqykRAGLDk+rCVYS5M6i3743l6sUkiannsX/JSsP+jpX7nt44Ktk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5ivXCOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5ivXCOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757530793;
	bh=HjC9kKn5bLaJ7hiZ0mSiG0H04asKbs6gmuakBx9BA9I=;
	h=To:Subject:From:Date:From;
	b=K5ivXCOemAeTvOtI5KmCN3Mg3kpmMQMkfahRas8BBNIulQTpfGMJkxRf6ubS6WR8O
	 zXQp5mmjevhv0pHdjoev4LnEyxFM9CbZAS14xAk/4mf++JuFi10+v6E6d5d2tuPXrm
	 XQ6bH6PV6mrZW7/BTnfMnCkPnBTxKnN0KWuD1tmyRN/mUxucZ0ALRoZgIcWKQKgcVq
	 q6UVLY/zA8vm0K8BhfJAe2ZVKaLg4CplZA5lxtuAAayAkQa+rfPa8wm22btyAJHC/T
	 C/06N2RjpoJ5lBUxUlWLNvLwLyu0gaCnpTNXDjUH/KmTBOmrWqdKn1ZlsYJAnOluY6
	 URzu8i8kloIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC5CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753079358.8405.3912334356548665572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152bc7787f8455b26272e0e5b78e7bbdf3f7063f4498554107e7fe2f42886ea3
Date: Wed, 10 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757530793
