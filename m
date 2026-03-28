Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F28346E54
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774741494; cv=none; b=Xqu2WG3WuVhBud5W+qorNILgkgcFe5oa+73FU47zgSekGQbiXdX79kRwCtyxaf00i4GneLfJNV1XWuItkchVx9w3lLKl3J6MeFszkGDcWjoQUdv+zxgKCeoN/a2k4rzkZHtvoSMBv3YoChvcDGSRrGjB2/HsfXr5c31xL7QX1zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774741494; c=relaxed/simple;
	bh=BEjTok0xlndDSgaCnZFUvupX72nR1xXm926IMk2RnBk=;
	h=To:Subject:From:Message-Id:Date; b=l9jmnjcRoofkwPlqsKF61FCtmcfBtgHlXzcM5nNMI88gk8OY/Hm49UF51w/ElQDjURbx2AktppaixLUz0K36EqasoXaQaGcj13eptVeJkhe+w7cCTy12r9R5KKCF8gl99L6HwxtMnFmuUhHYV/nB1IVzUhxR25BwJRmAofoM28E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm1HR1o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm1HR1o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9331C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774741493;
	bh=BEjTok0xlndDSgaCnZFUvupX72nR1xXm926IMk2RnBk=;
	h=To:Subject:From:Date:From;
	b=bm1HR1o/Z6fkPIn2piPf8he37hCOxfjeNruTl1BB7+EBJ1MTZXwEMs3UmVKwWNdR4
	 afm23m+0Qe2MMMKWUpLMABvw2iCHXIAsLdlF37H1B0K69NlOqb/pWJzvuJT7vqir7D
	 w7GRO4bDJfn0nvB7ni6tL8uSq16jnBLLC4i9rnRoN5EPsdq52clkU2oCA6pJ5UW8m0
	 2/M8XPXTtp4LvHOI9g+Qjuu853gE7ivdLmCSlcHCmWtan/UZLvqkSVnDyXouTvO4GV
	 KxCbnQOwlTGXOTHt8U6uG4h9dc4siLyWXJVesj/hi2dZRZ1VrPeqe7ADTZO9ziWx+J
	 hKv9zO5MzSRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9626A10D148A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474149358.22652.10068742075317117862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aad3fdd27be8778e620ddff4858e7e24c7aa4b6b3d58150dd6aa0341e0f6934
Date: Sat, 28 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774741493
