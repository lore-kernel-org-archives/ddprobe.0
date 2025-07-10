Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1835B26E14C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752134994; cv=none; b=uiB+IL3QKwr+nLYkInkRIPeBEOl7plEQ5ZIevUwTTdjSp/afQGD5ZA1ZJGoky836WboJLS2w5V6Div4SXy1a3pJKGDokk1vX+tb1WGuL2EBGc8zpB0/vXnHx31WPihhWmJYPab/Nx8Zg/bNr3DqeawN15sOb9jivPpd50PdqV8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752134994; c=relaxed/simple;
	bh=zPjwx4COs63FhCZiEKVccjFjm6Z4z4zJsa2XAp0FkV0=;
	h=To:Subject:From:Message-Id:Date; b=YZliLgJQQ0Xe1OvUwsdK95KFh4CypuVZCqd/B3NEisocA9LbIbRRV58HXznt2b82i12ngeMD8vp+IrHeA5xaSqyF6sVC0tnBirtKZQQCIzmVD7KhV58IDUqbKUcEqNbko+Ph4ydI48eFHi3BVSmGPMMxx2Nd8NrTSokzGh8hSJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXem8eRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXem8eRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4878C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752134993;
	bh=zPjwx4COs63FhCZiEKVccjFjm6Z4z4zJsa2XAp0FkV0=;
	h=To:Subject:From:Date:From;
	b=iXem8eRwNmxk4PuA/hzFaAOoF3e5wWXgt3R2/IENxEovWAMJLMJPcuIuB9ZIuRptI
	 sDAhTjlcCPO/tTticHmqni4JT07Pe1TdCM9/zLIdb5vwdPGC+X03jiTFf+quOAZIlD
	 Ewry3XOQlG7MQ7gBMVsJ+DeJEfyfvFRYb6cKrI2hRv37qIUIU6fjDzw9WWAM57EVlM
	 hAc4xHOkrczQzW+hrgjiQVUF2nx6VJGXaJc0Xn4RJ/35S2rfhN+8P9A6JoU3OFAcx2
	 mhD7Y1o3EXeSHbQZnOkmhNwcKvDXwJ1wpH3fMgmEcVatv0lq1hvw6gtV7jeXy2Q2PG
	 8Z34WId3yQ9Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ACBC83F18
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213499358.8524.6037855490135569363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92b5ac5b1c576ae430cd45ba5f5cea0ddc50ba09b393a74c510ca64117bee1d
Date: Thu, 10 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752134993
