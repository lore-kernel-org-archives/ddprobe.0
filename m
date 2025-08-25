Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF1C2DAFBE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756118994; cv=none; b=dblNN+Y3qd42pjo4aTHEsZ8bHaSTYLYGHO5wM14WKMLQh2iDoIZ85++ys2pjmE3H13vtZUGiCdx5X3+URVcpmwMyNZCimz6JhchFOjw//XFMijp/iHssjrI8omV0O3eczCYrjXiUklaeM+cILvtsjYyZC/ydEjS1hcNQ3iHD0yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756118994; c=relaxed/simple;
	bh=g1KPLes2hDaXmFdgShxe1fgI/IDc/zeKsZ0rgl1bdp4=;
	h=To:Subject:From:Message-Id:Date; b=GxF8VDZnkkQZbZnA+dhGINeJeJgrXUFAazHxuzbIRDAJU8Jyu1ENu3g9PBpmTs+JphESimptKaARy7T+2cPqW1+WEUoEzWQ0qDsWAz4h3EDx9EjKg3j1+JLmNtNK6rCCdwuBemPBZmFMmeIhS94y8FaEqI3AgilXpO+SJd1/+Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYzkSJq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYzkSJq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB5EC113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756118993;
	bh=g1KPLes2hDaXmFdgShxe1fgI/IDc/zeKsZ0rgl1bdp4=;
	h=To:Subject:From:Date:From;
	b=lYzkSJq/JdvnBhDDx6UqV4IWQMZAQcxxlHzoT5lsyQgYTLLN6wKpmr+yr4NePoUv7
	 yNLuVbQNIJyX8NkR7oXoPJEJWBrLOFy4c+t0Z7gBmQo8RoimzBBQox31Q+4ghcjy4x
	 udDBgxHPWq/EPQ+93nK924+I00ST3GL7CPh7RJorhU3n1M4pcRxWENbGyJhcZqQS4R
	 XbAyTXE4fYRLv7XVDKUa7VJCH7Dp3DliY6zoSZOA8XwroMCOwUOVcfQxIneFQkhVC6
	 F58dqrzJmFDGfYRTVeLGNO51JderGomGucx4bjRDV8y+7WDJPS/elGVzLviynf8Ph+
	 BgcZN9y32KMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEECA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611899357.29027.2253832286836769747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71684f32ad3baec1eaf1a182d91bce633b22d2c763f2de8dd5cb98db9a8248e
Date: Mon, 25 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756118993
