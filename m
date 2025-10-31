Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E612E62C5
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761935994; cv=none; b=Iv0bEPARQMHbkNh81Jktfo8yypFOANjDWfjzUw/G7jD+X+WVxanfT5/GiiOwOL5oZhAQITk2fwHnqDTYYSZJLtq1mowqHxnsj2zzvFE2bvxMqrRsttdiYM7v9HvAhS/y8QMQ6ybY8xxIRjxc8Gpf8H3RsUwPqPNxV6Njzzhaeqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761935994; c=relaxed/simple;
	bh=r54mCBg9JYbHk2Q2xR+AWVMcK1P5Ip5BOqJJ5hfT3Pk=;
	h=To:Subject:From:Message-Id:Date; b=A3mHDXBj/xVi8FDVFjL+2sTjEq3vzB1I/dfBK3BQX2/3RG0W4H/PZqy6aUOGLFQlPEAg21EYrdxhCrlyLCNqr7uZDa4TxKm1WFaUZGAoKuvKS2QW0/mw/VIw8CvrQEPqd1k5Hix+p917Xov5xLjKa1dSXizZz4WYjqXpjpFRoGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja+3V4Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja+3V4Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8184C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761935993;
	bh=r54mCBg9JYbHk2Q2xR+AWVMcK1P5Ip5BOqJJ5hfT3Pk=;
	h=To:Subject:From:Date:From;
	b=Ja+3V4Aa3h30MHS/Q8Vgk63Qw95hXm14uvCs7F3H/l5GrPVDpxsv9xonKKY6Yp2H1
	 q39agqPUhaKh8xlri6Xj2n/xgSGEOTpT+dgcR+FdY3/0/XK+DWTWx+y0M6Z6g5Fm0C
	 /swKNdbszEdFH7iQXnAgGr9y0UixTyWfKWVVPCCtVEqduz+wDCjEfqyRQPFhG8ZZ2F
	 C0Kk+y+baoSEtGjjmQ4x+YoPl8gQSnqErcOsIRK6AKwgvvl4fRJbgeAS+74g6yfVv6
	 N3R8eeAwSlihmwf80Ge76xxd3VpIHZrsPq60GOm7gl7UcgvbARPKcczYeIqtmroyiT
	 IutLyG7yhTmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA4CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193599360.2599.11853527116415078611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90423a7566a0706d8faa1a7f18b92c0533960b4cb67056a36227a2535cb5a335
Date: Fri, 31 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761935993
