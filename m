Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9EC3DB312
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787216434; cv=none; b=QRq3ns9S5Hb2/tZBzRXlLE5x1nrWR91nm99n1F50RWn/A8NhN6XDu9DFZRlnQ7zcOrFqiS3oaNIYHixPKpTMp5mmuaZ7E7yOYCvL0mWZ8NxJZQTLjD3YjgH5E+0kWrdgMJ1c/FQX0mtrXTXFH2IAlJPp9Fud5vIPOGAeAqH9JHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787216434; c=relaxed/simple;
	bh=lh/FvvLMaALocbeBZ7RwQOsbG9mWEWUG6v3ippx9P9c=;
	h=To:Subject:From:Message-Id:Date; b=PUfGc6Uz26Fy7ByuiwkxsYU/Rn7DOFqaQcMTYfHkjjg2bd+qSTmA5mZeBzVrYQWkVPeFtbeYj0ERGtsMM+Nk5NCbuCjYu0y2T+OAY3T3VXiUgyHUfh+Dee0nvlCy2/w61Qkam6fNcmcRRkUcnIfUqZr9tmIgEgSn2A1nD4Vnklo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONEsI9Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONEsI9Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BF3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787216433;
	bh=lh/FvvLMaALocbeBZ7RwQOsbG9mWEWUG6v3ippx9P9c=;
	h=To:Subject:From:Date:From;
	b=ONEsI9Q0n/QUExTe+38B5F0ogXI7dKjdNgvt6IDP6XqqErcvKVXlnrupkEDH/Qlrn
	 QnRH7WSQZQC0080wLinD5wUQbATFOHk1xaSAODoTI4MOEyGaTxH1P++MUef3Q7CSyQ
	 l6zVr42Jcz+o8e1u3AzTLAcUqxqDRi+ThFxJKVUiRLIER1y0k9uTRFAajRA/RZma/o
	 2kBFK0mM9K23ByXvv56HJKeCj4bLXJVgVT0a4lb1jO3sFRcql5g63bPTfAbpFWchqs
	 1RvGfGz+4Uh02ycIJK/JuhCRTtPEVMOGWHw8sbBZ4ZT0QBRA9GpVp6KtSYiS9LqAhE
	 XAuko/FnR17Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB634C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721643369.28247.16795370172137531733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4985f5ffbab8e391b157fb4e6b7818c78ee0e2c45a893e8039b42355bbe813a
Date: Thu, 20 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787216433
