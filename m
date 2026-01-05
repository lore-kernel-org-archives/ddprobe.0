Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF31130FF3B
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767630233; cv=none; b=NT2VVOyUj88c6j0rteNUK3QCkZy+J1eAHoTNdegeVG+cCrqTnVoJUiji8DE5tOQP9XltyzFKp6/pVDSVsUhE2GX20Km9Sb2nI66au0lSStcKX1+04fSLNn+jzW67U0byUUkxi5dysH8POVjTe/LXUPLvFd/NwcCenFi5qVDACrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767630233; c=relaxed/simple;
	bh=KQOInzO11bWLT+65r1xma/OHSEo0gydaTzmtPADwVRs=;
	h=To:Subject:From:Message-Id:Date; b=r8Vw9j8dParzY9JDB7uF2ubZQzeRZWNKEASifscVtaeEwgZesbeSoCPWTLeWS+BNt0+fG8wVkwhPy5V6z0VrY6NeP5BKQMDHZeVPlma6wibjz/AadmLxNBXY8yJTEZC1W8EqGnpYAyJBC0WFAqpDQBBXy0SYVcU1Z5wlLlSKIgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVTSMsKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVTSMsKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F253C19422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767630233;
	bh=KQOInzO11bWLT+65r1xma/OHSEo0gydaTzmtPADwVRs=;
	h=To:Subject:From:Date:From;
	b=MVTSMsKPaGLD6hHxmkAtm7Uxjnjd1Tppbhpz+L70idP318qEsjgF9qPzUdusLmIvV
	 qMsnDk3ftYZu1lNfpBya6MGb+VtLjdceG+YcrGoh5fACN2B8PL93LWpxgUbeG8pIOG
	 CGrV8dWHeQpZTRlh4QN7TwlVl3mconVweR+1tx2oD219qip7SrybQgsgDSzv9Mqwv7
	 ZQFLnH0r6i3Fzu5SgjGwpK64g0acwVsPzbOOSt0ssPrMSLUXm8g4LFvkNABWfuVpi0
	 lmJQmfSkrGjya6bB551rLaqwtaBh0L77km7pUKqDPdZDaC+s6v46Yj1HgMq9+wTwiW
	 vo7ZoqgEtMNgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CDC79FA3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763023357.23570.16131065582383594301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ebdb24c04fcbbed31cc84ac2a47ce97a3fdaace1d8c56c274680136950063a
Date: Mon, 05 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767630233
