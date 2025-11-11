Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AA35227
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762821594; cv=none; b=WWZQsRzjLlcClCOVKaNX8AJ4mncG9VgLkolI6FZNa3AKeAj8HxdJk7CkCRVDCfvAviAr1XPLNyJJVGiXxbPZ6TkRaFCeyPUoVdJKWDObgHYybn3JQh2anuVIzYcVm4AHZu/54SJDiOmMXOOvb1AisjK0Imihnq8ftpbWj9AefR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762821594; c=relaxed/simple;
	bh=lsqbxwitwFIi6pOoldnKKPcPSO+/aq+8CI5wuSJV9yY=;
	h=To:Subject:From:Message-Id:Date; b=iMpJe1QGahFUww/7Ch4DrR9r0tvBshMkbarAEjuHVKGkCvN3zd7fqAAnhH0OL8Y6zOPcLtuVyvtv82pIef8GgM39BsjVMtEzJp/nmDhFWZ73S1ALflxiF6i/B/p0Vb6V7K32Hs00oj/ghtzipUnhjxFvC+mioP2Yv2ggxJ3krTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQCJt0GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQCJt0GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5399C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762821593;
	bh=lsqbxwitwFIi6pOoldnKKPcPSO+/aq+8CI5wuSJV9yY=;
	h=To:Subject:From:Date:From;
	b=BQCJt0GHarZb3f3WTb9duWjslJKxHGaj5o41wrNSsUs3o1EfMR5u/oqfkmVMIL+ST
	 kk5NllwbObRec6UC2Z1X/Hqt87MflubKn9ccnogqiq/weCNoSeBdKY8UEBisWLYMR3
	 5gTrvwz5wse+ipCu/YHFfr2TMOgJ/0MRNZjq1iyHtsKkEIzww72HyOqI1BC1iXC0FS
	 m/uPAvA7CDGV6ZRfacssq7kr1XrYCgcSk6tLIFeJJ7RTOIORAKWCCKU+YRuwVy30nD
	 VaDwcCcQAmeyMxxuROqk8hQAfE1RxqypWJpdb06299LNWu1NoMGstT73yRY+pNsmX/
	 4HYWPIqQvMoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B34CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282159358.12869.12568484127185186344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4deb2c56fc04d257e0a4b17a89432ddd42d32480ace3c91f4a62022db65b0d3c
Date: Tue, 11 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762821593
