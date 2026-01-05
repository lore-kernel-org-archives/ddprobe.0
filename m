Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2493D24A047
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624834; cv=none; b=pX1F/8lV9xGEcx9CPC4FglPOQte7hw9juHRIqFS1aUiDTV7McBAICnyljDeAM3QZlVFGiIrk5P8ZSWe1jlw89J9y4z561Ui+hw28Hrwdx9RdyXjXlWEuHJ9TwMNW0PC5hf7+X70Am/xB0indiyF6PCVyYIamhTI0DVjtCIpmaew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624834; c=relaxed/simple;
	bh=NwtZbdqjWS7BOovig2duE+qPRkUdBmWl0TV6E9/2IOk=;
	h=To:Subject:From:Message-Id:Date; b=MXjXV6M/94TUSGRqONex/w0FaT4psgkJAXjOTRnKaKFdE5Ma0fC4i4NnaOKPozawGqsajCV5o7FqopP53yY2CmT839+OsBxmg6LY9zqMPB7wIkPpF+EOoIJJLB9qrJ/oeozK4yEsYd/zH9eoOWQA/qN1RUOCrunokFxic8MqW7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDEl/IjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDEl/IjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DBC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767624833;
	bh=NwtZbdqjWS7BOovig2duE+qPRkUdBmWl0TV6E9/2IOk=;
	h=To:Subject:From:Date:From;
	b=tDEl/IjUqgwyuvwnmFycE6r94vv4HtMZFZ3QQaxljxpFWnFMvzWluQeyQ/1n9duIs
	 9opVlWrL94lvi94+NT+le96WzQGCKyl4xzP//I6LkGP7CGWluC//GINNlOXw6e3d8p
	 dLZvrAjzT8vwUQh3zkKAaRq0oLrI8ehmH8Npubjt6hFwms5lYqpTxVwexNlSIXMFzQ
	 s6yH2apv8T7otSjDrPDE36p5SzALe1g2dtpEcBVJaC8QQ5qNW0Rbyw0wuV5zgtXQWx
	 T9QH+Ma88tIErtsbFMUgG81sJvw/W6tCBS34s+4cv4oU25/qFJ3L6dmJ/mhjGVnJna
	 F2mKpqDXP7Orw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF99C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762483362.1630.6683702233562145458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce57989639f3801dfbc0d0bb486f4d9e0d8777e9b454385fa26354a62c70c28e
Date: Mon, 05 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767624833
