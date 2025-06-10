Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD33B28DF56
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557393; cv=none; b=FzX9XFx4CcmD6slPOiHOkt3FCBiGtTp3Oj2HZauDaOJXgxnaQH/zuj4IZZaFBazdMg4c6T3/j4hRJWJmWyjo08DyMXYZys4a/k5Igbn7DHI9fJgbL3cs0zLyO8L7PmpPmF9M5OSKa3/kItlvBI6u20AWmRyTQe4AR6eplPCARFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557393; c=relaxed/simple;
	bh=y0oUY9BKxYE1Pa2v0ZLIhSENFyciiCnjfi714J9z654=;
	h=To:Subject:From:Message-Id:Date; b=qmHoVLA6HWOBid3e0rPSuuVpCeDEnmiiWIlYIwHg7ztUzyiQ6ErOK7T+MBFJFY/CEDLt8ttxqf5chMNNtUIxDAynFx1/4KyvJ7rYOmio57pEeEM4ih3s1QITcIn28B3E9ZZnFe6Ya5XMO3Ye3RfraxWbUVE+afJGaR91DWsut+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shf7T5rF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shf7T5rF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749557393;
	bh=y0oUY9BKxYE1Pa2v0ZLIhSENFyciiCnjfi714J9z654=;
	h=To:Subject:From:Date:From;
	b=Shf7T5rFoOwba5eJ+wU9DrDmZ74yXPhwgvKXY7nCFvJf/cnVKxnM9JGgOXz92v0bu
	 WqWIagnfIfWpX+21QW6RGqOJs2C5KIn1c04SaYPo9PMU2eAJgXTLt6VdWIUKVO0buE
	 FvYBUNh9gxWYMCg3RVqD8uiPW91QMGqW3uuJqI0eUyk4w5RX+CamB3Ypo5UdUNBFfr
	 ztXhPKuzu0cvKkHFV+dIipFvpm6fIcxZaddEpK5VcmAIIr31Xk52YwHXfXMdf+24P5
	 VDrmq52/AMtfSvBrLQ2TLnZN9YHypffQvCgcGsN0hr/Yfy4fY+RaKWhwk8XP/Mlxtw
	 VxlEWRc0AbA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EDC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955739358.28433.5031520896361167145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69560118a4e7b25750d878d9f471c37e5de246d5a9dd5be3157a4b58d96167be
Date: Tue, 10 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749557393
