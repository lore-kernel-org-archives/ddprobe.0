Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF02D2E6106
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756213795; cv=none; b=a9XpqF9g+XywR8K0BzOoINFwanVXr3jBlcipVCl3S1SwB2WUhbvJEGHksjvUQIxTpgLDkVwDW+BjAB6JlpBeNVe+DfvFzPGQTjOT3kvjj5jgaO40zhXx7rnJNWk8lsNVKoFPIhdRidlMlP2KoG7R39SabZHH8SWJgxz/lBpzEvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756213795; c=relaxed/simple;
	bh=0R2sBxpzVGdETPmR6ubipTNFgysxNwcUthB1CPOxpCs=;
	h=To:Subject:From:Message-Id:Date; b=Rl8Tl7rPRBDv0lRYxXjfSssj9YasgeZKQH0cIBykKZOM5SHS7SSHIqdwvkUK6GNFNPUCMnyzNnohSqWTNZ7aKyKWWx3L+SBNr27AtMmSm1yyM8yenS6HcTfKybE21yAIKD55bReAtsxlp3QIrc7eczWFVa/kD4LHXNxli52Rugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/BaXoPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/BaXoPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC7C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756213793;
	bh=0R2sBxpzVGdETPmR6ubipTNFgysxNwcUthB1CPOxpCs=;
	h=To:Subject:From:Date:From;
	b=P/BaXoPuMfpppliex9MJbVsV7VYkZkhSqIP6vlFiSP4uNCRAB+kff8xdHTbbwS7Ml
	 SqdNmO+6jnTRtkCE4VLiGKlDLzyYIzS9KCEDc2KvSlvMel/0Dk+nfURNNpsYPQxzIE
	 7GpDS0U0xdcoklOf1GAM/0n/r6Mdr7wLk6c0Z60mGHIF60m64diSdcsUgaRtLAwUT6
	 ZtGZI9gVrqIvGFF1hYK+GVxWpWOK8j3YGrFBfsHA7g183bUF08DGEX1Z9FnzMqet19
	 d+DmDWFwakDTrIBvlFLn8apdGPFO8dMqnxl9BIiZ5lsGx/LVK+ifIx34ODmm2M5g/0
	 dvRJOwY68n1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23DCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621379357.27765.11149497045645871672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d05f0eb3247e92c73aecbcf91df3593c128b6d5e5b016d03e882f58a04cf7eb
Date: Tue, 26 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756213793
