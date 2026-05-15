Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB8614B977
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778804434; cv=none; b=kemWulmkHVq3/vYJzuHvW4tyWHUCuZMZAuHXtMIW4HJSMnXDg78qWS19dnzuxR7un2Vh7m79kz539I8rmrFALEUziCidBIxkMCvOCu5hh699SQf/BA9/0MQBvsKPPCm98D3eHUKI8qF0+NWdWGG7PD5l15ZWpCSbgfUPWMUDS94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778804434; c=relaxed/simple;
	bh=4TW3jsuAT6MRInZ9Ih+SfTzskp9TPn841wbnqL3lN0E=;
	h=To:Subject:From:Message-Id:Date; b=hm6phE81sHMvuufVyTfC1lwxQrRkCbeQi+blpDYGORGm9tfVsRGgaXPLETx5STW9vi+uou0ggBaZcwrc23j1qp8maCaeXitx6ARZmf96ryDnu+rkmX8w9v0pJcMnsuKeEgg55cmQ/xhLN+c6JAsMqGo/yqVK6SQtlOaOPYn7Kcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg9h8Ejb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg9h8Ejb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADE6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778804433;
	bh=4TW3jsuAT6MRInZ9Ih+SfTzskp9TPn841wbnqL3lN0E=;
	h=To:Subject:From:Date:From;
	b=Fg9h8EjbqCZ+vtqu+XEziYqZNMZCicOipO4nE16FLzM/jW6fliBJpCWS4PG7zq9uc
	 UmbmDrI2DeCz+g+vT4OTAOYdQd15bVZI/1tqrG/4ugUi0JaQig4LJu3/b682pTaPwT
	 RR4g3veijl1px+A9bwfkiN8wmIyMRrk5EomgKwf/4JUFWfw1Z1HrS3ndl17T+NDf0P
	 Nz2XX6gwNQoqO+OPwdoGyJti0H5l4lLybigUPLit4VEAyhukY01ZJHUPn47tZGRgjG
	 OI2eUPKAA/gQzBp+N6Bl9niZeCBojgiF12bN5LDRflvPI/Hzqk2GGYjeZdTaQGdXZw
	 wEepFvo8iQGvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B1CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880443369.13508.2060132854123750839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419d0dc01b35cd91f626715448f4e66ffc9286cd90dbb2559838d078cdccf4f6
Date: Fri, 15 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778804433
