Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9930D407
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783424914; cv=none; b=MxR3rF7v7s1Ro9lylGhPOBunNeFJR2eXzBxes3leI+hTKeNQ+zSOH46db/Aq/xUOlf+DsTdyVJD7fvBQoCaKouBEUNNb3SgWpCAloaNHE2RwoqIgY8mN2U/N3hZy1BsQXZ7rc1z2RBLZs7zMEl20kGLpLIGcAKT3id73Oz/JlC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783424914; c=relaxed/simple;
	bh=C9w+zJuJMKM2wbeHdLio9i/CY+TnrDuUNQkPYjoE/FE=;
	h=To:Subject:From:Message-Id:Date; b=R/Ydh4pEA0D6ugfuYIhJ5vdnk4kckJFJ5KBr/eau8BqUr/SKtKz4cPmT5LFtctS1W6r8ik0YoxekJx1NbeKPqqBvZVmMX0Mudg2PLCtXRQ1LH5BGriDoHaPXBYe3oJMRw1UJLzFDmUrIwFBvdrUjVESD7j2/yyoz0dS3NUe98+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byJtgA9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byJtgA9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA828C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783424913;
	bh=C9w+zJuJMKM2wbeHdLio9i/CY+TnrDuUNQkPYjoE/FE=;
	h=To:Subject:From:Date:From;
	b=byJtgA9WN2oh+FWZHjyw4/M7CPVFydIEu4QAk1Di2Vnt84g0XzTR8ODXconRglfCo
	 UAi7A4h8IQ4wBzuq7YEkee+VtOOziz+kkZt84sKvd7Qyo6S3tr+N+YDZutTfJGTRhw
	 2xw2jtj4Rm/wILMsnSITpQL3d+RenNOkCP534HKs8M9T7gZ36xyruPiiRLDdy2vZrs
	 AXj2GoDMjRiWhWNaJRWi6fS7u7T/b8+LyQ6XskfeYj+m3XwkounfSPpoq/lnsF5OLq
	 VxfCcHDJ2QjoJ+Fe9BMGzAEurtNgRWmEc8gv/lkRcmTI7RV1h3pe74NV4GnagFKaau
	 g3s51iZedEH+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E11C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342491368.30731.12035701215624958862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc729e2c85e7d4d3d1d862cf69b4d0bad28b1853653137d9243fca4773ca349c
Date: Tue, 07 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783424913
