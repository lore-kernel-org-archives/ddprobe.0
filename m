Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4280E28727D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779213634; cv=none; b=nyajrkF1SxHgWqsPt+s05tgM70CxS6q8oEKYTbHI0WrE2bbt7DKwOd4jtcbhv58L9vnmiFsOdlNlAQicI/ce5vcnZCktC6eheeWTJHmHCBIXukVGEhj0W5yjZH/I4ugIAZRjoytskjJiCFVMrlhpBOnols6RdXKfehSmYGVQ1Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779213634; c=relaxed/simple;
	bh=N204O5fF4S8gVQjv/LIgjQoLm3d8eP8EfzLxmeaDPnw=;
	h=To:Subject:From:Message-Id:Date; b=aoC2VCY2rc6QEG+UDJ/Q8vVgQMrdjiAhKcuDlHRfZpGsehFK6iEtxbE37Y1o2iX3fq8NxwO0qxhCp69nUbPd2o34RaX9FWI42jMMK3M/Y64K5sZnxPmIme+FUBJoyV/iyuTx970IbMw9eiDTPaQTRVxbDg0PZT/UFU8BzIuutl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYzIIYUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYzIIYUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B58C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779213633;
	bh=N204O5fF4S8gVQjv/LIgjQoLm3d8eP8EfzLxmeaDPnw=;
	h=To:Subject:From:Date:From;
	b=KYzIIYULo8dFWxMIteRGfP2aw/qJFQLfffixnUhIlgMHNExaXzlH047NnJBgeur/n
	 PkYL2VxCvE75CCOEgsQxoKxXwb9CGB7RuwHeV0Evhv7/BF7Y3/M35Tv++k4iV7eCtr
	 xVkmwYCibz0NKN+KPwX4eeMtcjgGFyBkmNZgQFe3giYFKr6001xN5ta/qjPKtLZiAS
	 g6zUjGn5g0KdlEDdjqiGgRXFZw6Xylo60uUBoCxukc0d4q4CssEvIz5TDwl6GZDjvV
	 +peRH6drpO7vv+ls/l6gbXy8aiQHged/jK5gfg8Bbbx0qaKC6u9qLPLR0XeR6zzZ+8
	 mQCHgHBiV8QtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CB2CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921363374.2401.11589989167525392742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e59e24b6560b35b895a6a55e8a7d5299b75a2a41814a062d719f19d1a48111
Date: Tue, 19 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779213633
