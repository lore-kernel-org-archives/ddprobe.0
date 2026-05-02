Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E943F22F388
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777682854; cv=none; b=M0DMB0kwPllt3UP8/9kOT0MlaFv3ktRHVQVxPoCoaMQ9jMfJCmZF1WtJEPY1jIK0Soaw1ac180QWHej4lOH14CPU6zmxcMl9n9ecQK9rn6wF63ops1U8uE4JAc7iGDX6KakdO3EuGfNu5kvVRXT4nmixOAuqpIhqMc2zoVUanHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777682854; c=relaxed/simple;
	bh=sYuX4sDiIUGwykQMXHb+uIAjPtliUF95ymir0VChh+U=;
	h=To:Subject:From:Message-Id:Date; b=pXd9AWzgjHp4O2MfSvgIcIAVnLB4f+emLUb6e0qevA2TmN53oV+V0QioQscKuIP3IF8qTsOm7YkHU6HXQf3xXTl+DyDg7PNMLjw1NxFy5YFoQCWToQkRlxfmieAxrRdMXO04E67OUVgyziSuzgFNIbR0WGI7FO4dcHZ/Z9ufSCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4s3Fx3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4s3Fx3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE982C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777682853;
	bh=sYuX4sDiIUGwykQMXHb+uIAjPtliUF95ymir0VChh+U=;
	h=To:Subject:From:Date:From;
	b=l4s3Fx3luN7xSID0+nqLjfmSux1XGCF9gGKc/S4c8wwd8FLn53OxuZmHPWj6CBKMj
	 lijE1ZTLWh63m+PNYeyvmO1Vb+kfvIaiRRwtIMbtzgjI56v+/t1aVuESqkQsPyex64
	 R/k3oKTpoitLlxA4nJKNmiNA9uVjCCHyvPpm+pQkAVhqBW1bN1oXnJmmjJx65w9FEV
	 F8QDEWeSez0ba4noFjxtyhM0Z3/DdBlv/iB2Qrz/o8scP1D7FMEyNGyWnx5hHu/sf7
	 htZwMRa09bOiTdQnjnszPi5XVIDsRUR0i2Uo8tfGRPToIzp27qhMRiQMNWUyJSXC94
	 IFmMBCLZNEd+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD684CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768285368.17788.8387201424279094470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae1679ac714e5bad3a40830230ec23af305173cb34114d96bc186f51e4bd017
Date: Sat, 02 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777682853
