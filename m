Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF732750F9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745965794; cv=none; b=EdPLdo/jxa98VB4XVOQag8GkHR3rQyd9OBJaiFnF/C37iKGhQwk4gTxacaUD6KFoE3iMYWl9OffXh6uMgtvzzybkSVlfL6YU6N+kOtxnRNJPuOnT7uxUWdRiYolbM9HNGQ1ymT4XCFsc10Aty0gkUgFlLHWQcx5ISgy3zJ4HBpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745965794; c=relaxed/simple;
	bh=exOs39d3UghQuGg8zrLoTmFdpK6DSx8iJ4edOXYleWo=;
	h=To:Subject:From:Message-Id:Date; b=rkaAbYsVcQjN1eRoZlmwNtA2K6ik3CJ/Rl+Xl3un47FzyArFQdX14YQ1H1Gvx0ezte51/DUxRVYnk0iCQ0gF5CfUr8KUiK66tcAaRG1N7cA0hTZJcHt6f5fFy05pl4O7MER50DheN8mBdxB8+nG9xg2r9fcKgF21jzF+gi9FfZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8GvZQA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8GvZQA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8524C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745965793;
	bh=exOs39d3UghQuGg8zrLoTmFdpK6DSx8iJ4edOXYleWo=;
	h=To:Subject:From:Date:From;
	b=U8GvZQA6tea8gVx1WnXlcqnWoqj0rSCoUWN0kdJcT695EAIgyGXbljafIwTgSDUaJ
	 UPEJSyOPVFEYClOip8z1gPFXbi1CveF4n0OeZUiBruGcvGlKvtyOncTZyP7bur48EC
	 yulj9OHls+lL26/dL/K7h1AVq8YYXXRCNVO4rmzqZuubGgJjsSfDZJvVitFSeMY0vp
	 YgJeSQipvz4EVKjSX2jFvZSH3qMwRd31bTDelMlPcryqBxUKlVplgHbykPiXO5mUpb
	 nbpsB8eoV8XfWg288ncUKPRQyJ3VOW07wcQzM96zSCKPtziPgzw3LSbYNLw4fZVJ6k
	 qnIVQrYv625FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3881C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596579364.12489.7888578435354534594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555c7ba12def1eccb37909a9921205b46322954fd9e1284afad6696dc16046ab
Date: Tue, 29 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745965793
