Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456723914E5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788799234; cv=none; b=LX1LURFdbqfsTxOPrJlpqkBwD6LOe08O1leEtuVO2OIwq/AHMX8hnJmhIPVD3X2FdW3zTTLzvUWPqRfW2UEz7/8Kg7UTHrLk0SD4CHEEpiKvsGjMnmBHO09ocLQU5rPvgloCk4g33zFphYovd+e1fe0Y40lKfOdPR2eHBPy3Cl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788799234; c=relaxed/simple;
	bh=El4XM4kjFaOLMABI2Mr+aZsBkVcmZOnbvxsJ0qBrm0g=;
	h=To:Subject:From:Message-Id:Date; b=YcuSa2A7uKB63pTMqwQkH62ZQu1a39OQ8clFAezRhvfe7SmHKzyXNAup06xUBQd4p7RbPiWmenDslf1eUNaFSvG/8SbAoIsqGDiIMEYNT53SKUKK5VBTAsoSOT616u7rqC+nxz33NmDsHWR3VZW8qqxsL38p994fZ+/ys9B2oSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNWLQAEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNWLQAEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB770C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788799233;
	bh=El4XM4kjFaOLMABI2Mr+aZsBkVcmZOnbvxsJ0qBrm0g=;
	h=To:Subject:From:Date:From;
	b=fNWLQAEg1z3pMBSZRvxdmyPJu9cwf9Ad47LQOjaUO+0DhKUmhBC7zh1FJ37f7WI/7
	 ETVpU9r761mb77WgBt0fS+YGjNPEgqlaVjAz2d3u12Tr8Paa9zVY9zb1JW+8zaEVt1
	 d32ZlHCvAg7p0PSdJpD5WdZi/r2yAX66L7UpBXjOwnMptRLWZC6jJMk985qWDDXK+h
	 dAm0jWNofAaOVzcGemhMC0cXs1ZfLfAe+uSIxF/C2L1mjj9fPwbtaoRKmLz9GersVM
	 mD+blkMSkkCRdaRvM9u97vSLQbtjrI9Xw3jBvXYGHkSv6L/mp7LX5gjQ5DIttPzaO1
	 WHOLxRYLEgeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B324AC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879923372.1849.10736320186182557578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fab5dd64ef7776a536f69376680ad3acedb1703000b0b7fddac3fc6cfd8dda
Date: Mon, 07 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788799233
