Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309AE54BD4
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726220754; cv=none; b=aotBtbFSrcBlceFvMPLUinLWxov+d8ZcZGjeoJ6urDPlVNRq/pmrHytfwcpVF7C3aCFycUxVCfTlcTqqAAg/Kbo0EniJR83k3mJoMwq59dOJvGSQb+5OzMvWsmG61miwecUl+dVoD1KqU9C3V7f59U7lKpMtvvDAVZZZGjV1naY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726220754; c=relaxed/simple;
	bh=2Zg5or8031FE3b4oQnNlPsxj6ytHHPpAu53LYKQA298=;
	h=To:Subject:From:Message-Id:Date; b=EbGwPwySjVI97homyh8GyGM43aCmdvi1aN/7/Zx4bTIwTj950zEcETDMeySGWg+HLxmwV4i07MGesqvyvjYqB97mtuu6Fogg52BREsoS0MtTiWpqFc2BSm3ezWHkMLbdoNKj1afTmjUwXz1mVyP7vAEtj1DLO1hKddQp6Oy/YZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bshXGL8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bshXGL8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B11C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726220753;
	bh=2Zg5or8031FE3b4oQnNlPsxj6ytHHPpAu53LYKQA298=;
	h=To:Subject:From:Date:From;
	b=bshXGL8krII5mHfjtOvF+HDY41cC+f4wf1lZbkzr/Hq0sUK15ZbKrxWRVBZblCnoH
	 T4O1N/4Y9g3/MCXMGzWjWokyn1osy+Ge2hCuzQTuvVXLQ9WldEick1wvFxwUfKmHst
	 b6+VEk2bBOcwGTBOBuFQnuvliGtrJcdQTW99CV0BIW9ncc0IQ41vmKcqwtkbmE/h51
	 cnvOnkprZCenPCAxWOZgedL9x7+mzmD2rMQht2OqhDCba50pFYmLv+9vNuuWysHFLh
	 cyu3N50LaJNl9WVb9EBxM+dAEKRo6T6sN0cR8HgAc5OfzKZRxQ5VcebnZHUCv1Gkih
	 DenZdw0H7UuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A0FA3737
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622075359.19864.18211245251323521050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312e9ef9372c8258881273d9c92692ea53cb8c387d6aef51c98114a4b99ffb67
Date: Fri, 13 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726220753
