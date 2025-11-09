Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CF42FF164
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699194; cv=none; b=P4SDUdT3QW/Hgg/9MPeHTfyZXvdIHvNsTp5lKj+Ipwm3fyIYOEVEEgcAh5CLF3izTR4oFPLbA4LRNRUXt+4+hTkHwfow1z+YSFMHXOvasJhIx5w+zbSSWnYiN6Y/b7X7jKmWCg2whnNJGHlmADcyAXCN6bVEZP1PMQjr0z/YCYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699194; c=relaxed/simple;
	bh=9z4RZyhEwfWAImIS4i9sHCvyYA4cdCpmgTNgYAyZpYs=;
	h=To:Subject:From:Message-Id:Date; b=HC+uGZXeV53AnqxO7j68YVbfyUIIZhnqigai5fcNunOepQ66+rMtcQlq7gLFCIofTn9KkO8RqNCkBZrW5ruEJvZPCOgOI7mx1M93jtIFcgv/qCEqsjyS+KnxHXSvbxZBe4oNa/lNhTUlYs+WqPqNf1eKRJ+Qyp7vBZuD23tn3Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcY004yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcY004yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE5C2BCB6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762699193;
	bh=9z4RZyhEwfWAImIS4i9sHCvyYA4cdCpmgTNgYAyZpYs=;
	h=To:Subject:From:Date:From;
	b=RcY004yDpYO/KD5yTIRgz1ng6Er5pdr8ydLshfx4J69Ytq+hbExrco5dO4UJ2utde
	 NL9/kSqcSh1sF306KGYzCmuzplkkDf5oli6G4xZqM/i2WkHsEY88mwMs8q+dhXDt5Q
	 urPS0gKHhzcSEyeQ6GuYbIMOLYvJT0YuVU1jd9PTu3xw+5An+1bKpzu6gzwuuyKiW7
	 A6ZEbnpW++dmeT2WeAofxOrPcdcJ11ZDDszwL1SIrZogdxtcnOAKDWJaGw6DQP5ccn
	 D/UPuLNLhjDAPFusU7hd/0943QuptASYzS85XEDQ+B8NkhyFP4sQ0r+835nEJCgW0p
	 78t4lIdgQL10w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F521CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269919357.18410.2912935941876427416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd0461ac26d798f681cc71c48be4f0089dd98b6ca1d731a89cd364cf476d757
Date: Sun, 09 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762699193
