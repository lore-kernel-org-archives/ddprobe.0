Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F59976046
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726308354; cv=none; b=mXHmTWK0h7u2yG3+dqkWx4/pujzZqV0etFh6g0O6hJLxXrOPZQxMJvyaVT6OJHnyTY799AbJNSsQaaL6ptjYCW/FiuYLm3i0H5zsr5pDSvruLqPuTxgkvwKRRFkWnCHGWAiwI2ToAc5XcrAYbCIFN319MGqw8fFnn9qZO+B4z7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726308354; c=relaxed/simple;
	bh=kEyDli5fWGL9EcR8jqhR+f9nOerI1fKeSVN64grNpK0=;
	h=To:Subject:From:Message-Id:Date; b=gqFMHOOA8mNGidVL1ydjaeHw+hiHclez8ILe5/scXE8io9EbQ/QMNe1hlZxmLyaBD9ZfF+ZyIwxAYMi+CQ9x9Q+nEL55O+2bfDhdYjSuFYdE5dDm7NIHDh4H4aJGQ2gaxEve1E1GIWRoYxqnvQ79j4joVcBd1/kopaKPDaY1VUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3jGK3oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3jGK3oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C3C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726308353;
	bh=kEyDli5fWGL9EcR8jqhR+f9nOerI1fKeSVN64grNpK0=;
	h=To:Subject:From:Date:From;
	b=P3jGK3oTxK1fdG1NN2jFpSQJPbA0rwklx7t3sFdRWQAhlQSNEL7f4Sdn862PPCD8d
	 Bfo/MMZxPBYe+jyEbflTu8Sy6OczNHvIlnAlHWBf9flbnTglyULEVyS5nUbvzP9dJV
	 9zjIMu0mjcQyfWP1szCVwlFsjuzTsHk9wl+cs3SOURil0JPwxC1pgrX3EHoZb6ur+4
	 3VNL1PvuVO83hWw3xPzN+soEyN5OY1TKLILF64cNg9ou8MZO0BEMgJwKGWTdIPWlx8
	 hDU3BLlje7SICcXhyhx84ci7ALXyIrXyVi5zRv2ZvysBZ/AkEGsCWgyXBmOiudhcqa
	 XMwkcNDXhMNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E28C0218F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630835360.20725.13225164283136976578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b86e08af490c8354039cd02b674206c2b3586b281c9ae97004faccd203bfe0a
Date: Sat, 14 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726308353
