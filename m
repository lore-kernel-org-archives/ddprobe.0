Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFBD388378
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778757634; cv=none; b=fuWD7KW6Tkn1kCpUAXMRDmhNk7zpANHkcxyU3/kLRi3pn27PrLX/qGTIn5q6SAAAe8vOEHIolk3fJPgmfJiOhqIqEe2y7wxP1ClZDTLVtfUTtA4YWCQ89fFNGqnRWqzspxBgETU5DvXCgeIw+i0ELIb5yMIBPppUOUPYserckoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778757634; c=relaxed/simple;
	bh=FrtdY9BJSldyP2Y48q15kfogqlBo/55FtkbC4qQI8RU=;
	h=To:Subject:From:Message-Id:Date; b=MBzBCyGsxK5z4zRSHL3BanbT3VSq8nwE87+aGj0IcGdS3sW2Foo+WmrEuZVEjxaeerPSdHocC1Dwn2ao5aXDYUNP6yFvD+knS+geOgPEPXQeVQTjlcFFStCqwB3T9g+6PVKDYb/fKjrkZaw6L+Fq/8ORMGFLQIsCLG8NdZbhA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olnWk+Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olnWk+Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9858C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778757633;
	bh=FrtdY9BJSldyP2Y48q15kfogqlBo/55FtkbC4qQI8RU=;
	h=To:Subject:From:Date:From;
	b=olnWk+LlQFFLgQ/lCHpfjHhYc1V5539XEWlMbMsKyaTjY0W4H8W4VhuLkkux9ImIw
	 aCX7h3pH253AoTjkb/+4JpiwMjjs4dsBa4v2NNNfSopOWx5/DZKnobhXH/A3at6Rjc
	 mNOFOoTwfGIf/MkAcpB2W+tQ8tBAIM5ZkTAkusxgfi7L5lmeJhzpDKuGKpCqsNZabf
	 u+i2grmwZCYJBAr+0HLjXGWyM2autHZ3tj2KwF2h0Nul7G81Cpk3Ceocsw3UNDlprf
	 JICGBH/4mDma1iEL3NJ/TY452uYNbU8rNM/dP0mLGwc3bibhqnx1f9IqbSQUSyUJM8
	 qy2sdE2ltlJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5D7CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875763369.14798.276693430064945919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf4374f2f3afa3b48e74767bd8a30290435544a5096125647c83b3e48b2c35f
Date: Thu, 14 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778757633
