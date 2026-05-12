Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC818C2C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778562034; cv=none; b=KaaoX0vA1NQ1FoZcydlHdLPOFOkBL0lfvv4kOX4kCtStC9+/E0eZ6aMcbT03dlitEqj5naqfJzEAMc6H0UrVfpSHr3jZQmH9SkTnBHVI8kksNPOk4/OCUApAfzOX2smmPyku6COYz9yNzDCXauLXs/WPjdslyaId7JvhqrkTepc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778562034; c=relaxed/simple;
	bh=mKCwE31rAFz57+DkA7E69GfpP3jBtLEpLOMBZR5+jH0=;
	h=To:Subject:From:Message-Id:Date; b=EUGZ9MO9pL4oV/0lt8vV1WIf9G0CdBwcHd4Udfb8oqcLvOFRv5nxV9e1BOLdOuFGKTXb1OYapGn/Hy7Zb6iaWJOfVd+CVmiery/dnp8bSU6AIn29JDpMiz2MWoJqVjc3K3oNi4q1b9mzqHH8QQ7klFq61vzi596vh1iS58uBLq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IErESHyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IErESHyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31EAC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778562033;
	bh=mKCwE31rAFz57+DkA7E69GfpP3jBtLEpLOMBZR5+jH0=;
	h=To:Subject:From:Date:From;
	b=IErESHyg/xaEFguMEoQyH9neTSlDQ16vb7UHT9yPQkxJdOa+oEzopsoWf/Btn9kaz
	 fLEPpaQO5FaIIu33+YmdPmO2Dcg/y2wHfmwaWWf6Ka32weRxIaimovMPDg1GODiSUH
	 GItJrQDdnmWrgQBQBxeFTYwbxG0SKS7Bt4gLQCHCDh+mza4i5apKOhA8hIZFTMJJWo
	 zEPKCSvwnaa/L18UEjbNMh6t6yS2EtdErCnuhPH8y7b5+YB3QgX25/KHSkSuO2OKw5
	 aAsusNcv/2Pwpdm1CgLgvdy2U2YJPIo7mriXPR86FDHDHukgYUbeCJah3E+HfswjCq
	 j4nGFrsmGb4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE55FCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856203369.13205.10286895516750484765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618f82caefab9cb9ca65c608c61c24cb821b2964b278d1da8841e5735093962b
Date: Tue, 12 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778562033
