Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CB611712
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750351194; cv=none; b=lans4/Btx7dJtChqkEO0RoiaakOFfNql/CR1UyNKYOui5+hedav5ECygSEtUBrpXY9sZ21baRnfrRarzMbl+kGGwdK4z+A4SRPiLBn5B2ecjri1XEpbVmRWugw4/2NLZqFOMl+m9w/9i9lV7DdLT2hnyNi/aGjrckG9s1WT1OWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750351194; c=relaxed/simple;
	bh=YrpFURSPbUE12gVOkL6EXWRchAMh09tjV5Pt2jhlfMU=;
	h=To:Subject:From:Message-Id:Date; b=arvcVVCm8pk8qyMNtyw5Q06vsglxCHtSehUW0pL9blYr7x1CHqCMmDQaFCW2CYbocUk3vKEEA2NIHjRGR8bMghupu/8NZRI3NK/6U22fOymc06mNaDqA23rYAKS2prEuGWD6Pr63YemA9WVFnX5UFvmjlTyKFynFYjdAH0kkpGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4MKjZ8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4MKjZ8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D32C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750351193;
	bh=YrpFURSPbUE12gVOkL6EXWRchAMh09tjV5Pt2jhlfMU=;
	h=To:Subject:From:Date:From;
	b=d4MKjZ8KWAk8wkqrR/xIK+Ibu8mflZlLy1Z+tY4+GsPSwvphJ8nDUzhm4Hkr0bfaG
	 wTEy3UFVO5lrY4FY6NjspS8ifTsg+hEV9wNuOB3TWfPPelgzurBwNtYONUFxo4OXZO
	 aTdbN4IllSWquZhHQClgXu658Z0oIyklnRDvWiNc9jhPrmH83q4p4oTPuM26Iw67yC
	 iZimuCBV5H1g1fwtZNWJE0tJ2t2OsvwBcrBamweA6nidWzJtxycybOP6ZrcnqcPCIr
	 kQFIAfN62Fc5USQqGLn5Mt+SLYRgFdVCK9wfxZU61HhjLB74KdCA1M5l0jzJ0jR6Jt
	 DP3Uz9vN5IkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FDC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035119357.13913.18408378792120596173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c7fa11b777d29621510014655f984b5ab7826173023c56fb9ffcc4b0aaa3c9
Date: Thu, 19 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750351193
