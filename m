Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E7344E65F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790591434; cv=none; b=RnICx9yWfV/rWp9aTj4EtvDiEd5CKs5jZHiMPdCIK3VdIbqZngjVyIQuxOwXWC1Ogm7XC1jtmTTlolQB5y69iA+4af9Pu0UymeKFJLWMg4Zn35Cd7WhWX3EwxIwwz6cQylyKvWRaRq5c8Mbzc79X08FewT/hHYr5caMbg6b2eJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790591434; c=relaxed/simple;
	bh=/tje7/0lWVSOkl+Ii+r0uTf4xUNW7MD0fq/mU4nSceE=;
	h=To:Subject:From:Message-Id:Date; b=C+jUPiDVEndsf5FuA7Wd3cYBVGrTbzF0fC86rOHvS5HEfwJyHfeEGKvLg4sLVb15RAkyiYkJFyzRa6W/y/Qy606gAW9qoHx3C0FkR1H7xCk9crSmAO2jYRS3fDqPlCPLluTVMJ3u0qTwxnm0Df48ntrzD1V9uaJNaAChX4vmnhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFJlihpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFJlihpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCF7C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790591433;
	bh=/tje7/0lWVSOkl+Ii+r0uTf4xUNW7MD0fq/mU4nSceE=;
	h=To:Subject:From:Date:From;
	b=bFJlihpTLU1asXddLD4cX0Nwf/ZSafrPk4j61q45ghp1uvIZDOYXA9SCo2pALMsnf
	 VCJr7CrGLbdOUJlXaEALpo48Dw8K099FuMDyXPueeOV6P/QDMz62KVEMbpVAmk1kjD
	 fZ2XygXIsAqy5GExnLP9fOMWOPHH5pHvaOrEhpQb4by4xS8QpQd8HO+XKlL3pUHku+
	 VUF0gSzZ9axJWW5CAb8et4oza6sK75ILboHMuDIDBki7AIDROyeTTuMJW6zjIxgxVN
	 YUNxMtT0D5zXACG5+qMquEGaGEnOcv0mMM8nJG2zX/4I9/J/f09j6RB5lPfKgb0RnV
	 696/McZPsbk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C6C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059143369.27251.4595778186591995061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1aa024c19e84b2a5bd2fa9124e9a12fb20c4668c173a7e864e8a933150eaa52
Date: Mon, 28 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790591433
