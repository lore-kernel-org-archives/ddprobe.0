Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321141714B7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736696754; cv=none; b=N7pJ7inWK5wffwKfNvKJQDU8a6ZXc25uB+0oGtNa3wQ4MSXPCH7G1iZZYE/MFjJN0P0X1IRxSy0pbZsw7EX2M3p0cUzLQXwC2orx3l+igN+FZBxwHyuQDxtW7s3vL46DP0LPj5EdaDT/Vo91Ts4gQgw+Aj5aWTCc9WfNe7sDajo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736696754; c=relaxed/simple;
	bh=s0cHLd/5yyaMfi6KycPcSEOayg/pQ3DEiV+tgEIiZLY=;
	h=To:Subject:From:Message-Id:Date; b=UtsClrhRZFX6m2HLC1vT2mFkVPBFyufnTcvLSfnIHWK1j4aCN+rW/jDr5shLJzKB+dtmfd4epNDLf2uKL8tpKkgv1nsOBGzsHgz1VRNhVwX7xTRJ1x/kvA7svDw30rRDZC+dHswcBK2S0Lo6zdBOJPh4eMxACTjOk0AGEc/lmME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cilGvggQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cilGvggQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD508C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736696753;
	bh=s0cHLd/5yyaMfi6KycPcSEOayg/pQ3DEiV+tgEIiZLY=;
	h=To:Subject:From:Date:From;
	b=cilGvggQ+XznVIH+/deZbeUAxyMFHnEY7nogfAcBrK2O5f3xqY2bTI6ITqfa3Tzj2
	 zJvvSDDRP6pAFaK4nj/yzTaIAIJEd/vbLzlYvMGmr7ZxYO0AAvQ5Ut6KjxEne3Uou3
	 R+yShovxrUIURzMCg6fKPif3YJ+cZRGfAMgCgRbDbtFWgtCGrxG0g2P9VncGUdUxAV
	 4VEovFT/7ksAmGfUZVx0aHNqMicrlb6uZyXVgNbDkN3wc4WodhCNz5fSCBguEJX0qe
	 1Q/H3+DJBnAKRrHAZCpBJnspr453HgOjKWyEhoWpVBJxtQ1hx1+yHa4tuFQU44PQzv
	 oHYYNrhd5SQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F7FE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669675359.6824.8480911233409929350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05da84bfe56b21f440d5ad37a5b642e12e89e46c6a6af45a17cd5d2800c0d3d6
Date: Sun, 12 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736696753
