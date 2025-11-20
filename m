Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0DB29B76F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763650914; cv=none; b=VluGKwrHJ729PBjvDoBh0iJht47HuNPKPVgfGPgh1cJs/C8+ncjnnWHlwitQMID8llOZvHgLKGoWLizwOMba0zB+zTwhxEGDt8dVUQQ1SuYPg7maXYmcbEsoP1jEhm3PABqQc1qjpsURd6mNdvLpQ4zrsekSSQv44OQUH+LRRWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763650914; c=relaxed/simple;
	bh=21388UBvPE+75TLx6X0xxqApEhdOk95I6ALXDVkhymE=;
	h=To:Subject:From:Message-Id:Date; b=lmabvGfdRv1HN8wpcetwyr2Y9oDO4w2oujOA7c11yPJCA3kJgd1bb9sGodVFgG/n6RZkKu8isvLPqBvS/5+Etht83kiH4vLP3aCJM3uCR+QYSkhAMnWM1JeqfHzIcq8A6lPogIAc0twoATDZA8aG9stJOzMwsrA1gd5K0ifzNzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxEHSZzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxEHSZzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2158C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763650913;
	bh=21388UBvPE+75TLx6X0xxqApEhdOk95I6ALXDVkhymE=;
	h=To:Subject:From:Date:From;
	b=BxEHSZzBkEr0wYfaZDqkKJDP8HhQf4EoOo+M/3IFd25YZS3ZUubcqSppnylPF02Is
	 fCNDzj4PqF1S2LINax9Zm0cy9gbh2SlivuT/6e0NRu+4LMbI2um9wq3OWAMdwnuyWO
	 pZwBIWpqrJlORth9c7wDxrFkyCEbK/dBafSBYeZNNvg8k7cltw2YR0cPcVtXF2+clS
	 rrCL50wjlAKj0igxBwWw0/dDy8cONcuFUS7FUM9pAFNOya9NjteyQB0Qa9sDTpwpIO
	 V7c4GtQYT4m+m0ilZOfcBxc+G8jd0Y3GT9reZBaX/u76/c8qPE3zGsFF7Cv0DDYU3Q
	 ZgOYOjCZevXoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADAECF8863
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365091361.25156.5491668948727886206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a006763570e9aa7183cde0e37e5b73ca0b432a9b0830a448776530204b3571
Date: Thu, 20 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763650913
