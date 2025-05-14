Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB6119C54E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747244996; cv=none; b=nm2tE9iJpxI+n4Rvy1hFZHBG6lMaz3ehmi3aPHf9N6gDHA/+vMd/cr86xTTRsPuIUGg6mgaGLcgGP73+ghGargnulefmF+uN7nJKUFzjaA0oZuwpuychBKXH8gFT0NAFvIHJTsNCTy1a3Uc1EmC+IwTbYRkkCAW8OnPOqGStVsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747244996; c=relaxed/simple;
	bh=PyGkJbOk2OrKdA6jU4jgZPCK6LVECmZLfYUibAlMqKk=;
	h=To:Subject:From:Message-Id:Date; b=MS/RF6M2EDUZcBJUIVVNvE1ToVD+dhf0V6BM3jBUhJ0NLsw5vtmvShejkNAe3GjX3T6ShuNCyGXASJubu8HHr5TnMFnBBE+AASG9eLzPZO6LFBZhFZdR6l/IVT2rtVsJwuwwnWhlbzJhn1tl8NB0sYYQTUMBRx2azoZgAlsgi9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WshMjWRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WshMjWRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1DDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747244994;
	bh=PyGkJbOk2OrKdA6jU4jgZPCK6LVECmZLfYUibAlMqKk=;
	h=To:Subject:From:Date:From;
	b=WshMjWRWxKhWizM76dwZPXfOUaKJs6JzzhI8YI3AyajPUGmE3XccJbsu032bdyXyp
	 IUx7t/W+TS4hVQg39nyr/X/Np4rNysTeT9n4tXbsLlkDmEU7DSdvDuStHIayzeFG2m
	 KSeT4d10NsxE5fAby5/FXHE9DXYExJnd2FjhEx2vMcBqw0k6OKqWG6AuUimt21aUlX
	 4fSAzy60uAyoMB4/4LgUd4uvpAvox3VJiJLDjOyhUU7HoDRjupuWIEztQb5aP0iFOP
	 hrRGg0kxVnCCU8ubHgToUWc4ST8xEimMgGD0oDVrNopXzw+3WUiz87nq05OvUs4gwJ
	 lm6I1HYZu1eww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD13C3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724499358.6933.13425484813845715017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620333d583885506c1027387eff466d9cd5960514fa69d0663288c945429615
Date: Wed, 14 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747244993
