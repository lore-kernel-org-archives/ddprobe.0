Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCCB360757
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770993294; cv=none; b=Tk9GGjE2pBc9R/OjQGV1lAZZofD4vWTbV06zJCazr4J8mTX1e5tXhtQ8PQRY1brkFur11elGMTK+zfmDGEpKz0FQdrhlE69Wm/xpoR9xqpkipSHH3+urklkf0PMRATsaRS/xpPKUQMlPg593XBiU4e8f7vU1i8fUTYmv3uxuhEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770993294; c=relaxed/simple;
	bh=Qk1F5hY/VH4XxrtcQLbnPWcNYlmoGUyv48kdkfp7ykc=;
	h=To:Subject:From:Message-Id:Date; b=mifZYDLnGPMZnuvP+UUQiRzWDLTaYK4rFiyZMZSDDWK//m7Pw9imNKTyS334+pSAMcDCgcEItgYVsQfRSj3lv3CCF1pd5XDn+QKlMs9lWEpOKlu/9u3ZmBS+h28K3IqgTW8zxuGIUjw1tBzZJDr7WY6CA9zAGjN/YKfTALoFvkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wdylv1Qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wdylv1Qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B72C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770993293;
	bh=Qk1F5hY/VH4XxrtcQLbnPWcNYlmoGUyv48kdkfp7ykc=;
	h=To:Subject:From:Date:From;
	b=Wdylv1QqaDoTKqoYmMuxGs4TSdUxXfFBm/Tb1+z1JkyQfY8mAAlOtyTc3zz9cxOZV
	 Wd1ievbn2ornPe8/KQvIPwB5y8yZIsOsauiP/LKZsu/mpldLzVvEvzWzeRs/VBO+5q
	 wXnYPtdOeoLipjknvqye4TRkfNZPT5ELb/4FPD0AduLwzJbyLBeUeHXIhtOkyqgxdw
	 6PKq5/dxWK1W5QbYoQo9mw9rHXtolenRjvEkwtdC1AeVVumKSJ53xjmHcs0tJSuEsV
	 kscXqi+084RRen8i/B5+1yA5bYnNLaN6rWpZ4f/ZWg6Z15duJiVUA4whJyHnTYeaST
	 Ej9dwwo3fMXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988B8EDF16E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099329361.26609.15585661392009708663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b628400386de3c36d3604ac0fa69f75d33de320c8a053fa6d8cd1194b59131d
Date: Fri, 13 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770993293
