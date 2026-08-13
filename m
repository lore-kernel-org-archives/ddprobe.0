Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050943921DB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786625434; cv=none; b=iZzEYGtBgnYiA2Nrs8cdeD9xItwRRxcZsXYn8OKaPwrVAoSUkbgfLWhZ79MZY8dvGiXB5iParrtMcoemJZ3qSsjZBjOrRW9v56bWVOeKEn/4YQLKqqLwPEKNxTrH6fTAWj7b7I7DobDGJ/Nenv1AgE0RWrYK1vMvyGTp2Wd6nKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786625434; c=relaxed/simple;
	bh=uSRIUWa6TvsVbPTz5p5Y682XjFwE1tDYC3SxXjek8Eo=;
	h=To:Subject:From:Message-Id:Date; b=AkGDMQaRJbB4ddys7dsqjPJFVd9vKnvQQmKcZek38hk5CeGJtEUoqiBlnEOI7onhzJZE72R8OAa2qVf9yW0ou7bTpiI3kOihgbmRbLmfyKO8oCG9ez/47H5W/HkmoHeUc21C6K1yEAjb5Q467AZa6dD8gb+Q6N7bNTJ9o1tdZTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nsd+hxBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nsd+hxBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7D3C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786625433;
	bh=uSRIUWa6TvsVbPTz5p5Y682XjFwE1tDYC3SxXjek8Eo=;
	h=To:Subject:From:Date:From;
	b=Nsd+hxBsdm97nDNzr3JqbLoqflN/8OjlQ+YotP/5cHV8N+NyJNOaDuWBouAe9W1/x
	 sUwl470qyVDR3pN+lIuMES/CV4sTGxWw+znvV1zCLkN8FtSuUj0ABIKXLQiucWi17w
	 Rb6ayMRRALhx6sQkUUB9dezcfhwZ6LaZBvlJhHCLIjFHGI6wb8TpEBfZA53drXLSQL
	 0JLzKU8YyWs+S4/tTpVRCEeCsdCjRTdpBfDyMeRDiLNYTnPkUrNGzRYrve2iRiL/Qg
	 RGsI3CFdQU8tTyK/KAie5WQ5bUHZcnaDFww1fS+D92aBcV5jY4WdD2WCyqb/XlGK4J
	 Fet/WylV6igbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8777C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662543368.28305.1041160234690742591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88659e24acbb5041b6b0af11698399c00f9278a55ca22d00c0fa894fbe27e47e
Date: Thu, 13 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786625433
