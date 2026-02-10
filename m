Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A71DFD8B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770692634; cv=none; b=eKprUYX9entApAVX2Okczt33BuMfAS54BL0QnLjMZGmx9DPo2xABe5Ceh3IHlEUWnQ9OwV+qpfSRk0Rz9DJggJfLHMx+I13hedwk6ZIyYUqNftYYpht67lpUUi/NfvLKblzUcHrlIMtL97AiS6pGVOOnHxatmOO3k5hWpRlUILk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770692634; c=relaxed/simple;
	bh=hpXsgHwLQUnfIptccxrSf1MdJYdDDpo9MH5EHk5ptCc=;
	h=To:Subject:From:Message-Id:Date; b=YVLsjyGPV/EHcD7dm3k8IEMT9QwxpB4hga5qAd4NVA0xLbjPzR3ZlZWSzoYxIoeWXjQRWETRU7goVRli0K2Pxs8UKZxFBStnRrFfGrC+QAfrz7g4eU9MJpUR/H5xmb7brOmL2+n7UWfbIf31jv/VBVv5Ic1pwqg/iURCYi9JeSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXE51P6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXE51P6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8329C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770692633;
	bh=hpXsgHwLQUnfIptccxrSf1MdJYdDDpo9MH5EHk5ptCc=;
	h=To:Subject:From:Date:From;
	b=ZXE51P6B64QGwwqtL0VklSAucEi7onZGaCXi1f70GTdwJhhfzNhC9K75JkhWXXeoV
	 FH/I/EESeFoPysmWq/oFlST+POX3sv497XzcMWGXQSPd1zQ5qhs9d/DH9H21oBmqq3
	 rMRrag7ZONmFtGPmuVDVyD9qT26wKTfovXcU4yWuUG8yCViUFm0+AIx/e6ot3Wmuli
	 6JxiJOZ2CodaSZ3HLnTZp8JeherwQVzFbsjSy6+m06Ii73CdnoXti5II3GTmSrNGNM
	 MAngqNdWea47Bq5B0m0/irTaG8nCRzHPNcL3AWSYHhJQPBkxEGsJph8IINxcZCbl73
	 Vn3F918rxQ1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E54E94625
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069263365.15070.12059050407323543203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb1e687695e55adf5a70ac529f50a94665be5f13ea4aadaea4d94efd94d7a55
Date: Tue, 10 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770692633
