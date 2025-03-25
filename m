Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568C81991B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742882394; cv=none; b=qWeIUjYSDi+i772rtvhTY5xJnHFy3uOJZrPRXQYG7LSYP+CypDbO6hCcQIZAtlc8TCCoxPZjYizKXXwWxbQRBavq3rDsnhzr69gFblfMdKXF1g63fpwSCSA+lwgjr9O5CGfuGQaG/LCQAf79cmGVMgAi1H62nhzH9w04GYqSHqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742882394; c=relaxed/simple;
	bh=7nAA5pLkKbeNVAY+hjYGV6Krf1qa652c/TuFhZR+qEc=;
	h=To:Subject:From:Message-Id:Date; b=Z4tHYkxrSt7EadgY9FtyFBwH3Hka1xFxbU8f9c2mFiss6cwYfu8xhud0bA+IayCS+mS3oYx9bKHGMqg/JBK4SrSmaGwt+T110poidIOaJ2fmNvg791d079gpxE8Lm5oBJaj3auo3/V/0vevZwau6GDnt/rEpz5l7eWTj9nOVXUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCIVCHYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCIVCHYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A57C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742882393;
	bh=7nAA5pLkKbeNVAY+hjYGV6Krf1qa652c/TuFhZR+qEc=;
	h=To:Subject:From:Date:From;
	b=DCIVCHYmy14Kpv5FiGmU31x3rkoUof5RKb8zB+fVK27LBu76+kDfEfqsXQq0mTJKH
	 lu0kyh19Js5wj1Uf5BzZYCyfY9OWuq+Vimfamk9h8SmF8lHvPVERPuUYTwch9muQ/C
	 IiF/SEE0LLIcHsXtVNayS+9b5mcECOIZ2TGg3GvonDVsnLe81Iho9XFIp32q7u9+Y/
	 9sOUASVv/BCeXJia8LRulebS9atoRj3mbStLlQFpxGv6rhAxmuxMvwUJv1aOoO0Bhh
	 U0O9DEPJ3uIQqFf1NYTUt7gIeEZf6dscHmm7mG7crWzBegJNZqFcii6BOa8xSwqnGV
	 lCjgHbupRZ6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88BAC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288239368.5955.4824375656385388420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03aa4f430749dd6eeee624eb25956b325e0ac220ad644a3cc19e0b26c1f69dd5
Date: Tue, 25 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742882393
