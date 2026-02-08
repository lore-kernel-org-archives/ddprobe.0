Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C80A33987
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770537834; cv=none; b=mAn8Le+Whd8/o0ymqtoSWDdTNFfeY0s3688MgreKA41JrP4/6PU7HpbnWTt8lmuPWrV6EpgkoZDZOBI0/8ie71tnqpSmrTYJMZFqQ1OwjGLlRWAHreVTxXKkDAz2cYhrRXO4xG0tbf6VVVeyq1V/xJDmuHElMhUsM9k/D/MMlFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770537834; c=relaxed/simple;
	bh=etONx7c9S1UhozNFQC0j9M9uySJPOAsPJg3YgHn0e8c=;
	h=To:Subject:From:Message-Id:Date; b=idUXGorhN2vjKBo0r0O6OECzovVNJBUX3X/WmcfYFDZaSQEppWTo/ljUvBpBFDi4iFn6JkxSVyVEl10BAFfA19hC4flPpTqCmhukOsjSaYYAeUNkK2gS7d3DQ0Ztdu9TRcZvHxD201evF9VVA1aYL+qyVFnkf02vRCyaYrCN22I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBB46+2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBB46+2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC501C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770537833;
	bh=etONx7c9S1UhozNFQC0j9M9uySJPOAsPJg3YgHn0e8c=;
	h=To:Subject:From:Date:From;
	b=uBB46+2f0o3xs0XmiK9JiDB12xt3gcLaSbIGeE/Zbf8hqRDFA4C0IBuCKUNKUBz0Q
	 sOS0owRg1UfhBZ7MN3XEblyeichPXbXKCHdmxSaD4x9QnF2pYLmMP6TS0v84+e+ghO
	 me7r4EuuTYKa0cLFeRCam4ANXGo4mweHA229gKLDfG7ikDYg9WqwUoV5bYQQX6rOYr
	 cszsLVOKZvWk0qP70MVRp54Dgo6DJh2bmk1aIOkLWegR0vvMUTYKWlxBdWonbiAJ2E
	 GH8D8u8khYeietdf+LDkEePIZWviOREC5MBNU7EIq/beAw80vBmCQ3JMpewuO2iNL5
	 NzSYpmRnY9IrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F5EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053783360.26374.15384180550383555475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066fbc7b25d08dc2a20b5a4a886c4998374fd1cbc51e13c48fdbe8e537ec6a6
Date: Sun, 08 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770537833
