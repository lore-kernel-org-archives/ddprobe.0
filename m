Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4E139D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754025594; cv=none; b=KeTfyoisyZwemE3dvb8zmYZDLok9nC7oTs6BHexV26V2ly2IhULxgUgD4DNvsdHfEvYSbC4m6pu8shXr4w/kSLMJu/6GycFxuKjzghMCgdjwyVVgulQJceTYnX9O4N62o0sq8Cb3QxbhiP/aQ+SkmnRrydtKWcHkXfwOGQtURUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754025594; c=relaxed/simple;
	bh=fObH26+8OHbJ+1xlFSQ7tDqZQEuII9Y6Me0Daz8mgpo=;
	h=To:Subject:From:Message-Id:Date; b=lTcintUXnAOfHwvXRYOJ+m3oqXnzP9LaJSiaTn+Ke8w8lBFnMRq0p/6xMIQ0Hjd+WorZY2oOd6I3n1zW7qkIyoT7F0tJMISc4GkNH8EPgAAT1K4e0iix/tpraxzEpzlpe7op+Ut22Q5pllilKwDUppZIXeL8OSYDKJXvK+G9a2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9NY9+yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9NY9+yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36DDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754025593;
	bh=fObH26+8OHbJ+1xlFSQ7tDqZQEuII9Y6Me0Daz8mgpo=;
	h=To:Subject:From:Date:From;
	b=p9NY9+yqQairEuSPB8sF1iBiNTCoZvdrbBn6HaupO+V8ONd7Cy6lO0C9BXfZMFHCD
	 bNk4alRsW2bneiERamtMzIqKM78ejHslJ4pp/3WjrVpvYHIu/wzuEBgLd684O2b/V8
	 WRaM36t3qu1CBhga9CvVC6mUsg7zIjcJG7x81nMGDFGeRnULRjdK2QUKnScypy0/n6
	 RhjVXm0f5RymB9+eZPfVU0Rc5Tmn9xYDDEQwerhDeekWii6w8yw/R4aNRfxlOsCuGe
	 nv/2tbxEneRFFSmBsvGwuynkAH0K9y7JAL14/Z5GR0hEgsmeZcuY0Dus46gFOKcI+I
	 fSwMb0YTLS6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D5C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402559358.12200.4376320108431086779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01541296c7c5051cec3837c86e0896d7a87c0cf42a321316f0e65e95784aeb17
Date: Fri, 01 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754025593
