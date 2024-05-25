Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFD6B652
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716669864; cv=none; b=FKOWXy4eMOCeutYhv38FzT1aok6BN4CvB6kMTU3xLY+0c2xKdmVMk3fwH1/9fwcCxnsA+FOb2wh4EJjvNHRSln+NwitPblLbi7AAzoEixZySwprBg3qQBpLshLcFxMEgyJj8EfXASUF4iL2zsc6VQqI5MDr7qSr9KGVHDjuPtHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716669864; c=relaxed/simple;
	bh=SjaN59d3W0mTQyiCLko/NPiIXziAdcAE2udq+W9IfN4=;
	h=To:Subject:From:Message-Id:Date; b=eb65QDuV3Bg65K/0RR9SG9OEVO1hhcPyiH3gKEX2DVfLZLpSe2uLXq6N0XLxSeppCcpkicZ9eDV8n2/8CvaX6317FDSVCBTi4GSve4ujXz2tb8kq/f0XpQTyoHqO0QMXUgo5KyXH0JH1TVwjUJXdtrnQwPg1DBRVycrtKe9/rbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi5e8m5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi5e8m5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D324AC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716669862;
	bh=SjaN59d3W0mTQyiCLko/NPiIXziAdcAE2udq+W9IfN4=;
	h=To:Subject:From:Date:From;
	b=fi5e8m5QNMqNQl+IG8igOqbkS6K485ggP++jTMZFsEobScVHF9FCkz9Z0MlAKgjGV
	 wiYiolkArivjaYq0spJuRDMKAP+T463ebn/ugkgn6cZzskjSRBzu5X/AgXr3c9bovd
	 kgt+Op3mXDPMdohqnIBWun53xLYjdw7cPCKqwj5zYvzzQk7+YbPdAfLHeOBnyCsxUH
	 gPaWhNaXIIp/wg6Gtb+iTfp0MIOsCGq6UrOY//fpUdM5JL56EhhHy+NTx97Pq7te9C
	 L36ZoUwtmQa70QU07dAZxF9qNRCrvB3xKT5M+Rq87Ck7OgOb8tdGqysT4sbV0SFnMe
	 N+aRTpNwHB40w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A19C25B7A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666986278.11231.15880514539152176033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac69b417e3688620db8a1333130e77a5f2089f31a28b1c330a05edeb8806b38e
Date: Sat, 25 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716669862
