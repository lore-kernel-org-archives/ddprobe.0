Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AEE3438B5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779497554; cv=none; b=jq1w+2GfEnq/iDBsjt8v4nIyEBpNaOjbWzwiC5WDh1kPZQyj+08xuxVeKO9cK5h/LoRL5xXQ7fJa9PMreNtQsn4v7Tfvy5I1EoGLTOGJURHzMJEth2hvRLUWFwVs1q42RWSa4jMF3CeOa3h3+Ltfhf2LrDAlXG94q49Sihefrd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779497554; c=relaxed/simple;
	bh=EcA24FGM/HNxCfQkALs2wsIScF9pxmg1lBY0q59N3uM=;
	h=To:Subject:From:Message-Id:Date; b=C7yh9KvupLpriU79cqebXYVZuzfTjv1GapfEZmcYd8CNYaXWCMTkM6Fs8MiiAIQUTaaI8uB8tUMuwoAfyPsYadSht4hCbW9+SkonjoPend2H9pzmbk/SDuncfO7c5V0Hr3TeGTm4lAsNQAWbdq8Qr7uooAbpcyl0sberjAQqzM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ4eHOuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ4eHOuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779497553;
	bh=EcA24FGM/HNxCfQkALs2wsIScF9pxmg1lBY0q59N3uM=;
	h=To:Subject:From:Date:From;
	b=LJ4eHOuWzzyNjJS2w3wwPvodLZQM52jRybdke7Wco2s9o8ED+oBfaWVmuQdEXxwHG
	 I+irfhmaOWD5ab/BQEWkTBS+VDuPvbqH+K+uj2KyFK7USKIBfNZS2MEfwDMEHTsuqt
	 sdoJDTZe/iITxfYnKTn/DXxznsMD9PbfhmWQmExpYh9+na6Jnjpq2/zwATSHGIh8KM
	 DUuVlPMCCNJzsVV8IbzyhtAPTeNXUBiPPIJPyOF0kAgm6by885ANPTlqJN9WILYU/y
	 h7ODY4zQEg2Xe0Vb2aAuzngAnJDQuW7HsNFRf18Ibq3sONGJSaufRj4ezt2ac+dhvR
	 uK6zhtjGau8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC7DCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949755368.26108.2900418222730861100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8319d4c1ff804fbd1a1d6e5e3649f0fe2f181bfd0b7cf365624eb525822d509d
Date: Sat, 23 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779497553
