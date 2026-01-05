Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D461335573
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614634; cv=none; b=qV+AlWiAMnQaj1quh86xNU6VQ4/nSKxblnWC0skdQHagI9VHU0jgCu89XNngIZ/0p2OgyHhj0HpRs/3cliWgF0HgroWEpXhnEDfL0Yukt+xRYkcPWFRZSUrJm+AQP5v5Q8GoJ/uL222vYUPmtdCIipMjKJbiKkJ7Jid4fB0n2XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614634; c=relaxed/simple;
	bh=yaZ30mus1IxFIP2kdRxvGHIVrGyqNq6LN8pBU+sXk1M=;
	h=To:Subject:From:Message-Id:Date; b=bDK2YPql5j+h0RcGf8M9/vFlGPBFf46HtJIQcWrsdIpbTeUFSSdxKh2CGr1cJ+U52tUL6Yt1e2ArjmCQP09c6kWfSCuZlci0McVKYehIn/O0FIRDnKpbC2eykoJLxY5o/Dc2AkgE0uxFIsSpfYIjiXLSPQsTw3582+Z+Hd8qZag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm04dfz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm04dfz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC54DC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767614633;
	bh=yaZ30mus1IxFIP2kdRxvGHIVrGyqNq6LN8pBU+sXk1M=;
	h=To:Subject:From:Date:From;
	b=Vm04dfz/nXYs/KVM97or0btzCwyQY23e2XB1x22zOCX1zxbbw+GvidTTz21/rB9cS
	 rbHH4oEwD1YcV1ltkpbJGFMLHiQJfpB1Bv45MiFrtOa2+jvlsWpiFU0yIx75JIB8bE
	 rlZQGto0ujVD0zvoMPOdfc1NmyGkK8/FNy/lXG+1Lo1JumipeJJqDQnZLcd7pp7QeL
	 qxt9+Mmy9VwcbM/TIqw0H+BP+5VYNuC+LTmVH4ib+zw0hSoHxHwSAu1OI/dlfv+wef
	 sZ+qKqJuxIMYbMGsjsb9g+nOnFL/8qznuq4WW05g88qvns3tVEMlbQ8VytKKJDHwUU
	 s7z43HFMttH8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6BCC79F81
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761463363.26923.3258313893835568760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3862aa7496097208669103d6770ef64578c3a13ccf133d5602def0239945b9
Date: Mon, 05 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767614633
