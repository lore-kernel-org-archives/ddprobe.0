Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11741E520
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705691897; cv=none; b=GgnWF8EpDxoYjXN5dcde8R21eb3zCKaNYjnHHdvDYuRvpiW5iyIO9lWQ+iuA1C1x3yIs+nPxtDD7XJAjyq3WhbQmCjDBZOd4fzT8FO5vWk/Vi5MF+ztD/dBj+D2Va2dVvRZKfx0B6PA0BnIWOLkrhgRCTdjm4XLAZ/Ab1iz+WCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705691897; c=relaxed/simple;
	bh=hjtO6XVSGg0dWm8OIEarxubATS60fOTLWVnVrdtjnqo=;
	h=To:Subject:From:Message-Id:Date; b=BBH2AXPfRV68dSULAWL2W4PL0tg9v7x9NUVNcs5REfUZtNd68PKLUwePcKWh+Idtv6aE3XRDLJVh82+vkPcENXTU6ZyAhx/ZF5B2neXmcCWmwv2G95g9zsbLXdyK+fFA91SzClA1zsNp3iroz6aE/AS3G8RhWyAL6KYOy6qDDgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJqwOwRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJqwOwRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D37C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705691896;
	bh=hjtO6XVSGg0dWm8OIEarxubATS60fOTLWVnVrdtjnqo=;
	h=To:Subject:From:Date:From;
	b=dJqwOwRXXxdxY2s8S+wuyWcjdbg5+AqoYIwG5KQY/TkREVr8mKRNmqr+O8ahoDRJC
	 3Hod0yVkLbJBGoBU0BnpcKM5xaVuFp4ZiuxQIsxCg3vUniI+MFUD5sjOQe4rL4HfGS
	 FcS3jRLGYSSuBXSQrXfaZ1IBHft/cCe9jvM02GtM77s29ycMWwaC0+q3dvNsJGJRvA
	 awLsnyhgCxbCNf1/0majqentqyHuxwkJAD/UDx1odUKIhcWaHeR1eMxJllhwn8iMrX
	 dVwdGlYiuOac14+zjVQO6j7KAxulzIM3PTQfWT3rLFLesxyoKjRdjZCsOriF7OpLoG
	 tCCn+0Xf5hLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C150C47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170569189637.385.12457335062911569323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490a447e42ab0c478f12de24dbefc66c0f96c0cde32c7e71335601afcfa09ca0
Date: Fri, 19 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705691896
