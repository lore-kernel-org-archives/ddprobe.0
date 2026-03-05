Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808E37AA84
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772704494; cv=none; b=ID8J2Q/oxBEDSatV8vk/ZeuwMLPPv9NExKTtQxBceAzKgaycKq5K3DCAVd2Mpzx5Gsfg29QFOOO2JCNAxjy0TATegKU+20eAwmx2tPxaxY6JyKpEtnmMAhaH+Yu+QNZUnl3Pzua+asHzn160UcrP9JzPBSJqxbSLobydWIJpnyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772704494; c=relaxed/simple;
	bh=k2WTAu9aSJP5c+W+9LDpsqj3KDeuNDzqviXpik1L4uw=;
	h=To:Subject:From:Message-Id:Date; b=UNcwmtKxOhURrBLoeE26oEy0VHaao66rpwLLTo3QCYrCKoJNlgORCvxKgrNluVUpt4zJQec2XG25pWKOIgreDuhNu9d7t5DGA6mla8U5/dOhnK03p80kbVB2cYcN3AN9ghoGeIJbM7tdGpHEPdmd1+QpnTJNtSJT4UCtaLooT6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfqNmoTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfqNmoTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9360C2BCAF
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772704493;
	bh=k2WTAu9aSJP5c+W+9LDpsqj3KDeuNDzqviXpik1L4uw=;
	h=To:Subject:From:Date:From;
	b=nfqNmoTb2RQWVx+PspRJoJDcgr/BM5ZoO1eaNCBIUmG1qwEapCEV/W4GC1WfXsoGE
	 W0Bjh303q5iGvojkBvaPXFnKBn+OcrrtJUwAOOB6qU/61PoLdNqX1T9efjgcAiyd7z
	 tTuP1Z82mmBApwaTWHfTq6F1RncZ5qB3xFL0Oh6NM2yBoNJTh1B/y1CRqkQcIcqXTP
	 AP7nxb1B2xs+6FbHPavNbx8nJSmdIgeOFD8HSRBv8hVCSdZniwvXyHX0LajVY82Oxu
	 osxNbufdGSEYyJHNrZdYeq/s8dXnmOWH7qMGfSfEVUw1ndsJ8IcWFzEw+OBucVia9v
	 UPubRE5SgF6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989CDF30922
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270449361.10902.424071734046115560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb5d56c3992a5543b8d449a9160301721f99e491351edc25a2ba51f375990d6
Date: Thu, 05 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772704493
