Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1A930F7FA
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774979094; cv=none; b=fxv9ElymOG7SRfvcuANRPNM7KXnjAPO6acNeHqWPS3FbmN0kSpo86f59wNCeivISxd0LRPpDyhWr0vStRZwnhhULNjKq3Z3Lq3DumQLLEFdYA+6HNqgkLOMvUbq4XLb4bjjP2REKq2Urd52gT9SPXRwdlsIRyp2kwZkzhyPKkJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774979094; c=relaxed/simple;
	bh=DWiwHwx4d9vDlSqgtFGFz2bb+dvS/ByCc/099svfuNU=;
	h=To:Subject:From:Message-Id:Date; b=aStUYV+zV3kUxgLXKdA6nDl76KM08kB95aHqWL3fS8jP33GTsYSQR+UdE992W+w4WWKFlP+55uv9akJ53L0sXshyzAGDEHxOm2PHm1LhRHKpnzzSA704nIYmNXakoe1VaWrZ016H4Ls1/LPhs3cA2uX7W0sX+ysvr27CLlzUGJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEPLrT/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEPLrT/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D88C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774979093;
	bh=DWiwHwx4d9vDlSqgtFGFz2bb+dvS/ByCc/099svfuNU=;
	h=To:Subject:From:Date:From;
	b=sEPLrT/bZtxOB0Bk0cSC9MXT/kg/nAKIkdcYJh37XMRBUSAKl7l0ZeIqO5nGY4Ndu
	 pQRHFKGoy9rqaFhpG6MkjcBP1jss3mjmii3e9DmgACQyX7H3w6sdo+2cvXWTIbTbJx
	 1aENhvmNW3acZCDArCOAFxlEmJiKlhgr4DDA5DP6kLxFlArAKPD8ISnhPvD5j5SVK1
	 M4NwolWoYlFo9kUhlOuU/BS3GI3OayOXZUJLTx5TQOLfUvZ4cOB2Vlf82Tz7BBcKfO
	 umigNOPxt537ey1D/+wKvbQyWbh2IJ4babKGvg0tWmL39oyCOULc/K0uHzTKNqoBXV
	 RXGvBRuQqA7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458010F92E3
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497909359.853.6640323607784151508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7cb9c2d27c2cab68584e6766e17c54eb961890ab1a752c449326e6736aabcd
Date: Tue, 31 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774979093
