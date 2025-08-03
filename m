Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE0156C79
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754215794; cv=none; b=AgpxayKM/4M9mYhcYmS8Hn1+q2bgG+JLnrEwfLbnVNYh0clsgvZ5cyoR9C1ddeFwBVebrlGWLpnhuudci7zshqcwdRBxZF8TsNZNMjra9jWeYfMLZ8c1Nzh+9OKdEiqE+PlPsHTkokEQGk810riover2pnJVJfPEeDDAPGFEAn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754215794; c=relaxed/simple;
	bh=wxjKzqjJtDd7tvlHZIncBRr009a8AcDWvAInlneX1V8=;
	h=To:Subject:From:Message-Id:Date; b=CbaIZt2eoMEiPdmWRTZjMdI5T2ZBT0g+YA6Fffu9EWcC8fAHuhSIyi2tRkApAKp3yPftLfpyYIlm4FFx31MvO43kzKwPKtsr80fokeIlBhB2J9IwRH7Gs5baXbG6d0F2t+x7Y3rJKlFK2xCiAEWlwqfvVBRJFfDybqMr6UZFXGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWauvoo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWauvoo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D91C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754215793;
	bh=wxjKzqjJtDd7tvlHZIncBRr009a8AcDWvAInlneX1V8=;
	h=To:Subject:From:Date:From;
	b=TWauvoo51WqrdEiEcrpk3sTjuLB2+NCVLzNV28nv6CPGTdxeECbRASLn+57tWMIJg
	 PryxP7J2p4geHKtg3DJDs10XIvf4ZapCQvH+tKlWciSAGzNhPqSYGv14wZihNGIcDN
	 WcEA24mIKtxWMtTnV8cwzrRScaWiBzFbk3V3B1EjvW1/ICN3tddGgLLSSyZ1SV6e0C
	 9044QHxgaHEWqsKJ8qs9SbdWO9JK7pOrcbQvYaDCIFZzCnDsrVeIN+xtOnebBZJn/s
	 axGUu/y7sD233tRrchzytP0fWjIspUyAWm7zliKrgH8PrzYSfaEGziBqxp730IGOrg
	 f2e7DmeqhamhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356FC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421579358.16473.13579394595240049114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cfc1dbcee0ed90a7a01b126f773dae1010bd295dbd8a3c6b4916cd80ca44a6
Date: Sun, 03 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754215793
