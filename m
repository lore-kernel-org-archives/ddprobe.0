Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112AE3033E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771413294; cv=none; b=iy1ttvqLhsg6Mf6j4Xkh0lcdFMH2pjiZ3g/hm+CU5gC6msGst4Nc7WBykBYwF3OzbTII870wvCJkIEIaKyOu1IrPbXfPPJPI637N6CKuNyhkGBv0Mf+vw/+KIzWS6Z9gZ3WM2kyDNF/QBndP24jGbRWDgmPqnVWQ0XeON4RQfeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771413294; c=relaxed/simple;
	bh=ZVOw4j3z7zWZ5omcqLc5CK2HQppr3+Nn5hCv/iucPTQ=;
	h=To:Subject:From:Message-Id:Date; b=u3alw1+liyPWlhwRFno7wy1tepfq3TnDt3JDRenDUsYtm2ngJY2+xk/PdvuEE3TG00NJ1E6aiOGBEDBWea003mawvl1aqBo3YYzZRwzetcv9Wq7Depc87f2F6gO276c0GlxdxKwEnk7yY2lb40l9eQZBIAegF8+9YasKKqOOoBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP/Ba9sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP/Ba9sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4750C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771413293;
	bh=ZVOw4j3z7zWZ5omcqLc5CK2HQppr3+Nn5hCv/iucPTQ=;
	h=To:Subject:From:Date:From;
	b=MP/Ba9sL/54jIfEm5lnwqW3CVxwFy6tn6gHuDd6pvHCXchAPUw/KeIhweWdAvl/qw
	 /tj7u6T/ke1gekRgNWmD1dLajnOONi3PdMtN6i1sYvz/YJ+lhcRVa7OVEJbaB8yYh1
	 r7/iSrYWRMz0nxYAOU+EYKJXhRsxqs/HB0Brkup0MvYvJjl7D7onP5cVPgLbnTQ+Mn
	 vj0rMf0L2nx6DQP7lMCbsMxccGTuVuScj0RWMIBCHHtzkWfyzf8PxjQoEOGAZLSj0M
	 WF7G/On5p4L/rciSv0l3ejWXQAzjLcNMA7A9B4RqlSHsYLscrmhO1rkFT1hjoGORX/
	 ZQDGa7UNKzIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94260E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141329359.5335.909554088032573307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61dd83f8c7cbf0664c7eaea9af8b8c45dd14ef04aa65626ffc56ca2a80a96242
Date: Wed, 18 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771413293
