Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A238C3D5C12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790650834; cv=none; b=sXnbgm0pnQGLTw3J5gLi8pyMjbIjPV2K/c9wWJEO++s+XCPmz3vVFn2/NSCB+sjiIeD7aa5w+NQJOloQpe0VSE8J1LqPXP32d4X2GDkylc+KNrA1SEucUcRuhRV3qbsSoUP6kvEkakk1jOinF9rlFJY7jATuxnPjuzXGQD2vmJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790650834; c=relaxed/simple;
	bh=fIDca8f3LzzxzEHw4ouA3ZCxlE8hjeabFxJnJbRu+C0=;
	h=To:Subject:From:Message-Id:Date; b=SRj15Olk7U/16x2EfoAjv3GRWfpsCfMr4tjb5kmTyHv+Aw54xIp6bERJ9huVdeZLFD195Yek7dpMv/J/ZbY8J23IeESwk8tKxzSVAu0NIa19v12REIhvOr8VvD3ff7suvPKzCiV3GtE+jWLYhigmvKHk5nrKN9pZ9mQ/Qt/cn2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xczl15Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xczl15Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF123C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790650833;
	bh=fIDca8f3LzzxzEHw4ouA3ZCxlE8hjeabFxJnJbRu+C0=;
	h=To:Subject:From:Date:From;
	b=Xczl15GoA2eFaemmDT/nlzRYAmDq05IRTk7/c0H/6LsfbPyCzEFAmv+L4bwJIaXxC
	 AkPRtzL30OO7tpq3Nao4Z4nrCWaIDhYLo6GqVWSiHtIxVryX3qd0Ey1FOPnyf6tWWz
	 J9y5ZAF1TB+A8FURoBIURaQFduv5q3qXT5CBTX8ltGPZm/jAmg2Zb3le0MtcoB0M1s
	 fuHhulMo0OeA8TynLO0E8wKOfPJxUrJrQCmN4qH3nWfoliy/0a0gm2ExhHUpA5Jb3e
	 HgCPIPGPbkxp0G7/r+KNwbWMALbDM3RTicoPHyEx9wdiW9R9Vv+N00978yrGiADJhB
	 0bOqvdyvNYivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED1CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065083369.18155.1088276029628535356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cf9f5d8435843951ad69b8f91fcd2c136f33ef77fdb6c6d23a58742f7f4e11
Date: Tue, 29 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790650833
