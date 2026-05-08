Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164C43290C3
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778238454; cv=none; b=mz5hLJ15L/+EqOJgH1AMb0zMs+T0lmhWTdV7iy5siApCZuR0YMQD8A/TIpKVP4MxOA4q02ptGlw0IWCmuD7qe69OgseH4CZ8KtPRBQ/XBGv9RM8GiclS49u8yJ2TAr1fjG8Btq3lYUeTIKeSpOqZqw+e70g25o/iQrxFEPR8hH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778238454; c=relaxed/simple;
	bh=mLJ0WW31q7DyZts5VTrU6kfvjMd7veDCPXrKAtb4boo=;
	h=To:Subject:From:Message-Id:Date; b=n3jkif6NcCCRlfFHXZAVAQxbSbYS6zhzdvZZF6hqCZ2o6GQvuokDFeJexRoDt6K0/SkWPviPYUD2nSQ7GQIhDfg8BB776+rSoALt/bjRt7ctXqtppllOdbBGMFMi9KKibFXdD2PAQbOId6hifUq/aLhctAu1XAsRqTA+9vlfnKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crerClFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crerClFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFCCC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778238453;
	bh=mLJ0WW31q7DyZts5VTrU6kfvjMd7veDCPXrKAtb4boo=;
	h=To:Subject:From:Date:From;
	b=crerClFMrNWs4J/RoB4A/AttXYDeb8PyMBQpnUdvfYuSnRpmqW5h4MCWEyjryf8KS
	 55A0Mkq3SEDnnh0+9FsEzP+AMyP6CPE/dyOI09SV2UOdpKcHfeAU2fyFeqr4rV9GYv
	 bxMdyydBrTMjtgJHHblBEPjhWyfzfbkkozcn+uYz4AGYful9yXKqDVM36BVUIK0uAC
	 UyIdP70C6A3lrwJBrCf08z0thOe85LLjqniJ2zqRJQrk1fpaMjs1NQTxacTLMdtKca
	 pSC1f48eqBgEc1e1KHFF8UFBKvQkzwBKGdIEbdbX7zzuYsAX+z01kDfbVDwEwxuxZz
	 yAqoUi7Ny8rNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9DCD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823845368.6771.4770863364264815045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24108c0b4d2bd975aa6c39460c8e6e6052adc620d54df43bd6206c9d806c2d5
Date: Fri, 08 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778238453
