Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B17D2D5C68
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778559634; cv=none; b=QIeFT6nQzpZwp6k5uJoibFRlgy4izeQhO94TDvoaYcjs12CQhIXHwquzik7s4isbSeYS/zp5knYQ/xVhYhC4XwNNG2wKYzT1dZO703sJBAxbg81ha5PCy7cI5j55O1ijMsY13N5XJH9InV9sTn7Z1CmfZE+/qCUrEoh5f+neWD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778559634; c=relaxed/simple;
	bh=Kn4FeP9QcVTSB4p7Z8pUPoQsDt0G45pd3xcvH4j0ysU=;
	h=To:Subject:From:Message-Id:Date; b=aLz56XhK+XzTETaiZAi5AHuTC9e1HJ5KNVwwQyJI2cbJt2eUmewSdsNtXVkMEjGSg6EtzPvF9p0O4H/s9qCVz96CtAICLKqxInO6r0Lh/XEStxlo/ZESg4JC4DFOnabn4gkl5itqUYYG5yPLRKFjHD4Dh7DFGbbb8VzK0dAKtu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuL+mrNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuL+mrNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5CFC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778559633;
	bh=Kn4FeP9QcVTSB4p7Z8pUPoQsDt0G45pd3xcvH4j0ysU=;
	h=To:Subject:From:Date:From;
	b=LuL+mrNJBIPO5fgPm4eX4MpqO1+bjnptq07QUPI1LbKIMQMcSotlggHp7XSWxhwN+
	 IJMO+ui5rzZjvCXeKa5NyyqG4xpwUFlS9H4W8PGqHKmk8HrteR8bh1rQH7NsmYbKwH
	 g9ebj+J0yWNigv/la7RBsO7BDrS7M1csFTZSPY/bYDrKj84Px+rVkLyCAc8udHI/3k
	 T1PKQtfSQ0gN2MaHboGLus0Msg6lrw/CfRrwd9DqegumHAduzO+T2+8QLcWjcul0YE
	 Meo8um7s5R9EGLcykb5PUk1T7ObbCf5LT6Ne72PsrRF4iIoxUm2Cjjpe7tQnYsB9IW
	 U2JOLYoZfJaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB76CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855963369.9545.9287491313533819245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a668e1037128e84444ae2d17d912cc5c3b0dcf669e5d6b49920c151cf003c9
Date: Tue, 12 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778559633
