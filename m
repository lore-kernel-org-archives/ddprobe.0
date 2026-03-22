Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2559C3D76
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774184094; cv=none; b=oyIrsP3KAqm2AiaUKD7YL9B5xPw1Zmub/lLFHpZ4UDEdSI7hFrI+/br1gU9+pypQbMmK29YIuvV7Q1SnG7NblDmHTVQyPonHM7L0tNcc8zU77tTbIEezKsUU6VqlGImndaYSSOT8y0mMiEsEsf4XMVRK5EmWMt9mFRgMe65Tbk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774184094; c=relaxed/simple;
	bh=W0cMU0t6MVIeYfcYLUYiJAW78ErJ60LlevBzOzCDZuc=;
	h=To:Subject:From:Message-Id:Date; b=JH1li+m8ATuTOqVcDGau0oLfPdPuNtm5/jHSrVfzDq417IcHuoZuWn4qXrVTqu3YQD0S94sQCYvnCtTgOLk2TLsjAGtpjogcnKX6u2X97+rl8TTcIwreE2dTLRQ7jCPcAO4NV4/bm/cD52GCoW66XGUJUxwEKnZwsWOo3WbylI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFtHJqYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFtHJqYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774184093;
	bh=W0cMU0t6MVIeYfcYLUYiJAW78ErJ60LlevBzOzCDZuc=;
	h=To:Subject:From:Date:From;
	b=KFtHJqYddtsKDlxyCHbrmRRGo0Eq+Iykt1aj+w/cNyqloeva9FJnv7iBD1z6klgUv
	 bLkhRAlT3NMKD6lpudrB58ievrZ+D+9tLdM6RUprg4CE7Cv+idEjX4h4LRLM4dBqhM
	 1uF+mm67af9YpEF9O9VWBQsP0NNtS6IsGSFhxZFEJpuMcHRvmAxaFtC5o+Z8GQnFVk
	 ORLNff6gUkrbCwTi5KjoqHDv9KJ1PiO4tfl7JlUWM4TqphgrElurDZyzhQ7NQHSqYF
	 A+GkWlrggXYCghfCTSPsVfvqziov/Hp4TIkXy1k75GUkwbnt3T9ucrqgCaNS4Ziu+v
	 6B9MZ/I96aoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C9FC72BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418409358.5727.10848573504938829945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2295de42857b1f3eeeeb0726f52a368d2f29836f108c821522c277e257d656e
Date: Sun, 22 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774184093
