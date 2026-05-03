Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1923C399359
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777838254; cv=none; b=sOJezS7yRx09X8NIDZAgiedaSmEM7CeNHIpJV7tqEjHJjRKiZkRfcEy3USxclKpMMU9dBxT6MsJ5h/NP+zUxF2xtdYutrIOaUOR/dqO4YutPGy5lCDQOWbdc+kTE8w0R3rDoWUMHSAV5pb9ILAS1mtFEHVLJ251NmW/zOpBqc3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777838254; c=relaxed/simple;
	bh=yc0pTOBWwFPnYxEDjfehB3AAoAbL5+pPucbPDzKZ5Rk=;
	h=To:Subject:From:Message-Id:Date; b=WmDZjXXEFDX93va0hZc/9E6WAwr3lW18Qnjs7/1ynhYfzwtmTSTaHffU401rQfmo65stZdy8YuAQSodPyrkMHZEgtQlpWrKF3JAmjAsoTNS+yoGqDd/fQiyuPri8xQu78Xi8iUUlDrdBKS6MO2n8+/7lWa3AwodsJytMbRUAm7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUF5uq9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUF5uq9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7101C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777838253;
	bh=yc0pTOBWwFPnYxEDjfehB3AAoAbL5+pPucbPDzKZ5Rk=;
	h=To:Subject:From:Date:From;
	b=iUF5uq9DnDsMTcndGViWmKMtvw8VSdBPtBTWrxNH9+8UzIvZA8xZgjwvXxHLOATti
	 Pm5E9o7buPZW6HbCEHlQcchAw8A+g70J+aJDJZB0Cg4gPsY9NGkGReImAgmlhAOhO0
	 lr4xsXI/QNnnkjdtQDPbvuSt6eWsOU6+rnvkJKPSXJV0FmpNco4icfVt4RIBxPpwlo
	 Sa4DeykU4uU0inUcmeRAVzku1BGNevMOeXuIj9/+zIhW+f5vvxpgPEV0LYd/LkcfqP
	 HV3KGRgqgywtHSXCSFDHXc0t83py4lEfWDlf74WvS3docvjZNjBdbkbCAC8Gfqdc9G
	 sNAdXA3CCWYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958ECD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783825368.24434.2911182937373294364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc55795841910be1d566691de37b5ef80dc1fa00d45d8bdd1a83661282242f51
Date: Sun, 03 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777838253
