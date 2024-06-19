Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EF06BB58
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718780363; cv=none; b=mrvaWNS1tdWjaq/pCGoiD/HuQtATDdO4PvocajbaNbd8Ex6E7gGU1ENO6XH2wbaCR2r+4oj6f2uqzf4lEuGErukVVBbSFmqKdOtlD6u52fAbmQ1QkHzJ03YZUzw+SpdrvOWpc+mc2AY4aoceXlQDpIgL6fgvD+KNxYlYdyEs/Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718780363; c=relaxed/simple;
	bh=BAmNjV2k8BlolJKrMu3WZxaox4z9Wf8AJQbvBKaOrOM=;
	h=To:Subject:From:Message-Id:Date; b=nzjJjcPYBF5BxzuHCFmqkJ2p5hjx7UdL7eDmf9raSpLn3oW3NVUS9Jiw0cRQafeAo7VFNePyThxwaVlBnEnJJkQDgDUyYhB3FR8Eo/j/1W1mRjlA1MNCjIOHJuACMqqFKGME7CZCO9vo/j0e6uLMlvXcaNcTPkTuj+q9rN+y6is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRjYcjG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRjYcjG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C4EC32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718780362;
	bh=BAmNjV2k8BlolJKrMu3WZxaox4z9Wf8AJQbvBKaOrOM=;
	h=To:Subject:From:Date:From;
	b=CRjYcjG6N0LNLdtwDZO8E5H0ZtrsbZTr8E1FpkZI+7ChEAKDkei3IaVxKzhsyRKFL
	 Ltfv3OGLpLnI14YAwrBdTgrkVwZ1AdLdtaKAtD5n8YLeAHRTCrwb7/BBHW4h2M2Lss
	 aNS6DmEvFLSjCOQ3duH6laxkGJh6uLljEtXPAb5XTHnqpaNlrs9ulpb4z/7S0FmJ8a
	 kSkYtfSDpkxl/FBcD2Ex4MKnbanG4hfUiVKgK/eSEmszcBRiTICyYBVENpJyyFX9x2
	 Q1d5HBPPOlu6CugboSEwMjLr4mda5B3R2NW15d9nUWuB3sCgyzRDkmXRSXKRO/nBrO
	 OwOtRdDpBBGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD87C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878036277.11295.1456865386331074773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fad964cf63b0cd77c80915c4209cf7c5f8baf3b0d1228835f2d5e1a992586a
Date: Wed, 19 Jun 2024 06:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718780362
