Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CF25782D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777690054; cv=none; b=cL17YbADT+oEKIv3jLfWlBar5bf2HqmPhg6q0oLifr64gj/gCZ9gVLL4qUmbcFyeowFGhe5S95DC8MWaJEBozbNYViZpK6MmBPwH/IEtD4LTjxA4DUEtzpQmEnaKWjDz6aYfJ3l0Mxnev3lGAwJzL1YuE/Nt1llZEjS1o+GPwWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777690054; c=relaxed/simple;
	bh=+hEWIiS6VjhGvqeNlQgopzaeCqvx4OCezfL/+aCHiAU=;
	h=To:Subject:From:Message-Id:Date; b=SMc+AafYPJTQKJFcmASauabZzZuVwj44y+402caunEKRvDmGs/cl3+q1A+ih8Qkt/x4hVbJWkQqTFxF59VYwfKQuXAWZ2AN3ZAh6cYVHC7EyTeCyVAQBQtDndf9/ZUDXPRcaxCtlkwQzgBGbziAII8NNeRQJroocPxLLeNhQaDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7WJWOfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7WJWOfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DEBC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777690053;
	bh=+hEWIiS6VjhGvqeNlQgopzaeCqvx4OCezfL/+aCHiAU=;
	h=To:Subject:From:Date:From;
	b=b7WJWOfVKFS6SIxsbc6hBNYhN7yg6WSxEjaK5O8a68YcrnAlRmrKshuxhh172YY1p
	 RGhRkcM3jut+mW1B2eyVf9/SXGBiRY2fxjWiPop/brESBoglPn0EmcQLHIKTQFmo6b
	 hbIpG1+mFxv6rXEVhEEnfxcuvzogVe3lLdwJLXA0eahuRoWCuq52EnQ3HEb72Lw9ti
	 z33LF2zJXi7jSKazalR7ISS0odChgTCWxHL4Hftm5Q3V9XeeTLBTDODx84YS2ZD4N0
	 qq3qbJmA1rz62oQEUlZoxftIkofhLQrxRh01rAJ5C6KXqnyVi7nCPWPn18jpn6ocMz
	 vCvIFQLcJJ7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE8CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769005368.29175.12681110615047245631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182b5cf9849439a39152a5f956c0818855afb7eb836a46e53d660d2d4e2a05a5
Date: Sat, 02 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777690053
