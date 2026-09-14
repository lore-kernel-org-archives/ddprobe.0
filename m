Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F9C39E9AC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789426834; cv=none; b=N/onFisJ8tCrqxAj1m7mWb40rPzTSefVenW3RtoangNUE+aMf+NZXiqiVrjJc7ucOOYCxdw384qFS0Hz+Ny8HvqMIh2Y1PoqMOYVuOKUx6y6urKla1TPM1ZR3xOOWS+89yzTsJqQIIBPkVpMt24grabmXho9cd2rloxiCnoADMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789426834; c=relaxed/simple;
	bh=N4+uYJG4RmtReDyv+sZA/Z52ec2axcCriZdzX81SOHw=;
	h=To:Subject:From:Message-Id:Date; b=hqtED+tcH9G06GVBpr5WEGU8uNZqOKQUzEN5aE/PG/g/6EInKvrY2CP4EPYVvAot/oG3Ib51GF7Yp2oMVO3IapakAtKY6qpHZtntkCZrvXCqfGSLd5VoaNIpwY9qbQz921QzjSJFVQYn/HYYZr3dEP1OlYCq06NrRiP/MBV9MPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHTOWq+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHTOWq+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAEDC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789426833;
	bh=N4+uYJG4RmtReDyv+sZA/Z52ec2axcCriZdzX81SOHw=;
	h=To:Subject:From:Date:From;
	b=pHTOWq+zo4cs8Et3PR9tvz/0POYxEhkM4r6+Co/bplRDPkhFMeJTAze2sTMQQpwKt
	 WG8FpDdusclIYO/dB89/Qtygwi4YYg08r7yz/8Mq4Aq92sKts9HRm8ZkBfGOVqkLBZ
	 LBgWqvvYM9F+fkhcJozh2v6ZBHN1Rbtua6rmbid32P1y+BJ0OwCIZ7MJLpsUThx081
	 7YpqupD9mjZhd6F1RKahB/r/kENaqhRomZbdT3I1x/LtFn12PiH71RS/eRwpGPOVUR
	 lu2QB18M5cr9yOsqA/1C5HApsQ1Krh9fAT9J5bVwbvkEgCvvnArEIY5QknSJldm00u
	 RjB9f3xw4pjHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F1CC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942683372.15588.11295908422125598709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52456726a1ad5f99f68523e5e1f437c8dfc8813253db834ef5a3d50f001b040f
Date: Mon, 14 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789426833
