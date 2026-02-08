Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178084086A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770593634; cv=none; b=b+Zf51EUsfo/fZ8b3/npbVggjUwNqTrlNBqmnnZy6N19nypt/zBhMoWAxGaNphZnNO5vvPAIjpoUq9VmkDkpet5uV7t/jRRGjLLywvXtg3xK7SVKKiOktn+TFDZilAg2SFYJ4/q1TriUxg3VsW4DfTBvGcpdYFxQ7zxthCJuutc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770593634; c=relaxed/simple;
	bh=eg8b4Cn1s19hl3lfrCCjZAwr0xjbSvJHT+8kTC5vBQ8=;
	h=To:Subject:From:Message-Id:Date; b=djRPTyshDKlg5e154Lebs3/32udNe6WqOjC8k9ka6o2ZjMTnperTlGt4fPSnB30XRVcU6Jb4xEgN3QWzpIiGTRZb13s3gh62bRkhlFYwlucKKYLVAdTxd0iB5wEzT9djysjQC3bQSjssfydogkb8aaE2DYAKJvZCqohEAGcCOpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOt4hPjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOt4hPjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770593633;
	bh=eg8b4Cn1s19hl3lfrCCjZAwr0xjbSvJHT+8kTC5vBQ8=;
	h=To:Subject:From:Date:From;
	b=mOt4hPjsuZ5x8ZlmPw1qmV+NL3Zf8sVmhehYaZAadHwAkuA1HJsaOTI0oT/bJPbN+
	 reqLpV1vQ7P8ETOihAhEUZyUq1xAluPeHEBPACmZsscPLNd8ydLdB16bWxD7Riicx6
	 tE26h1WiGMHFN/CKjzyEPUwyEtQsIJeBg4PFl/xcEZ757mZ1kKQppvEJ0KnHu2PfUN
	 rSGnlEY/u7XHGiB3IB6zIEbbWvDntgCB+jOxf5LPMD6im7+zE5cvWaSwwoRFWzmf1c
	 irvbUKa3VZFJjYvVb9/OzArZATke/WGsrc1UePDyDX049du3EyDJV7MYOmvFvYL731
	 8yOqO1r6eveNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99790EF06FA
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059363358.31934.16980478543299759036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0659534ebe39291f047f8b793e8e68d9582f8be9b85815e8503fc1e46e39721
Date: Sun, 08 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770593633
