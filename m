Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EC0496D42
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789408834; cv=none; b=PBDzqOc8izOR7sFUBifZaKGQ36zkduu/CI6Pj9zfXPBe9Hbo9tdNMmmuQGhngY5ypFph9kLvd4+g/RpEAb614LlroEV88XHCW4dApXsxnB9KnRQFWeNkD8Ka79UAZ3zFJBIldLcyRCZOWvgPhVQNx2v173m/Z6b64IkH1nOsc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789408834; c=relaxed/simple;
	bh=j6fwm1ChKToLfSJT8gC4OAPF3/drbcSSFeMwoo2ax7o=;
	h=To:Subject:From:Message-Id:Date; b=Q90y05issAfhnPg3qgvt+j9ScBkulchda3WuEW6Up83Orp2qdMx6TeyAe3xSBORRcPIkAh7HUiOci/crfUto6bOGhDyFbC7QuPuHJfTh0J8wAr9xbCVazpML+7BziVhkHt6vmNK0GMTZ4eo1TplL1P4rh8mCMFOjmjxQHVFbN6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckuQL8/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckuQL8/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4FBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789408833;
	bh=j6fwm1ChKToLfSJT8gC4OAPF3/drbcSSFeMwoo2ax7o=;
	h=To:Subject:From:Date:From;
	b=ckuQL8/6vdFj2BdsB3dfhqNXlBe73Ry2zPCPjtXMHY0MFcof8hzl5hMpRtfUjVGuP
	 BIyIo5pf6p8Y7bkZ3g+zex4Jv2JTJAyZwgAh8QsQKcM9JdL2AHgPPzAhdzKwXaDqZy
	 dEB7DgwmYpPTSOX79OdYe9a9hInGgHa/4ACItBfv8lp04PZOT05znvnfUYhc3WDTHH
	 i2ZHZqfhu+O5NyYLw2bjfMemayzS/RTmQTMoeBqHLqLJaCACb/6QSUZWHMKJkMTQU1
	 okCRyaUSHG/xEeViRVgSvOJA3hXcBxLUx53Sv149SMsPm+91ggseYIYfZrWgK84z8s
	 McfgM/KZZRMJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CAC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940883369.28471.12908721819748561218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24693e14886370e54f773d8efa720afbc9079c6a2bd68d8fb1a347433cb3f9b
Date: Mon, 14 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789408833
