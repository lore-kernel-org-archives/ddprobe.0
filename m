Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F13438A6
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787106034; cv=none; b=WxKldUoCwGcNdaXI6vMp/UJnHkKGMYSqqPbYCmlWHVQx8cCLB3z3kxETpgyfIMp/Fq9RZbUwQDltGsrE+RcK36zC2KZGnTJb4RXHH8BwbBhiT+qAgULrsK+WfmMoxrZF5zZdY1cwiOnAuExblOSjqec+vgu062Qci/NIBizbLsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787106034; c=relaxed/simple;
	bh=6pzvU5hLWT/A3r36aQKv10FnLrWpJitMx84m3VWofI8=;
	h=To:Subject:From:Message-Id:Date; b=InzoW6gS0IgsRQnfRlEowgKjDjq2Ey6Rkm9TuFgimQf2+oQFYhjxnOetZXNUx+PyvMp6MkBP+y+Hb9B6qZetU5CWBMw2xeY08/x48nUG163F/b2UtIAYmi7YKEhk5wdhD0ex/j4j/B4m8Til18LMiwc+htm4ec5x208LcLbN6Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b02Hk8p5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b02Hk8p5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D891CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787106033;
	bh=6pzvU5hLWT/A3r36aQKv10FnLrWpJitMx84m3VWofI8=;
	h=To:Subject:From:Date:From;
	b=b02Hk8p5CIPiTXzoHlzgyGVAn9pcqkk3vEpr7RF+Oe+pejleMuSNBSf1XRdBV5OXL
	 fieSfTO8xI2OIybDYk1EA5PMxd7BmeyGi+FNX7H2Ss9znIwmwDYjOY4nfeTXcI2T+l
	 MGK/Vuw15s1nFFJgVrN6sEH9ED13kXWNXPNOki0th+Zcy3rP2sdekxLeYHXyordPGi
	 RJP1QA35KrYX2a421FKJYvQ1VKDCESydqUbuJi5eKZq7GcUAxCX8NpV6SJBal0Mtyb
	 F15V4eO2I+Cho6dp4sfTKGbhaoxdmZujJ2kn4PSdb0npzztGwolKMuWMxsTs7luCDX
	 FMVFLea/aZ8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E39C5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710603369.7413.18193574037702429441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095ce8c152d3aed9700e6cdf6a4ddb486295f4aa35c2c50a99fd25eda2682632
Date: Wed, 19 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787106033
