Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E981CD38
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718214503; cv=none; b=sEkPjcTL2MGyx5eMhVk0zdRROIobTu7OUMS41bh+VNCbLhNE3nk2/z+rSxpodww1spS2XMfxhO0TxiF9gg2jjk2EvpJ/vC9jw4W5r/3hkzqdVDU0gC7jz9uktirDf9AddvKXlg2FKEAMniH6Im//mSUOxJ1IXoFhWIQ70WepvYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718214503; c=relaxed/simple;
	bh=sy2fAi3svjPszFth3ROCh5AqQqn41lCYYlzOnnNDf0U=;
	h=To:Subject:From:Message-Id:Date; b=eVA9R83IE/j4/uw1j4Aw53YvwKv/5qFN2uIR+AEhaKVgBmPMy2OL35PvkUSqAUWKEXkKFQb2Gu3A2YSRnKTzNYsCT8iQrXdMbQfsQ7VLwpZ5YBZ84BkYNXdAKzUklY8DHCX3dq41EjkG6rxKge0LhlbkC9qtmScpPj81Naj+FSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guVqnW7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guVqnW7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE16EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214502;
	bh=sy2fAi3svjPszFth3ROCh5AqQqn41lCYYlzOnnNDf0U=;
	h=To:Subject:From:Date:From;
	b=guVqnW7SDHBTFC+J8C4Q+48JFiW4vdOEDEMmZHmwP56bnjCu0c2U9zwLGYZstyhJW
	 EmDO6R3Zt0mmHBQu6HZTjnFL9Zjtbz2H1cWby5mE/y3+8+lQJrhMKxeqfv0pADglO/
	 cp0KbQ0Nroi0z8ahxStABValP/6+OaqbcvKy6uKDEzLzBq66TbhY3qI8oqgL1ab7bj
	 mHhFieWHWpp66hHMVhXlmA/PQ64yKK0dXw55nSFZbT7Tx1S7BbrfsoOtw9BMkJo1d9
	 Ly0n19POnLURO7zbuwysACtPvA6Yc5AK0oZWli+gPyyhjy5i8nw5IRRAChqGwZ6Ds2
	 fC+oXsBN7JNnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F72C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821450280.6232.6732319527603204151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b29adec5b77f5cb4fa161f5d24c889c92f069115ab2b1e6b6b5000d1f2564cd
Date: Wed, 12 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718214502
