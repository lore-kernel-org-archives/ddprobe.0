Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8203EEB3
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775560533; cv=none; b=MAHPIBVbovTFy2ymCf+YA4qI3AcxaBS5AXDaRalMp6brcq6Exb2RDp4Hcc/ft9JtdGyUsqCe4+6ICIhoAlhMOsNRnZ9wywrB7UFSoU/U1zlJjihlaxABOitrf1gK5eBYiCph7sR9BOJgcUh2aWeeSmL7Uu2qGKqpLP6Nyybijlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775560533; c=relaxed/simple;
	bh=jRzMohrqy2jS/JA35WObjTVxm0gdJXCqvFHwrcUl/kQ=;
	h=To:Subject:From:Message-Id:Date; b=ZVPfBmhEp9pJpLQbx12nNCmO88Tu/iwwkkqTlzjSInJZg5gxXKzj3t7FZheemlmqTwvw4HzFfrB2d1O66jY2SNEtSQIXqnqW7+c7gIKcEu6oFiehf9LmYoLI2uiTgmS/98W1fGGO6dtMytGtG4DY0Aaiyeg3fCT0Mi3TLnF3JEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTq5I/EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTq5I/EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA37DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775560533;
	bh=jRzMohrqy2jS/JA35WObjTVxm0gdJXCqvFHwrcUl/kQ=;
	h=To:Subject:From:Date:From;
	b=RTq5I/EYwU8bAP7mMRmNqAFrZsbvNgAc9z0E12qgyvqRgLWZ3OOG7aOd5sRlX/hQM
	 t8RofcZ7zpx5kGYMbu4Jz4ohM0i0dfIr9+lMegRngWEGj6TcJn8yn0I2BZkjrQgPcg
	 VEX8h8lsva2B6Vw4kwknycnFrqiRhEMidH+nKg8LQCEWeYxEryuNteMQ8l+yzbERqY
	 LXND7tGZv8kBPo2DO8Dq66YCs/cv69lf/wo/N7SFqnCE4a3Ij8JNxguwEgJmvK8EpJ
	 XRqmjx/v9qASjZeNmplpuIL5phq6L962H9RexLmBmdcwHgtbqXrC1fy2NZOYUywIpg
	 yMXApQLXjsdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB4EDB7FE
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556053368.9740.6535315139204134376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6ce556b17ded4529622ae73d63df142593b1b08d783b2d6c09a73ac5940503
Date: Tue, 07 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775560533
