Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251F82DF137
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764858774; cv=none; b=aiUqWD3HytIqskfPb+OBAUwJya9tp0BSaQD2EwWIkGrpNvvbsD9N+Pp4TN+6H45eJZk6ppwNCVkhf0oJksrFcPyOFkqlM+YdpYwH4P/VNAILqA3KrLkYW2YI19geFP5b84YTMCZCeYr32c8J+y0FxFL49XOlZBgKWbmiYX8QTHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764858774; c=relaxed/simple;
	bh=frBs8UQufr7qIA2SaFEGoDbKTDDXhoEoghq2tFnB1Xk=;
	h=To:Subject:From:Message-Id:Date; b=I4zyx6D3FNs1ltSZTBST+eefxymkLzoocJBtFdt39Fxmr8crD3jHGYFXa4HiCI/M418BNCxmI+g6xUmOI0jlwy4rUPrNhb15chYTvAZ4/sGgKUW9ZkoT9WEmQ1KD0rD/zif15ZQXLpIuUxM2ZxhCBCn/jGNVYGGx14zoXShRctA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUSqkU+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUSqkU+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB84AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764858773;
	bh=frBs8UQufr7qIA2SaFEGoDbKTDDXhoEoghq2tFnB1Xk=;
	h=To:Subject:From:Date:From;
	b=ZUSqkU+G8816eSzKFbr2qE9OSkD0yMrG4YAfJvXOkJ4uZEqNPpKhADY1oYJebgvPt
	 kbO1UOtIOuPqNzJ2KjUl3JUeXfU0d2W2V+aJ1wkjmoAiGLUbZkXNFk0au4fF0dgb9G
	 36ujrHKlfe9b4rIyDb+tzpV7gJS+Hrek30Ru/Pyyz8XPloIEFchm4eTVLbDQnncjsk
	 BxcwgBsm5qDhr7yL1inwMBolKVVoox03ZVnqYgwbPTdrYuTL7kYwnVuYLQOxFIecfr
	 CDwsKLzye7KZFpXTCkXQgt6hFNOXr/gGedH+4YkGbjLcq4jjNgYypOSgMTYzKr+LMw
	 GaklcZw+QK9Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E46D206A9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485877361.22238.4183666753819101332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed059c370361c71bf44c6b2fa6c80bbddf2da0d952d1420f117c5371dfcd18c0
Date: Thu, 04 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764858773
