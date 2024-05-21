Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7A2200C7
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716287603; cv=none; b=ohGxtVQosBPBrGdTGbZu1/H6RAvV2K5jDVtrCdafZDgsqkQZIcdVt+fbvNtM5E5HXSis+XxZ+DZuwWPvL9tvNgEQzWCnSxLCxNgeEDRSoEtLlMI2VYmolakyNlLIO4EQ+Kgs2xS/wgkwAUI5R9B19UA2esZYyCnrr3Hsl/CPlDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716287603; c=relaxed/simple;
	bh=HH9sLRWR2udRjgQpBD0mEpyMMkitC1y+uh6MYLlB8aU=;
	h=To:Subject:From:Message-Id:Date; b=uG1zNBqLN13q3rRNVDwPJt/8mHzbspxTHayhVsFJ4cmkHsnyUvROXpZiYql0ZWaJYucE+lHgVvnLcItR+gZ3GT4cOAx2IU///SkImC7BQEGpB67w1N1npjFOSu9IXWXgoik7/TJMfGAeZWI1mHj/QNVb+YzI3lh4CO6/bkbyB84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV9fd4ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV9fd4ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E43C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716287602;
	bh=HH9sLRWR2udRjgQpBD0mEpyMMkitC1y+uh6MYLlB8aU=;
	h=To:Subject:From:Date:From;
	b=VV9fd4nyN8URybFFXTzG9lOigQ7IqMeqQFv73ZNHGPD+xlvq0Flx0L8oATCLc+rUe
	 f8MsmrNI3sHeMXKudBYrH4GVUou8MQ1TmhGYUNFvtWDchSZkzYl99TUeGXdfuJ3ti/
	 P3gNDKnUegN2rC2tNqoXZYpt0UelHys5sscjUDyIhdTkx1WvQjzbcdAN1CRJj0CmPc
	 RgZiiLeFtC7TSatmUV/JY9Vte5b137Wh5dqr28502i4wGJR4RNjFAypJIoUZDbUqe+
	 JFf4aIwWTlqAnyUIWPxEBuChr7BVpBazR37cgep8raJvWya5lnAsFkldvAIVEkqlkr
	 gwNFVzkACWpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0640C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 10:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628760277.30121.16170890218383960839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1d696f570d6b6c75a25642a335b90dd0e2cf4776170d279ad77fb071738a0c
Date: Tue, 21 May 2024 10:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716287602
