Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CBF3CF1F0
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789165834; cv=none; b=FHlxnkCp7UqQxucV0Qp9Et3cUTDva/GRR+Vh0/kW8EOl1i8G4yTi6lnzCE8I9ytJetVp5R3/5/qs6IIJoYAxGNKmwt3cXSt/28W/bCaQNTDe13xFVectOrvfZ6FgXrnbyL05Y7q0oN4YkbXXJ/3tK5YfsnnZBP+IVmsrxAurrwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789165834; c=relaxed/simple;
	bh=Ny+clIICz7fKGfeA7NR12RFuFsTQIAij+jdX8o0xgTU=;
	h=To:Subject:From:Message-Id:Date; b=U/arJUawWc8wYj+SFJBdN9dwKfQBC/l5cktKb/EYsIdqMcfXTnVUun0w28XTinGN/GKpffWufI2ST/toIQFtXIXdkO2Oh4tASmNJT+0KPuA7bIHQ/mrJftyqzIwRTPtrc8w1MQOIVW3ym9Uq+TGbEhbEJoxmnJyqRvNJ1+dJJkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8bquYgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8bquYgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD725C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789165833;
	bh=Ny+clIICz7fKGfeA7NR12RFuFsTQIAij+jdX8o0xgTU=;
	h=To:Subject:From:Date:From;
	b=b8bquYgTnouJ8q+dUWotP9Ua4x+Y7EnB2Sw9R7nDNiYkZJ7/00ipNfPJjgv0fjPad
	 RE7V78rp9aVfQ6ES0ljYzeZILcMVmAQk4EZEPN3pdVxpoby2SKxpOc9dIAJvT+uHNX
	 tylXjSVuufsGls6EfJmTxscJsH1tLSkenyeEUXfaHeoQ+/330sjkUI/Cmq566Qxl2h
	 xp2S/8ES3Z5xII3zvFobGgPtRcAicTX3qXPmMd9DmOAq46ZsUpzkQ2t6vs0hMzG+0T
	 b94ByyvCpCfT+dMp5Y2Odq1pgau0K4Q7xUkMmneiM/m7usg6itQU8uCNljuqLMkw2b
	 M8gIWohl+EqKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB104C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916583369.18598.623668177550125141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e5b003dbc61575bb1f25bb7cbbdfd2490ce5db520f59c73a36fc496725ada9
Date: Fri, 11 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789165833
