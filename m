Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6A649EC5D
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790058634; cv=none; b=YejuRhMVRhpAlwIxWnWf+Xn0/C5sjAXQj8pnQsxFKStBBsyQ59zE193fFe9Aa9eGvBzTKIVfN8mvj45jct6r/2sfyHAG9duP2RzSIFtY1qd59m6e3yEA0w8M3ltWG9CR4OOEXAOwV50FW9Tyce4DQPepOrhYeV8wXtx6GJSufos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790058634; c=relaxed/simple;
	bh=Q9HgqkhLj8DO4CxmH3ueuRkN/DltEikB18lVjKmW08U=;
	h=To:Subject:From:Message-Id:Date; b=GkOjyh6KsgJXfxhTdH4pMEk2mvzY4Y1h2281Wg39jryNm9kLcivuHekgok30l2jPHvF/FfBk1R3nAK8ryMgLUKxomnbYYgSYSueSNxf54dxKEPo0haOZ4fgS4yUTzpBuiW8176UiqGc8uw2myEIpsEsC1mqHghEagt3qKVYqq3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/WVlxgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/WVlxgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70B3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790058633;
	bh=Q9HgqkhLj8DO4CxmH3ueuRkN/DltEikB18lVjKmW08U=;
	h=To:Subject:From:Date:From;
	b=N/WVlxgnrAFC2rPu1Fx+HYc4DCB6ZaMSt82MZ82nll1ChayEOR4pm+yPPUyMCtQqj
	 7ZfmkZvawr++hksgtwQPttf/R9r+6WmK7Bvkpx6qMcjfo+81xCptXscYY0SSfmIeYF
	 Zt6N2PO1T9B7UrLQf6rr7+4EymEAYXMHheyQqoBZvshakzQRRUVVYVGYPdgFqnsucg
	 B4z38C6aXv9Yxdr1cBgLijMVr3nJ8rLR9cTN4RZHaf8Mv3yGscwadj5h3YM1cKZQ1Z
	 t1ouD0Bcs3QpBI3Bq1mlWrpT0jJVSMx5qiq/t5v350XdlH9ExfTFhbsxVxzZAHdTtz
	 ChaeO3qLqyySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A20C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005863371.26182.13751321024226737881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec804f5fd63150381af7699e238c52b539ff9b6e34acc3b209f2e9b7c4644c3
Date: Tue, 22 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790058633
