Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33225A62C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744196994; cv=none; b=EHDxHkSim/XzhCcNHZUJ0X5YYwykrR1OytWXdcPveyWWMw54+U3SOeMgN1YHhxUcZwcMEuzY4LeKi0FZYyB/eGVmCi46U689ZOLmvOqLaN9mQZZefE/elVWW+TOQ0q5IevoXvT/Lk7RIeL3DTZS1un3Slibqws5e+RRtHdoukBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744196994; c=relaxed/simple;
	bh=DO5rQ1xbMQzWd/ePoyBBQFTEp+HVb3NOn5ubMGkEj8g=;
	h=To:Subject:From:Message-Id:Date; b=dlhZBcdFZsS/0l/dGpQTQBjehReIjulevCyAPqaMwP+MrnsSgwHizx6xZgnEAAjwUyVLmjPtYZifZ1bRnVBnpUwCXxp6V1HAVfXpUG2ygpRtdmZJU9K/cLOSx+yghDsjw6m2gNrwRbvVWIiquBWiyRA4d09m8W2x0eXzz29R3Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ5BAglh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ5BAglh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8900C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744196993;
	bh=DO5rQ1xbMQzWd/ePoyBBQFTEp+HVb3NOn5ubMGkEj8g=;
	h=To:Subject:From:Date:From;
	b=VQ5BAglhtCtfNtkbtYEVR0earz640cStwGGN+lvQYpIthYgaG01v0shl4UGE6sGda
	 CntV5raIVpqhFGdXprCUlblmtucjlHAPPLIiLnMZLWxsbgpEYGPnQsUfjCl9vVzIC9
	 m8AL7YB5Zt9hPUqpg27F8Oir44ftG6eJLzQ9HEQ5Sx5Kbq+g7+J/aSnKSPw2Rw0g6/
	 /9r7EdETjJubuQkXWSG7IeoIEwMKL0bZD66qC6MU4KGc9mLFkqLMODSYeO/nn8BJkf
	 /rtA6uG6DewsjfNf8DfpuPqkIvSK4O7F+pukxYqtC6mjbXtfqNPZFpbBe1Pono9mtT
	 EEPuxeWnMdseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390EC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419699359.904.10574096330756412210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2c60e31bb1563f02314063b498fcf1a91420cdbfa5568640fd665c5c8f1761
Date: Wed, 09 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744196993
