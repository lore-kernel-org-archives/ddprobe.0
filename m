Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880C21255A
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778891434; cv=none; b=U8S8Knmcz6uq94OgHkQQu9AqinvmR3OR7cliuFhtSpap9x5Y7YZlX5I0jyotzhN1ShH1VKJQMtp/V4/PUr3WMLKpPrhpIVai9+QqfiLnmYeguVIqei9cgFQ6pYPFuRf5tf9bQ4g+eZhsdsTbDQSGR3TKP7iyRewdriyZCklghDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778891434; c=relaxed/simple;
	bh=tF4UwMvY7EGm1S2irSn93SFi+229NLuSReFNjkJXd8I=;
	h=To:Subject:From:Message-Id:Date; b=Ymmto8LY+9SO3v8Nc1pxaGq0cZFcEDUQnAOMW8ZKRMInO9H97Kg64TRiWG6LS3RkaOvsS/plv+4aWMOoW9SsfX5xaoZ3cBmX+Vlu8175Nxmm7rKTuOkdo0syaUCqpAIaEBXX+cLtJ5Fue+4foWo5pUE9gu+Wlqf9hUPz7oLFYTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPrewX5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPrewX5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C126AC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778891433;
	bh=tF4UwMvY7EGm1S2irSn93SFi+229NLuSReFNjkJXd8I=;
	h=To:Subject:From:Date:From;
	b=XPrewX5BUF/4U6XMncA/zaHi08NxaPyCIw54fz4chuhH/xOGED4ax/ekrALmz05Ln
	 d8AKd0OVA+dVW5pr1Wis0esnMfuBHfBhhQOLDO+h2/6/pjhAIKiBah8zwYY3851Qms
	 cACW7qvGssBmhQYhZNJq3x5zUw/4mcBfylbS1g0Jl2NU0WYN0zEcufKlU9wz3043nd
	 bPOInmVLd5BxEpczZ+gyhpbx9rGh/xXLIhBZwJl1LYw1TXp0j9zw0eI1rHgaFS4H1a
	 8Us9b0aNh8MmsSyKSySrb6vgKgxoh2C8m+uWIGvJc7vjmiIhIRXoohWpzKLToSaVux
	 kYQGhzZFZk7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B174BCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889143369.21635.3577673510825716651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf91d1756d61e84485035672b76ad578f2db2f0d62cf6dca0582516d300e3dd
Date: Sat, 16 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778891433
