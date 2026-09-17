Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9734D487F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789663834; cv=none; b=LUFgTF4i6k/zNgUv2BMrLbm7JjsAjBGM0u7OGClKl5y6+KycSy9KTYPXWmmpzOO4iYC80DzKLU/LLBao3+NVB9sQfHMbQGWoVub93iBZeOSdxDUnEPVKS9fraWbFMHePM2C1pfNYVzj2DWscYdXBQFK9W+9MiYgSecqa2xDGLRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789663834; c=relaxed/simple;
	bh=L2qwU9OS4LuXd/9PqB42+fYNJGx3lFx8UFp7D+4jLoA=;
	h=To:Subject:From:Message-Id:Date; b=I/HLyg11BafaWhUOl+uQ3gPWpt8yPT8IbLkkIdAhaZRHl9BHwqtMA5cpStFPcbnYWAjZ8wZOU7Egx4xR8NIn6lI3z1QJhnd0CThuGyVHQVYc5ym5PuoY4YmLn2Trx4YrCammHA/IOB97PY5yszRuQHTEe8BWI1Le0NQ3TIavrcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCejFhyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCejFhyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789663833;
	bh=L2qwU9OS4LuXd/9PqB42+fYNJGx3lFx8UFp7D+4jLoA=;
	h=To:Subject:From:Date:From;
	b=WCejFhyNaoXXJvSz6bLRwPnHN/JBWbgsdme4N/6qZLqCq9jQm0EoX1/f2GR2jzTQj
	 ou1SEMElPTHWc4WbE8Ko6CBBL8Usy1MALt/0yfqh2Kwm65YN2AR9kA1eeuYqe41l4A
	 9jW09EZRW2BfcfAWY8ThofezlvmlYdG5QRn5FLOm9Rb1JbY80yYXPFGgE1zoMd5EAp
	 Jxpt99/ZVHBwuNxVhRG1iq+y+93uq0y7Ag5GI4YZF8j1diN2S/owzgxqqF5Gx0sgW9
	 Yx6UvQce7FBgIr2xxFXUpuGEBdn292DqCnGqpEo73S5/UlcZNL1N2zI5i2zhoQq0lk
	 27geJEti6Rp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1FFC982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966383368.26991.511728176015761803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b00db545aae39cfb75c8ae758e5449104f344d5541df8b577b1ae0a55f57585
Date: Thu, 17 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789663833
