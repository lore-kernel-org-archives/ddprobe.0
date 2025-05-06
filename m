Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3207C1C32
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746565194; cv=none; b=uNnDzkCLVifhtTEkEHNaJ6GF+kTCeo3LKYeQvaj/Y6ot/P9aYZe+Beg26Hh015YwUbUBZEMy47yH4QMRVFI5q/OdsYj26tDlDUCWjR3w21K4DSc/ng79W+1iNvXjt2kUO0L4yimhqOxyOLvO8OaEZ9acf5L+pTX6G7Sm73kszaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746565194; c=relaxed/simple;
	bh=Cm/iXunYbXO0B9/QMgOSZSurO/oqjGyUW4az3czKqh8=;
	h=To:Subject:From:Message-Id:Date; b=guDn5Uo/oGB7SmaqXlwEIODqiEkPA1ZWeN5+9hj70XOygMx6B7Rm0tP8J67X02OeAlybsi80VlZFARm0IULIcPcwS7x3DBURhCACEnapiYlPXbcOyV2H00WbamaueWu60N8XguXbZbvOEkA8luoGvjZHpo7clicYj4kMUQs8iHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sloyr3mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sloyr3mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746565193;
	bh=Cm/iXunYbXO0B9/QMgOSZSurO/oqjGyUW4az3czKqh8=;
	h=To:Subject:From:Date:From;
	b=Sloyr3mOpnveN8jPM2zy6w94l4n88Qx5t81NBF+ExYEhHSJnUusfjw09StynqN8HY
	 WTkPXhwQTqlqGef/XwkrOxLvGJC+Lc9WE3oidPg3mKDYrKUkTlLIAMpA1wkZm2d7M6
	 3pcGmGB4W9LGxbhl55BLgO9cfok08Upk11N+waZKSxJY7m9+CCKIjA+SuY96M8yWCg
	 3TRNGW2rYrsi94ydyY6LF4eQZUP3xSqnljYzNqTYUPk8veCzKsZcJM32a6YHOE3vJs
	 wg6/nOBeZOP0P4UZP8rHY5Kbs6/VT7BXPuYmNXdfRAZxaPds8F8vVAiUd1nQbu+eFm
	 qp1crwZrOPlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91995C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656519357.5992.2291254154968155955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2d3703c6a1b32b680fda989b36db200fd2315ad87accca6dbb7bb99fd5f75b
Date: Tue, 06 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746565193
