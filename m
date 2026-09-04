Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63747511196
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788541834; cv=none; b=sexal5JF2F1GXPahnCUuN0R/YldBidLFWRfhseLJk8WdT1ZvzRVNKyNHTgkZYtSaT6TK+t1d/z+tAGQJcRPM/ukKcxv9BUMabyWjBwvUzzMAHvQ8CYUIM8bnZvxZs6LQr3IxRdkDkIvstDIvQzWxZlgWLyeAyH288W8jXUhKxUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788541834; c=relaxed/simple;
	bh=Gn83s+Sb1VOEwCZYehiK26BwUkDlK28gZXs2hZECe80=;
	h=To:Subject:From:Message-Id:Date; b=Nq6LHYm3o5bODPv/GiYZ5JJgG8c2bIBCfLGv2TBBwV7PuljQdWFfjmANKGJDxGFvs+Ys5hKfwIf9MQbb7jUOYLtFjkgmi+K3vYln0DpLrfBCTGkv/QnE9hRbzQbeqHshaWg32uWrzlF4OJJnd7eFt2HIzTdmj0hNYhxZdgNjq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOTEQfCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOTEQfCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBF3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788541833;
	bh=Gn83s+Sb1VOEwCZYehiK26BwUkDlK28gZXs2hZECe80=;
	h=To:Subject:From:Date:From;
	b=oOTEQfCCtg0Ze0dqRS3hdRZ39JzEzyolzhrCVSMyl4F+PpY5RJ4mSY43bjTSC3+Fa
	 BhlqTtaOOoSRtLyiVrSXZHyj/27u5LPE/P7kS/w3VRxD1+v2aQKVFIRKdpxLS8pYEc
	 gfoOKcW57Hnh7JOvnOOghU5MWLYjTbXIMRwH6QvruDhvtfoDD44kHJuiooOeILXpJ2
	 KVd11q7JD4SCCGsS/s32v7woE7tpA5s/q4RCw7XKKZjnGS4Uk4rFPHD6Tb958D91Eg
	 zQ/nA3yZJnUvgg62fQcSjC2QyzcI0Hr0dN49eQKUAsE1rHA3N80fi3y4ztYF5+pHu3
	 QYDa9gVE8XFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F49C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854183370.2438.14883042630946419884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28acc6c323dd3280820cd79d884a58a0589b37c6425e72f95239ebd5da2372af
Date: Fri, 04 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788541833
