Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506402BB17
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792207234; cv=none; b=NnwJCWlr1nO1C+cWuSAbtxkniQ3RIwYhqFvebzFlvJbefcljGy+F5iGtPM05OPpcUZbSH1H5uFUpLLeXfZ3HWN2KP/33PzX43Rjh0f/KhFoLWJo74ucTzoQ3jY+IfO9cp/5yxr02srX3opX+Yze7N2Q5kc3lh64nEHKbLPQNN6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792207234; c=relaxed/simple;
	bh=Mb0IhMkvRBYBtJeLUskv4ZQGdl0rchOzjV4RHXCbwgk=;
	h=To:Subject:From:Message-Id:Date; b=VIoou9IifqwovL0JMzndXv8xW7AmzoMWdAHCe43beqokpXruGmhxYOEKBPMYfGq8+x8ZrLr7jWuVF0rCmfe/3Ba904nuZkJoPFmJEjQJUBrb5jnwPKuJxHCpH1ScrtATWzitDU23WrJcj36NSurTTwntduH/hAHG0ufDJDOGZtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwkYahb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwkYahb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE05CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792207233;
	bh=Mb0IhMkvRBYBtJeLUskv4ZQGdl0rchOzjV4RHXCbwgk=;
	h=To:Subject:From:Date:From;
	b=nwkYahb0PCL+SZ928zh6V1Z3pvfv1h0AO7erwwLxnVDS5PDqGplSZ9j3VQtrD5s2N
	 P7VWYCqd5kOnW8CaSmMCSlYltGQ0K4LdL7MOnOinpM556eB62kiF2fXFM/reMYWnCu
	 7YotW3/gc07a6g5MLdifTGtqxb9EddcOwjFjLAOfMRhiaUS13ffUSbNiuk800gYrRz
	 2WTiP2IDKuD4CKnUbE9Agd/hSs3piQ4KBcHHmrBEuGJ8iPhdcwx1klXdZYUGo2EyMU
	 MOpXtEw+w4XCdy3I1otBuD33kogaeTbpuuySSLCB4RpU+SwLnSLJwSu3ie2MFe6EbY
	 0FZWrzIMQrvGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD05CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220723369.16505.32323893488893466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557dfca90a7f1dfb54ceb825c1fc6296068e6a24e06c3bdc7ceffe8a792afb60
Date: Sat, 17 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792207233
