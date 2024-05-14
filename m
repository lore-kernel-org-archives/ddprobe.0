Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E713DDC0
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715679143; cv=none; b=GtVu9xw/zGx6b+RaXGrh4Dtw0xF+I/hRMlDypRHEgy2yEzEJarhmGCEqv3IkP/Bq+4M2uAf3o+RdrMuC0rumFpYLtUvQGIfwWg36FDoTFbaQuhBaBhrOPO+vmKYCmyxouuOFg9+66kHBuBu1UWYTJ9b4z+uqe1vdcMDnImOZJgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715679143; c=relaxed/simple;
	bh=jupfGMLyWjLNnLe7ndQUwHNixeCVRLQFdh7PGaG8178=;
	h=To:Subject:From:Message-Id:Date; b=XDTavZQcg4AaO8Q9LsslpKTUtTCne7OdSOXTbM7lv6m45AQMnm0tRyi0QIPa0w9HWWWycx8LEcSoLVB6CzFqgKD5S4yeNftbVWBDHvx1Ztjf4aGWV15xMa3t2IZTvNuw3XdjGrkodm2xrD1QHawNgjQcQ7MRj8s7XprCu6XFK7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtXh33up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtXh33up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4EFC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715679143;
	bh=jupfGMLyWjLNnLe7ndQUwHNixeCVRLQFdh7PGaG8178=;
	h=To:Subject:From:Date:From;
	b=ZtXh33upfBTW7kWK2x2K/CeV9ScqCSLtfKfKUTt02iyJq1qtA67Xn7zo/GAJSs0P/
	 FtMeqW01NlDOtgKlmjg7gGDy85bBL/M5GnXX8Agop2j0N6Bbi7SNc6jV+1hsUGIl30
	 pNeSv/9l9dSW2xIqP5X/v4je0T2zfMxHEJtQ9itjsSjtvf8UoeVW2HQJsm0oV6qG6B
	 T9XazgfxGhHH4pyCz+VpzObuuc6z081HqGcAfsF87oHpHdYEF/uaVc0WOtD+pM0XcR
	 Nmt9Jz8gDMUxhTsTKuspID6BTLeAMmiZvIpv924g+2pkceNqzCixP5wIWZMW+jgvw6
	 pHzDmK7aU3G/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0648C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567914283.25658.15747848164138281134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49676762d721a1855407b6576c855cbd041be408582603067953759e37d181cb
Date: Tue, 14 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715679142
