Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0192E62B4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743752394; cv=none; b=kjUXtVfiktZpx2N4eiM4Fm1zxC5aJmWdAxOgy3jSHKixraLNVXD0tYDNKTTDyN91O+zag7F04qTRsmKsS4BGynfip0E75TPGR1Y07bhZHuZnDuEAt7jOm862pQ5PI7tv6O+2fxgcTkqJ5iYYtZRXMp9ZSrMFWrgtnWYgqFNxJVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743752394; c=relaxed/simple;
	bh=g5TVemhRXrUk4DHBsbrDAvxA4p3qmXXGH/02B9tbifU=;
	h=To:Subject:From:Message-Id:Date; b=nJ8nBpNtAXTAhLJxHqgsLHYv2k0aDyxCyytvZonU7QCFE0YEzyyRd5FsEaDhIXtXZuo/aOOWIvkjllAp9Clktqm1vnuZQkYIfVKo43Tc9UXC1U3i6XOs0yDB00QAKixGHyR83VxJ8C9fqoXgZt0rPJYASb+2hOzLBw1PJtgjzOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch1kTIOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch1kTIOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA162C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743752393;
	bh=g5TVemhRXrUk4DHBsbrDAvxA4p3qmXXGH/02B9tbifU=;
	h=To:Subject:From:Date:From;
	b=ch1kTIOfK5uf7HeFMUNgpJ0DdukPoEQtint75q+AuxaosOLD707ZzQtzLqIQnVWlU
	 7XIy3al0eMYVYJB3VJWVTx4BACYTHbfraJGsQZYyIK9Iak1T6o1KZZ3X98HdlG5deD
	 TYj3Bs2fdWebvekFvjMNc49Nsq1tdAd+WTZGIqtjiJiMLT2s08aCRxMY3tCWJDAnd/
	 TMhhOkJk5zGT4/3xsYEny+cWEQjHcNrwmlJXE6E7l2yArYmjYzlfZIdkT7gpSNqLnP
	 W7P7Nfg2nMxRim0zr3P1H3N0pVBFC6OlsEY8JsjhVsrBki2IiDLegYKWzRU0omzwTe
	 h+8hw2VUjIS1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F1C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375239359.15846.630587814395986658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34d63d2e61a1af8f0e85be40eff0a315b4caf16aee08bc879815eb66d938cbf
Date: Fri, 04 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743752393
