Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3613B248F57
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786294234; cv=none; b=m9PhX2UKMy2cPs0peXtz+/PUtKTNxn7LgmaID5WMOfOyf6zWTClNurKdP7iubTebJMeP2LlI58GEJMwq7g8rAEp0zeXmYkuCuCK7a+BnWpS/SA/IxytLUAp64rvVApDG8xou3EG5Yst0Jrz3q7ouVEVAi6UbSJairXd8Q72i1hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786294234; c=relaxed/simple;
	bh=TOZ2oFSPHYpsPm/RAqf3q5/Etf4E3kB3iYHnRD86Wlg=;
	h=To:Subject:From:Message-Id:Date; b=fFedk5VoLu9GGZwpX/uQxlDeCyCYZjtXJiWXymWmwQaZuYJzEELYnC9S4d4znhqSxAPrlCa6lbeFwI/NlM/UllRjN5RmfX1PCFwdD06vB+9yFEayO/IPvSP+pVlmR4ZGMUo99jvsfcBLU01J3YAB8kg3uQwZSpkHVh4tALZgDys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSuOcP0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSuOcP0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF8DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786294233;
	bh=TOZ2oFSPHYpsPm/RAqf3q5/Etf4E3kB3iYHnRD86Wlg=;
	h=To:Subject:From:Date:From;
	b=WSuOcP0BD5t/kM6Xli+5HjiCqpzjefRg7wTwficZbZSEoXrO26Bk9yBekJQvpcjqi
	 PxPaEJuk/Dvq0qBQ8veAp1s8zcK2AK9mSiqsNpBcv3d8BfTM/Ai+U9PcvxxN232lB7
	 craOswc+NXNYnUcjPVGyKkkk3AGgjpoXtpTg7JAvFwOeMY3Cf2eKPkGPi2NIVZAJon
	 md2XOkWbD/h83bu7dBG3/nSSwmqPgQrxtv/+IIGhMBJqVmc0r/va6GNvLw2xHpuLkB
	 781huqwn9UoKg/+NA3E9srAW3B1ZvShmC/3SPB6f1ag2ferXI89jAtqh4QvOocyKpy
	 3M1wwf4d6bmAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D1C5AD7B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629423368.2098.8515834270851208780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b16ea835047b7de24cb3d74e55b69b300e273b5ccb3a418e880b6ead45e879e
Date: Sun, 09 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786294233
