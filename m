Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12420395AF2
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779783754; cv=none; b=jCYREEqvFUWYhLZk1GCMY+rZqoIbaUHg8G2Kkm2QI+dOUez37PHQPDfM7USr7HvgrsKcqAkzAebNuTDRKAHGxog8dXc9hNnCBLiGaD80O1cx+gbODX12ccrf4rFZjnUaX8TfFJ2DD4CYh1pdTrKsMxMPGUHurkDT+vKMg4/spk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779783754; c=relaxed/simple;
	bh=09U3kRRg1eTdV23V5vPWSxwe+ALc42iWpqb7DRwzHAk=;
	h=To:Subject:From:Message-Id:Date; b=a4q3AgKBE3uRn3lU/e/ZBSJQNTQk2FePKXoXLrPTBeRX0zFPj9e5zU75JzFxqLm8HX2pPiKclIS7GV+04GQSPkDMF17D3BFrs097afggidaCyXVdAMqlpLnLGkbhL8BDgu20UoJ8jtxYSmY2tMM/ap19Pup2pUzOK1Mjsfyj42M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4f46C1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4f46C1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7E0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779783753;
	bh=09U3kRRg1eTdV23V5vPWSxwe+ALc42iWpqb7DRwzHAk=;
	h=To:Subject:From:Date:From;
	b=C4f46C1wfrmNar/RtY888sjV7rjnosFGDylevJMAp11lavnL52Rh9te3jcggNWJLI
	 5WqqwgBEPVr/VCm23I+lJ4QIQf7BZ+zHQ0DcYlRPThSw5xrDQZKOGUtRW2i1Vvyqr+
	 rcEDLjGNjWIjrUa9RpbnYAbxLRi3CBErhBKnWpIsPjA/pvQoFkGmUBZdokZC+TZbMU
	 MWrDTkBeli7npq/ZIEHdDEKuykWi7DyHYV9pyccLZRWqVgJAOqlzXXDUx4nLFc8DTc
	 b9kPEop+n985UkQVgLjYjilqXaihQEL1+gIFjBMZcvXywVEtw1gPBMaxXdrOS7X2YG
	 cVmzkkSqoN90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E43CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978375368.4237.5500535792944793972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1508f969a31e4c3ebe3a784b9f00808ac847ca8ad15928742b46330a2234ab31
Date: Tue, 26 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779783753
