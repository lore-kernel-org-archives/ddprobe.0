Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAE22D9481
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777282654; cv=none; b=hWBy676MLGe+Ldl/Ydgfhpfzso6posV4S3T9pK/AVR1dNMZx+ZrSc4+vohR+QwrxddWT0E0ethcZOR+BDiENSHXtKS5wX8RvSR8GpE2WTUuhbfv0xVEoAHMXBPGoW3KtrjQOw/77GP8t6k/41C7d64fpFF8tBizdmfUquz+DyaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777282654; c=relaxed/simple;
	bh=/dcjRFP5N21p+meLhrfJKRjgsQMT/evurmyXgSpt8yU=;
	h=To:Subject:From:Message-Id:Date; b=kqFrHl7gO4R0ioWohqjBcLAplPqxqTWrtHmQzbeLB4d3JELkHLDlRJnGzF1tmCpOmf7fkBiNRrR44NiXMLFrO9RxS3F5p2lDIq1lYK80sfNizJxy+XQ69Ska3FV9UEnO+Jp47opMBxQAeVI7R1yOl8c0gu0ix7zpm7KcNszKp6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbpugX3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbpugX3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAD9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777282653;
	bh=/dcjRFP5N21p+meLhrfJKRjgsQMT/evurmyXgSpt8yU=;
	h=To:Subject:From:Date:From;
	b=KbpugX3gq6Qgc+SnHmHjFeV//MKfSnqsznFjGhl0e4E9BgkZcbY3o1OYs6vI13+dS
	 XeUhTneE4RbfmRQ3mLeBwAWidcp3mtbCUcO7wJQe7BVTa6Sorp1CV6M1dLL6w6yyWZ
	 qvYfdI8uSiUnUnWCU+79Qh3uhPnGCn1SCNfIGcKJ4gEhlkTPDr2H0TXzt8QfAngjBJ
	 4pRj032zy7AmR1HNZp/MotTP92Xadrok1u9fi5LfvMPrn456pCpu5V9vX17hkIK6Pt
	 /INB5HJwFhTHelPi/+Wb9cZ1bqka2u4mdWE5w7mIawkZ0ZXBTc0jumuRdef633XtNy
	 oawIj83/a8JaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD623FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728265370.22788.16554497888904529760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb27dd4616dac9d8597f2293f5e0d9f80bf748efcc816249afa1e0ebb7498cf
Date: Mon, 27 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777282653
