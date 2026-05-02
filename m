Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A49940DFD8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777681654; cv=none; b=R3KMeD8ujiC+Oadc5GRupV1rQHYXaR3GCR3o/s/LlNBfuXiVL61TWCsTeTJN53sOfZ5rRoe662t1fzjyxPXDEqdP6Tw18yqHn2+DggYuKyP62GfgXmxdx/Dfp2uGhCTn2gc16G2fb6SPnonJUrWoj0eeaBrZJUDW5coc/X/mTN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777681654; c=relaxed/simple;
	bh=hXz2BlgVbq4nauSk/Blt1W9uCq9B1h2aUNTuhEDXdXk=;
	h=To:Subject:From:Message-Id:Date; b=ADn/s9p9hfbzGiHWRyrtTvRzKqmSbrsGeXNhwrgtqSzesDW7hWvqjE7bVokAhwNRRnrP0+FTtPMZCzmK++A7TXoMBBiLNwburufxggUZHeZ4yxca8OHCJOLDjfSanq9WOXJZJZdufi8COHlBbyiYNS3/h0fUASKOZkhvNRVpVv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiKLqOwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiKLqOwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3569C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777681653;
	bh=hXz2BlgVbq4nauSk/Blt1W9uCq9B1h2aUNTuhEDXdXk=;
	h=To:Subject:From:Date:From;
	b=IiKLqOwKppBupoHHGOJVIyvhGkhqCdMp/iyFVxo4DYeyIEofeCaLclJifg+ZeoPu8
	 l8gCQnFLA0W+t5lxxxRyVm0bZKwU444ynaiABjcNeJZUf9jsPr+azWbIv5p7Tj0CHZ
	 ynyaFBEcN8+uGigxutaEJjjitmwGfdXPgRn8yLFjPRj18HXml9SFS9m7gcYKd1eGRE
	 yxNWZ0nKIpwSlD0iM4/plSymbLa1tG6Cye7UdRWezuIyE8dXaowSbUSx3nOrRLsO/i
	 VSwH2vDjJlDI0WpkZxLSaPDEWEYkaWerFjs8gMEpMZxbeGoN6aFeDoGfHe6zry+fDA
	 8Mwi/H9Dddg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ABCCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768165368.32663.8410641665144755836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f94aeca8a3e159be4ef685b15c295490e6c102eaac06895ebefd252212cd72
Date: Sat, 02 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777681653
