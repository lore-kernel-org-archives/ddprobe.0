Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563518C003
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725969354; cv=none; b=ZYMGILngoaWeQyaHWjtMmDPi+an1su5gPY3A0cKQccARsXkF0DWhj50T52fPf1YE4JHHThu0ivFwwUrsuwhySAAihFPhEnxIfazPgwZpUnZkbXwfsX7+zKXvFnrKOjA4R7g+B/lWIe32EZrXjPvIK1jNRnFeDSfGBOAk+WE7ZPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725969354; c=relaxed/simple;
	bh=fFHKEHOSVjP2VHM7y2wyOua5u+N+0/CqgpRglhPSc0E=;
	h=To:Subject:From:Message-Id:Date; b=aWhHFYSZCyU0LmUPnx3RZnjV11wgTROa6k1JrFen95GZ/Hi1xoKmNN3jN//EhWUupczXagGi/UjpyuV2N4a5TO6U7RcJuQWLpxKHgHdgLEHjJZmrcTtKOYNxucocR9a06xSELs42tWVS3siZcPehE5FPV/W+X2zI9+yVj3KbPh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeDVeKRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeDVeKRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF4C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725969353;
	bh=fFHKEHOSVjP2VHM7y2wyOua5u+N+0/CqgpRglhPSc0E=;
	h=To:Subject:From:Date:From;
	b=oeDVeKRdoFvNPaXC+9b9S77SU5UjwQlL15e2C3tgYmmaqOJJlTGmiKhPHHm9SLDNy
	 P+KNKHK7UOCLvc8+YoFwlRd2din/+rrAe+hDP66O6ZXfNU2oYDeyXHpWp7iiVYHSeG
	 xqyoAztoR2RitDvw9w088fMdImxJAqYn+eguLwlJ/nb1R9q3OnhVKAsz/yZjd/ClWY
	 8vhe8Csof0V7SH65Rokm5Z8A/64cPwfcDM+GPoKwF4HslQRwXQtYmUX2xCp0nPi/bZ
	 GVGK5ajcpSDNUqNDBUtZHbaG96QPufRJrdwe3g9nyIrbKlN9FNkC0p1vRa9vC3/p4O
	 WxIflLhHg/hMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E954EB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596935361.10581.1961163954801208186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f21ec3b9b3d02af032ce7b3e5a88b0eebc8519146dee528c6b9573fb6e7d53e
Date: Tue, 10 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725969353
