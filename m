Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256934908D7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785124234; cv=none; b=XPxGqYChHiWsNtEBbczR0RAfPPHwC3ivt8vxxt+Q6Jmyu0LhNyyP0pCpGSF5a9sarWr7c5yrnLH66yeGDMMLIO26EeVvSk9UUcEGpBCLs53VdJ+fXWg/ftJErINQqsP3eo8bVTpaCmgteOUjFFpcbI5OIXI1RiPqTBEGdQ5xWPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785124234; c=relaxed/simple;
	bh=Ihp54LicWVs1De3beDgIozyHRaDmU/ceKhs8hVjdwhA=;
	h=To:Subject:From:Message-Id:Date; b=WzUZ2QflkvXuZdz/PD9ad94vwnJlRQOnqB3jBnmpD/+Cun7ubOx+ZXmZGsZLfVvrMwYyBCeHf8pMNuLuG7KhAN0i9s23BtcYjMaXhIBv8s4FL2u9QbZ0pJFytgcleZm/gc04wKDJ+MW1x5rrLCvXMN+uqyHTjUjpsesqD4XjIxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJJYhDcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJJYhDcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DEBC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785124233;
	bh=Ihp54LicWVs1De3beDgIozyHRaDmU/ceKhs8hVjdwhA=;
	h=To:Subject:From:Date:From;
	b=nJJYhDcsO3lq37cWvzkAfJph212LmkFLUvRi8XxKeFCxhLuvb0rN/tfqUAQoHGMOE
	 77gWOES8ZmT/ORWaICJRQ2g9cj/lt19hNsx1FKVxVVnn5ukeJy9CgSeo1dXS6FHkCj
	 fuQVDLA5j6QtuAz3PNKjXJiAQKey6Nv7F3jY8GyfGILq0vVcYsMxZdK+6gZxtPlq6l
	 DpiWF9s6LTi4bbZGTzsKzvgkIYyesU7OzyvHMvNszp3RZawNDkaOoDBjuvDlnbEAPE
	 lQ6MBpLHpGG+MeTwfZSJg3Vtxl0SIqr9G458cc2YBR+otrAJj5XItQeV+TIpC/GtbY
	 mBKWTp6SqrySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC9CC531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512423368.6262.9767337451457364562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18151c14abe218309f437bdb10413776f6280f9ec278ae0c7d392b7854282124
Date: Mon, 27 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785124233
