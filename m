Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D5719A288
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783258114; cv=none; b=eSr596u/M0iet+INBVsU8yVVJng18kF/2TrkylFzPvavMuy+uDu8LZ5ca/uiTOvbzjKdPowlA1PK/xqRvd6L5yZZVZRGmyxU2oJ1n9iBmzvpU3zOA7bLm4mPNrT3xqFyGA8aA6OchFtV1CzS32MzOOKiPTiro1CdOPv7d87aXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783258114; c=relaxed/simple;
	bh=m8EPZKboyO20wpfCskLGfvfjimg0gsxkW+ey/i8wadA=;
	h=To:Subject:From:Message-Id:Date; b=kuBJURkyNtV89a71IoVz1lr4NVqQBB7Tzz/sr60k0P6rlTUuBrie8bmdJgmFXrv5dxshh5XMqBcSXPNzW0fUsC1VN2yWW4JqXddFAwKMu8kD4bjh4o7Y41P9HgnB71ekwvcAO8qKkzJ9uOFr+lBm7eK5pPakANQ4U8RPedSHH/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIM5JEsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIM5JEsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D012AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783258113;
	bh=m8EPZKboyO20wpfCskLGfvfjimg0gsxkW+ey/i8wadA=;
	h=To:Subject:From:Date:From;
	b=SIM5JEsyEOo5Ct9nvDjKO9JKIPuz403SN+q+Fkop9gO8j3z3crAxNZ5IUd+FyiXw7
	 ytRrMexMYFr9QSp5b6pSAagoocKRd91f1WwI64XCl4DYEsma5miAkDiEy/hePj4B0p
	 vxjRYRE7amARphBBZDa3/0lyliXg37ykP2Is/Ap9Plz33xXLEIBLyuybYVpLFM3CPe
	 cHNRd+RKs8NgPXYMKScuu2L1K2gDhWx3f9ElL+emBFBBSBLDRFUmvfgW/ZpHVX3y5W
	 MBi6VFEsf8FBHA+UtbvmUEVrOBgCN7fJKpuXAtN2iAmMlafAKQR17qlS8y3sU40iEs
	 LPOE2WRpFqFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50FC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325811368.6923.16423145863125976969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e4e6c70ad489b999bbf0ec5d40411404ebb67f860280b4c54a39562c8bbf4e
Date: Sun, 05 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783258113
