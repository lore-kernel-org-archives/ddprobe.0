Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6615F14A0AB
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717520783; cv=none; b=eRKNDhd6fT3bfQftiAwHvjAxraNUiLS7Qb5ohUV8OAhIipRfMv9JEPhJzR3E8/bmeozOkx+FFl1hWqw64rSMOSCLzmfSptunD+9/PkJ+1d6/piIR2eeDm03Ek4a0ZuX8TmT7Ysuv5pxg2Bise30xT+m6c+9vLoQHL2tJIFBBZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717520783; c=relaxed/simple;
	bh=BXP6Ha6BMRx4x0FSq2Bv7LtbplRr6KkPN4x6/OMOVi0=;
	h=To:Subject:From:Message-Id:Date; b=hTG9RCNR+D0OQgwDbTAf4uP/AbsHHwrXMsuwLSxws8SLAUPEqwkDQI9faEptpSLJMaqVBnfCuHytNLRQA0JrryGQEM1aF9inFsLG8KArhGy13w20IR1gEI2XPF+iU3ojoTmvfFK8NbwnfIB9tSCgR9titMUlYFK0oJXTd1MXGA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE9eF7K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE9eF7K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCC6C4AF08
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717520783;
	bh=BXP6Ha6BMRx4x0FSq2Bv7LtbplRr6KkPN4x6/OMOVi0=;
	h=To:Subject:From:Date:From;
	b=EE9eF7K4u8s08a/ZqBeORoUen2Cm7fagdpPyzcmjqq5FGrNTHo0qQJdLaZSewfq9o
	 +MmjpL/JH58wSNH9fYBYc1MU7LHHf5gIirO9WG0fsdZyb6X/jIO2rGyxjYskIwAG4T
	 6t0H/LnCNNoieS17O4juDolre5x/9ouBBlTrapXF2hMHcAhn54uhYcQwFqhNH2bS8g
	 mD5Km1Jj6RLPp3eEK0bI6LZgoY/n0XEhIiN8X+AYxd5VNq9ZQNisATSzI8lFOLrPm/
	 reAODjJS5bG6PeU7tluzVd7F8SIdJP+qGciy9M1AVrrhOw6SoYMYtdAm8CgZwSFKZc
	 KJzlFKECkpiEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07B6C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752078283.3363.3317858622844436504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e753f3c8dbfd49c99c562f74c8da542971cadf6503d06e349ffba02d05515e1f
Date: Tue, 04 Jun 2024 17:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717520782
