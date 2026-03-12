Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAEDE2D94BA
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773323093; cv=none; b=WB+bK7Un7WxRzZmCSbs8Q/e44PdrO5FN+A3WmAtFXTRaPltSqAxGbtQ9Y4EY0WpHM2/8BkALjOnEEAtYgGwlniZWqcL2MFepU1y+dseDkBEqCVerEH6Jhho9wcvyEkB3Cewl0LabzzEgtlPm6suuBc3k+qAwvXoApcDTusSYrvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773323093; c=relaxed/simple;
	bh=LeplfZHY53/ZJiVS9w7sxJD7hxZiAQ8DD/WU4IGjZ0g=;
	h=To:Subject:From:Message-Id:Date; b=RDMlbEQrUKvdC5Z1E5qzvDdxwXsdxWB8MSJgkNxdPbryjO2Sndl5rIlcjUAGNTOH3+sNlZ9D/IBB4ScldchDPWDcBe73oqRRYFYHC5p/8wwjinHqqiaqo7JKZ/w4KC20DN61qA50N+SSIaXupb5SCMKdMTGxhK7WLmGR9JHjY8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBMezW/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBMezW/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773323093;
	bh=LeplfZHY53/ZJiVS9w7sxJD7hxZiAQ8DD/WU4IGjZ0g=;
	h=To:Subject:From:Date:From;
	b=nBMezW/rYD19qUQbm3TnDlwlOjcwZK9TpOgz1fsGTxdlzQIuUxdEKq8YboJ4ZiVWW
	 InEUZ1YJb60oXnDoBckwmHvR9ep7xxfHLcflXfikWftYHYdW99STDWiidP/JWd2jkd
	 9ImzHJsBrp/KO9YCmyLNMkTIEUD2HjYk2d0Dkys/FKPMXI348cRzkgSKbsjlOXWkda
	 09w0rKWy8N4yON1Kpfc/BYnaALbttA+scFT/AR+luAI/xTCYTlfjyahMHNY9NXaJjP
	 p3sQn8e/P+TRUYEdoCSYat4gbEUldyoVesx5pBrPd/qc56YqULzm7du5KDP07khJHA
	 1Swi6ZVSwIf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC21125853
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332309358.18585.6667923492923724360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4bbd0eec7f336ecd77053a24164da1e189949488f8bca071aa1994b591d907
Date: Thu, 12 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773323093
