Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A503148DD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785546034; cv=none; b=hAUQlf5sojwlr7RvhRQIkMTRfKLPUgevgvJ/wt44Sa3Yk+8DARq9lzsbYL+fcAN9V9kZAgzboTy2Tt+mpTgQfL94RqEVXKGSQWWKB0Uj2GzN+4PCfrqJJ6NHeP7sgdBBZUSy66dOFRkW2JmYo5Z+LKVOKkQ8SHlX+Uvmx1S0WyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785546034; c=relaxed/simple;
	bh=XMDEr+5IJCPcJ27YSzaIUXzETQTyx57GPKDQyyYWKiI=;
	h=To:Subject:From:Message-Id:Date; b=AXVRbowNSAtjM39XuOWgju+TC6EOglOFKCO91nKm/193zfx6a9UQDfhvMhaTsZ3eZHz+EjrT6JW+8dP92/UZ8TxaLqyRzZ7S4N0L7vlmHH9owWV4eqpUqk5dR1Q+mF87ZUeCXSFgKp79zjxj+ayjVBDBEod63mbjYD9g8jFseIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwH2WvxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwH2WvxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA360C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785546033;
	bh=XMDEr+5IJCPcJ27YSzaIUXzETQTyx57GPKDQyyYWKiI=;
	h=To:Subject:From:Date:From;
	b=EwH2WvxJeT5IDc0O0tO19plYfwyCj9QnTOByLV0uViOSsfXGhbTj7JNFDTFtSQQGy
	 HsKb5VtrjBNeeglZIHa9x7nLIqwkcxsLMwIV1KHjpzgc3dKgGaO2zGwgFC5kHVbUTr
	 E6U1xxnVypAGPMaCpQEctJCwJHj2FUBqISsLSmmTZ+ADqZdeYaKwkiEYAJNZa1seSD
	 6lfq2WcdFbKV5MZkBQ3qL+IWfWnmyd8X/rq0OuF0W8bmn/IlO6m2Dgp6obkf00+dmP
	 x0qVrWRd+5B+MVwQmIvmeXDo0Cuh9eb4RggcHs58PGdOt/Bxij+hjaDAaKwAe2xiXh
	 FevoY8ZdLbs7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A58C55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554603368.23288.15961920137233398203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d03449f965bea25d6dabe34cdbf765d37d35a718ce9dc26696f37df4c67d40
Date: Sat, 01 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785546033
