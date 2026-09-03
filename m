Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494D24EBAC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788459034; cv=none; b=tsiTKF0DeLn2cNMZIzZgT5dPvqcypg4Jta259V39TwuezzCLLJBrXhpqv0Ror142I0pFzHu16CoZzMKZLisvkphaumGPdmjsBJDchExAhFgxS0kQ4ycpKcxOg4BVdQuGT7+Z4zD9SOtnmVoA+eztsSD169rmTh8fLs2v/oEq8bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788459034; c=relaxed/simple;
	bh=OpYHoR3XK/AV5plqw8DolEhE8IheGXwSmvbxXd/y45Q=;
	h=To:Subject:From:Message-Id:Date; b=Zh8kpER1bi4sb5/UM5+blFgsCN/LsnJwoEjRwEd0AX5LEsoanIwwySCKND0YmR7wZixHTad6hHSNCBr5muAUpr8p5CJySRa3C7XtBezbVk5Y/iClwuoxaWrSCaOCodcRg/BXvFk3hBO/ASuNBn5q1j8KIKRCSNI6GpeQs1DijdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExPM7nzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExPM7nzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDFFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788459033;
	bh=OpYHoR3XK/AV5plqw8DolEhE8IheGXwSmvbxXd/y45Q=;
	h=To:Subject:From:Date:From;
	b=ExPM7nzBCVegSY1hjgEe9V7XvZXOSUx/Y11gHhSE4DLwnb3xcSnrpH7dKlcselDbh
	 xYsAKLpPLWdsm/m7XBAjhvNP1Gg3aZdexubX8jHv501NFyYpaPmeX8kEQQnfr2/2bC
	 6YUo+UxumgkCuP85x8COplWzVedTMNHbZ2RFdE2UaE/D3ecl7fD0enG5DvIgQgZNNj
	 rLGhFxEk2vxzPqHWtWgPf4YD9FkOUZ9/nkh3mP6GKHs0bh09ZK42wCYgOSBtMLfGV+
	 duvhVYwWZn1vAoypfdHhKo74RfMPLIP36/6lTjCtezAcwIznTSwllKxewPWiUvfN8W
	 L6de0oLAXxjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1732C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845903371.28050.16803124620653093561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b0046834b8dc2edae7bfc527619a715b74ce2903a5b98d3c42d5c36140ab34
Date: Thu, 03 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788459033
