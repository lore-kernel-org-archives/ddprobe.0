Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D9149620
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747164594; cv=none; b=pyFtqnqk5CNuQD+0kbcW/aMmTOvXXvcvfbkGiKteFK2iMYuo/GTP/HhxbD74OKmeVFM4yukk/+icgD4AlSbSJZ37ay8kuFYHOtKbjw8SuuPjyBljdCDprSBu+NcDM2demLyivMjMhyoY/y1eb27+AxgfECRIAUsnwBayi7IFByk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747164594; c=relaxed/simple;
	bh=u2a42PF6U4DrWHrCZ755vm0zlNlUJIL+t4r6EImqNaE=;
	h=To:Subject:From:Message-Id:Date; b=Sy1kxwFgjS0T/WEZcfcQWtX9z01iQbBCYllBMNShvrOLXLtKUXAY/Ve9Ac8D/A1hsSnKqnJ6JPq1hxiJ3vHA09H5p78XlLvg6laqSAXMCtGgPVOzPuSzzBtKH1yyYfpfADZca+/p5K1GEdmJF3Z9K+SI8pXVN6bFVFgFqOfLilM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOdx/zu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOdx/zu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1610C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747164593;
	bh=u2a42PF6U4DrWHrCZ755vm0zlNlUJIL+t4r6EImqNaE=;
	h=To:Subject:From:Date:From;
	b=pOdx/zu0UTk7M/iKs3o8r+IRM4hXUkXEcnAeo8bkwYphT+wkx4Erya/ax8j1n83Kb
	 0HnjPrVh6LjCMs7yQeiZMfeKxx8akH++CVqiQIYPbYGeYDPsxupDwq3/Pqo0jURsjV
	 wwkM0/9l25WTXjppAlfW62gJqFT3UkptW9zEcyr6gxhHGjh+dxDQwk909/F9KX5X+R
	 thqd5YZwsFx1e58CabJtAaSg6bY3VC5T+w3r28no5AUSCD4FobUp5/jt25kTJslu64
	 Pmzj3iCZHfe43z5t5G5AzPS0X3iVzu7iZhYza4Fn7csRGwg/UmU9pb3KMJkItt2CbF
	 epJMEjxXp4RNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE1C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716459357.25211.18381164339972162476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7369ea8ec000cf81261fa6f4e55bca5ad999414874498fbc66fc2794e74bedbe
Date: Tue, 13 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747164593
