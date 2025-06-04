Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653D2C327E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749039594; cv=none; b=BoNGMCXWttxHulQoHNt2wU2xeaUTjCoSN0YX5vDAFpHqLgTM3h3nsXZ+3DoA6ziq3cGF7ATvhN2bBqOgR8W/HJUsJBrlu7lda7Q7L58u5GqRNe6ZFHeL+Sn8eRcsBoPBARyV0u/eLRWQRbaYMpiKkzHZqMyINVMWzP60SUFb1VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749039594; c=relaxed/simple;
	bh=/zapSTSXP8UjX4ZlNhsn41qG3+CtOtRPmaSEJyaTyCA=;
	h=To:Subject:From:Message-Id:Date; b=d3PGdpq2T/xn6CcrhqUrRxbsQMM+OD82jbtknbjBQ7+oRvaHL3xy5ivCzv3ObSVgGKqYd+jJgoydIv2ErtBHx4an6ydRF++sXGp6X59285rH2VBtva0uIMvZkNUYWFGZVLCTYWTSWsPJyX/fJoMGIQMlZXnhwLUcarNxQ2TSXrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQy9HFjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQy9HFjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3700C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749039593;
	bh=/zapSTSXP8UjX4ZlNhsn41qG3+CtOtRPmaSEJyaTyCA=;
	h=To:Subject:From:Date:From;
	b=GQy9HFjFkixqxxpf+KdeT3qE2pSo/rskNWR9PVj7ppWrFT5fJZ3aWBSLFABDAn/fp
	 dOOCLDIK+ZZaEB1Y03u6lL5bEFQb8bw2r+699qN5+g+vE3yo8pMgoB8XG8Ykw04HLf
	 4Q+a5vb4vPRXFS3/nih3WxLAkvAG9UW+9vQhqJGQfVRKAzeXEQYvpPEltKa+ddUJGW
	 WdUE+BCnvwjQ7keSPTcjNbtrGAgOJQ0sPZYZU7pGibtAwDhHiA4nTy+7qnllmfleZ6
	 /Rxn8Ve+0UMqPlOzAP99MHWyX/Ur9fbbkewypdDc/wYTwK82Q2ZUDTLEddEepjOC/2
	 rfzbq4z0CKqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FACC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903959358.19892.6736373319727372841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e614912a6bdbed8cc48e1625477f9659a9fa14f67160db521e4d7ebbed6967b2
Date: Wed, 04 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749039593
