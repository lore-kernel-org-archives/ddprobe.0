Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C6B26980F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775193934; cv=none; b=U2g1JSN61q9E0iN6IDuvl+4ChNwTUeFe4HO7vs5I2ML62EoimWc9RSLFXbdxbuEPI1RVdVGn0loAxkl5eHP2ewHdzflpXjMxwUH1VIYkiRi3NwDZePRjKGxkz60L6naQNyB9BQipBahptWTuS8+9aGYNFcF30yGJ/Gxdkzzn9iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775193934; c=relaxed/simple;
	bh=cgsHa72DzWd3hFwLXK9SaaWDKsbu4XvHmgLm5Phe4jQ=;
	h=To:Subject:From:Message-Id:Date; b=amMrHJ0kAEAwHil6rC2udsJySmuEkaMneUkBix+00YPNHRuD9n0zO+SKctdTBgIwGEtZqvvtEYwOgC7Kc0tk99OdfMTr4hbOMyruwOSPo700FRR16LfvNBLscJc9an31fBypE+DLa6Xo0Dkp5FYwJKG9avrqjwCh82wyKIwRhZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vj4/XrnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj4/XrnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD9CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775193933;
	bh=cgsHa72DzWd3hFwLXK9SaaWDKsbu4XvHmgLm5Phe4jQ=;
	h=To:Subject:From:Date:From;
	b=Vj4/XrnNT4VmZ45bVyUZlkJuIWTcwmHb8iCFKrdGxlSG2OeJ7HqQTV7x+24zM8SVR
	 WV4xwL0h/1S0p1G9yfSRQAUwG/OZ6D8Utx0VZrPJ33AdBQLujyOzmBmzQv58mbDrO0
	 Q6i9dJgnSAoF+vB9CkFJtFFUY4KfAp6iMRuUK0cltW0duCF+o9zl51XvrbaOb5Fpgi
	 Mv6jRDalivMkx7SlTMb2LxGdn9fxLvKiqGW3ztX+4KYwvjU9Rkm0+a+EBWbX0N4CT9
	 X8/YSQlQE52pvheQJTayozy7pydxVAmTEVKRLjsyO1rDcS+vUxnxb12izpo63s7tuL
	 bNEZvxCeL36xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC41D730A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519393369.14513.16318352864327668025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b998f6f26a2e8bf91d00dccaf9be0411d7657f00f3be535f0d1e09fa4746f07
Date: Fri, 03 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775193933
