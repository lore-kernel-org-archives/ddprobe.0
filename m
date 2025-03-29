Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE953595B
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743223793; cv=none; b=YZNsMm1hd1FpoY7S6Z0mDQOoCFdVvMiNzaGagLXuBecA7dp3XIfVE/v3IZfkwsoOFwCxN2cy0/TBhw81JbP+N+KDn+35fD+af43I2x+Mu4Yg9BbUwnjCWQb8uJPRe1twSWlwrd8Uykzuu+kNugCeEtVfN7JO6PO7f4PbgiT6esg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743223793; c=relaxed/simple;
	bh=BlpdPO0XqAhSEDDgfKJtz41mHxY6Vl6NQK1aXjdbiR0=;
	h=To:Subject:From:Message-Id:Date; b=GFhsucjk5bbNSYGo3L1MfnimMLslhFT0fX8K9i7N2EZbw5CBuWlzUX/kpCnVsKSu2dA6SjRwiQndGZu4MP/1GYgK8X+8qvRypYJ1CrdoLpigIl1IOwyoCq7r7SsH8EHHy2SoM0MN6inpm9MCnUsCaV60MA1pPzHQQZvn9ypJ+8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6e9Mc2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6e9Mc2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF429C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743223793;
	bh=BlpdPO0XqAhSEDDgfKJtz41mHxY6Vl6NQK1aXjdbiR0=;
	h=To:Subject:From:Date:From;
	b=c6e9Mc2e8fiyu3PONyOL/E6Yzr7QnaiglLfsA3nzozjgTGxpryczEkbnYqlJUVAyI
	 XT4qNKmmwIZUPljxocWfg1YDvyxMIj/sEeRmzdqxVcal1cFMkwJsQDRDc+omU4CzrD
	 z6mKJKQMCQCWxgx5MaOlBd2KFcTDNnZv4Eva9pMfdaWrek3ga2YxW15dnX/9Gl1AGU
	 geWu4BiXYj4eG33mmt4/mIIWqLvbOD0UWQWMqCIMeVhm8Tg2SN4wnt/HYGlRH6fxQh
	 1YyNtnRVfK7tDVmVBsFr0NmgmUiz4jTV/sMGoTb5N3EgyUk5+7m5+U7T3Sw4Kd/xzY
	 EF4vFC/4/m4pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A718C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174322379359.31840.10609723204663326942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115cf6d3b7054b626a4793c48e30adde4053b28aea5a2b7853cae6f9142a7ab4
Date: Sat, 29 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743223793
