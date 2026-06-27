Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7D62EEE9B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782541714; cv=none; b=i0qf+pQm7Mkd6Xn4p9Tg8cPn5NzcZeZm2W6mlJY0dlNU8CMAho9jWsJL7MuSiKgetKcVtoRSgIuqG9nTnlQdKdKd+qHNQ5FCSd+EC650Czz81Jh7MWTpzlgyH2WWhIUgn5KbgPkRkEtzVaitOWlU+lK1GB2w8J/XIRTBIIAWHvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782541714; c=relaxed/simple;
	bh=FYW/VcMtnh9Uem8CSJ9ioifLLOJlZF5ah6acqlRCiao=;
	h=To:Subject:From:Message-Id:Date; b=PS9s5YsuW6eW6GnnpivtBkmUOaaQV/LFBtAxZB3qL5qBGgFn4zZg8N74F438JpNjFuhfND/OwktfaPyKmEXE13ABFKSwqPh0K4vNdWXnY4qx9U5yGZQwmaaWNDt3d5kcdMnsdkk7bvIyHsKf0EptXfg0TmEId/CVAMpxiqKo/7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUDh5qiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUDh5qiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19FDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782541713;
	bh=FYW/VcMtnh9Uem8CSJ9ioifLLOJlZF5ah6acqlRCiao=;
	h=To:Subject:From:Date:From;
	b=HUDh5qiAlyZudSkWjHiWeyWzRGvW8EARBMH2hJpacXqTqOVqFjhqkDVLZdG0bjsl1
	 FkbCs+CrEhMuS6l/tHMlRoTB/7W/S186zBMjI5XmqNxoH8bs4tsxXTmyWmRu5pNibv
	 RpBGOoB2qFGAJ0aiKdI6yLtWN+lw+7FWDdtyhzLt5MgrOzJnN0OfoIyvxpsSbX/CPV
	 zyGMNgAQ7AT3OfOXFzzcGq0AUaqZcJZK4i18bPdVDeFHXZ0J0ZpWzdgvJQ3ySe2xKv
	 e9rY+TPxfOEpB0d2B45muFU1XlsN+AtwnLIYMlKzb8S15oWxmF54jt53N7opKLKXvq
	 vgwFKxdKSUQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C0C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254171369.22510.15505952776108928789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea291e8b0597d0a1c75eadd998ee6fcbf4499608b846d5d64d7c15860b4d9e7
Date: Sat, 27 Jun 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782541713
