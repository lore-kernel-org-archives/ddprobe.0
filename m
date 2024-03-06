Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9171137909
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709749696; cv=none; b=CowOAICN0zKOIIlMSv5b+jXM+P5nTh2xd2FmGlFps3ziuLTnUSEXmCkOO1vIyPXXsSHbH76alrF94gd0Z8Q3oLy21K1z369OvTMMgH9LxWiD7crDuCiVXSjkFDu1Bdx+Bn+WyCFwZoryC0Y6NFu8zaNDGXKJgPK4SrSOEOndufQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709749696; c=relaxed/simple;
	bh=O7rvTbrlTdcfvWwY7TWQASLtvpLO+ctykcuiF8z+XO0=;
	h=To:Subject:From:Message-Id:Date; b=rJ8HsLCNvLSbx1sOkTRLAwexBxVo6swMp69fDg6S0tXLIUw2OoeFBLqPpujCR0OlrODJzpZ3FPlrq6bA8jm1slYamJPmk423o3GecN7y66XikKqAtjoqq00zmDUPFbTM3Y1m7P0oNz4MbUVb8eh2nZwcB0fKN2aB9P8tKOkGb2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gu3IY5bG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gu3IY5bG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABC3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709749696;
	bh=O7rvTbrlTdcfvWwY7TWQASLtvpLO+ctykcuiF8z+XO0=;
	h=To:Subject:From:Date:From;
	b=gu3IY5bGxYvrATcSH2g5Jkb7KkVDPEL4lNDWY6gxg62R4rl5FRWVeejZccea9d6kD
	 NU4YVyw05xOYxyCVnScaYowJCwp60zp3gAov69A1AAkFFmLPL1eGY6gQVsvNXyuKOA
	 sL/75Ng5v6b0Ur5Sylw0kLoIb3QwerpGmmRXI+ynlRuEC5NzUvPucyRmevtzOLQPpk
	 HNoo3fi+Lex9fruvS44o0+RXJIcEdIuuPRVoAvsEqLlA1rDDZepUtszrv1N+Vs06aC
	 s7TfLyLUaht4lyhksgtvHbez4GSuCWRSyECktQxlDiVTckFphqlHVppNj4C3551N9h
	 ZyvdHg1HWdkww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2D8C5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170974969637.3196.2332506738557042091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4154ae7f54a995a90d2d5d22f907a0ed66a8cf4a8c1cbd1c6f1f2e50e43ecf30
Date: Wed, 06 Mar 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709749696
