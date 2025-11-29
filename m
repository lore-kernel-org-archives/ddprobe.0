Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A341E50E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764419574; cv=none; b=AUwHsG4Whs+zV6sNqkqJ1Zf+tp8zCDzK/Zg0Mb1n1ldtC/340WmjewnwFkn0pAtwLVzm6u8527jx3ksOnYMY8v7losGKrOznxC66AYZLrajfFmq3YL+MdzOc2hkZTQ3Yw89Krby4Xh30vfN82y4HktC8bCYnXjPP3fXx8suF2QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764419574; c=relaxed/simple;
	bh=TwUtiZaPxfdnHk63BC9hWr6PWz8+VK0ofIc0CssVJbg=;
	h=To:Subject:From:Message-Id:Date; b=HnavZDIf/AHd3pkXQldV+43yvJqlcvcw6adMp0nfiG0ZdwTMCOjG0bCdtf9q146iyVJ0toLp2pylDsgByw5mxqxepVo7rP0zVrho562ghBgaMjoURV1tcubpkwshCiU/jBNtJnmE4K43FFj+nM2+eH111FUfUJGgwzVRLvenENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rcmpvq3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rcmpvq3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764419573;
	bh=TwUtiZaPxfdnHk63BC9hWr6PWz8+VK0ofIc0CssVJbg=;
	h=To:Subject:From:Date:From;
	b=Rcmpvq3RbJmePGOBZVNrNiKe5nOPcZO/tIDb3tSbbjheF1IWBSq5u05UfvbshKHPo
	 dRZChrq94gEoyyVHMf0Y5l583EFA+LE7Cz5OfnPpGU8pkGgaeEszvdPdYpXHs7NOfU
	 lzPNCe8Z1HO1/FohJAosYUf65f7Vk8JTY7nCgrUKDmlNMpiL+M9+Fepjj0SWa49x79
	 K4DTXzDEPxk21G1L7+4Olo312G1fa3IAO/P2JRDK2wJrHipRI7sV9pWnkMJhy2OiT3
	 mbrbHzAYCFBzrFT2g09KluMqsySqDFmFXRduhQ7P8tfrJw+61o4V7Pr0AQSHOh+jJ9
	 hDyq70QVgWPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05A2CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441957359.3965.18208237731094492170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c061661837adaa6e90e666e9d07031259ab3bc132e9f4c9bee33e6f46a7473d
Date: Sat, 29 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764419573
