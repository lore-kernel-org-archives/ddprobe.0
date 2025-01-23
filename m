Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4737220F980
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737642954; cv=none; b=DlVXtDotgbflAHohu3207Y1eTxCWXy5NOy/TkxQdsgHEsFMzSuPmQA27JbG9aRQ7MJBJWDVqDvggF6bWXjBEmhUz1gsQEMS//tniQskwji3vFn2dSiS7MLV/9YwUBy5AQoFb/k1Can5bbdKsS/sjIcZXj22wsFsNn0r6XHjRrEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737642954; c=relaxed/simple;
	bh=kUKYfzHUi0MxAVRN2R8p5Ru4eDLwFktQrtIDy/hjoWI=;
	h=To:Subject:From:Message-Id:Date; b=rOnYtQ1DXjkjaqeEi8TUht0vrsTjwKv8aZzrWymA7Bu5H6kLfBtNHhpmvfyUWD2Bp8LQWDLBteV4NqJcKNjsLW83dxelBPJ08SA0Sqe3BpgCvrHLZvh9g9lTVURqhqY2z2cUFabnlLdwi6hs4wUi4FYHFP6YW2F8flRo6DtLB9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW5chzGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW5chzGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EE8C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737642953;
	bh=kUKYfzHUi0MxAVRN2R8p5Ru4eDLwFktQrtIDy/hjoWI=;
	h=To:Subject:From:Date:From;
	b=IW5chzGaVeocFEvTzyKUlKhkmU2LLzcGr/gWpAIVmqyPBbwq0YXvGeJMQML+zksQ7
	 wfUDL8nUa88bAoqp9Bw3FUQXR+De3IiOwPhgbP5vSmxtYmVcEa9AwLPyT3dV4X07kK
	 uXN+N/8lMvUd13nbI9jEZYx2OpxhSuJXVfCcJK3oMfBMwT96IfXph9UKUyGasdkhET
	 cpDQExI8dm27zMda3z2criF+j7w59P4iqNPqD734MHjmd/iV6JsP4bwldRxBBuyQcV
	 9+XB3m+6sLU3xYv5hn/hOby5Jic4FeADsihSD3cfuNsgKuB+C0Hixyig3dFuMdX2Kc
	 BKcpiJjiUDYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250CC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764295358.23384.1195338907201267854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b4b1ca379c159d0d41e2b4dbc58a25a6d580183110ad333be1fff514f4cf96
Date: Thu, 23 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737642953
