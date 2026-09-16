Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FF245000
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789518034; cv=none; b=uqt62MXRjoGLftxOQeWswDEB3mL9ZdPk6wR0ACDL6Kf+1GCgSTaonevM2V0iSxEyVOq1MVtg2nV5WE0qgpmbLGfZShjQMT5R+zZMhwdqnhCeTd3/2KJbzrfBV3eKKPfbI0fVaimfBQSTe0DzzEuqdF7SZkxngPItBggQcPrtcqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789518034; c=relaxed/simple;
	bh=m8TDMTp4TCmzRVt+oAcdNGLD3ZCfXL0N9yZnItG93fE=;
	h=To:Subject:From:Message-Id:Date; b=ElfcuGUcUeza75VQf0yd5BqbUadm2MB4wyU8X2hJl5e5nHKKYqIrdCk+f/3RVXO78Etw0frllQhnyFE8KzON8zFNt4S5VVthxePlhBQxdIT0fc4oQF2KTekbya+PyOPxG9yH2MdR4xHhn65gvYIsp3ODtYbciPOhaTBJ2tTdyjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRgRuJDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRgRuJDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5E2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789518033;
	bh=m8TDMTp4TCmzRVt+oAcdNGLD3ZCfXL0N9yZnItG93fE=;
	h=To:Subject:From:Date:From;
	b=YRgRuJDOvbilv6OLledp9HYIQc9oCgUQYzWun1wNfLV4DPTkbMCoHXm+5yEU4AKZ9
	 EG+Lg06PDK4fB8bDBSWIfvJ2KrO/Sz8Ng3p9fzbDaosULzySlON4qJ80nUzKj6H6S6
	 QV9DjBKlmjbewHWkGwtKJdIbjFSJltP26R6VVTbcKMVLtAuFil6DBGRy56I9qk7B8J
	 z+CyllXhrhNJYPl+iyYHs5lp0K4KvySkY4ddutt9i9YTHg2X+Cn3ZGn/Q82dwkzukp
	 eJAAmQuPp6OHQShNpGzCZ3ItowqL2nY8n5UtsTzTogbj1HkzHkgVTog+l43xA6rIqY
	 SBnz9Rq1bTWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF461C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951803368.3124.10114894786649054564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f486a4dd0eecb184417641d759f356d8cb0323028e3704430ee1dbf152c288c
Date: Wed, 16 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789518033
