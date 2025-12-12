Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDD81A2C25
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765501374; cv=none; b=XPQOkZSDP+jQdNPg85ofEcS7pbxDDjBt7iW2tLGciKhatKRKz6mJgGZjfX5EV8pq4jP8gMzvut85VOBQnFIOXb6yyEyp8/9kMnVEw+leff4uYv/FPygCztGZnQ824w9gnyAYcEJJT2DeOyhgBgvTGHlXhhuziieyHeM6TyYGemk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765501374; c=relaxed/simple;
	bh=ChGDNsygmL8hXiB4T0xR/WqwfvFlClfiYa9AVDbHbhs=;
	h=To:Subject:From:Message-Id:Date; b=HoQfwAtIUXKVhRSV/8chhRBVJP48JXSfnicriN8Dh/0cD+kyio4p/X6v+8Xq7Esh9lUuvCXAZwNB47h3kqJ6clPJW6D5MOA0XVJRgMn+T19/E+pYViw6pGLVrWDVZePyH9qId6gbYg+wECkKGDTAUrO3N1NdEfzYmjULxBS8uH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJZcLUw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJZcLUw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765501373;
	bh=ChGDNsygmL8hXiB4T0xR/WqwfvFlClfiYa9AVDbHbhs=;
	h=To:Subject:From:Date:From;
	b=hJZcLUw6KbdNwzLONOlIrVHeI/GgrNJHN/TxiBtWB+DRiVdh4yiXKrp9XqNxwbbPl
	 SjdoM0ShGV91TZIObD/Bli+gN+XLrNHQ64jaKY4EUsoYTc/v3++fly12hzvEah6HoN
	 71hQfgT1vGhVdso0M/KS0y2gSFBV4n/LBGWNGRGC25hEtmiqnBJeipKLHE5oeUm6bd
	 oqM29pnL2m52jOhD1xnD3EyMdHt5pnXs+knKHwY/zjlKRrTiNqkW1Kd7HYLpBYr9+G
	 CABa5fBoG3cZL8B2HifU4l/MMszZqaUZy/AhKvOtmpgo+bnEVJIiAupElD0+juuxYm
	 4MCCK0JrR7m8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E5D4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550137360.21528.10522378053877729794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7587048b0d72f902405c682c7a7beab26f2560b682fdc4993679a6759cf7b40
Date: Fri, 12 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765501373
