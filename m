Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1283101D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789945834; cv=none; b=trqIY38HePLdW36YeRWLW+0dRNfZKGdd/PtpQCsvQM3cQCQmC2q9cSZE45dB6Box9XHQrwt61RTwxzkpwLWUH92gjB1ybeAJYBBQNf6JCPwAracX2q5D5bdJ5fzefh8HZgSY0BQu2lJtcIHdeJ7tC4RLlQEbniRdZL0gUiu5/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789945834; c=relaxed/simple;
	bh=vcrJtVGeXHhWQ3k4InAc7GK6BX1y6IhtnitxkY41MFE=;
	h=To:Subject:From:Message-Id:Date; b=l/2BsZ4W8A5nNpIhTnUXdtm9BVxjrZ3ItvQi0SXBjxzf3Pb7ahuPaVOG9oBOX5u28hTwclI5lTeaaedDOOajUERJeDTpvxX38UkqkkS10bu02aumIa4WE7h/iv/luLvta++pyIWlj8V/l9pgor+YE3aT2vJf0G0hQUOb1m2UrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugm974/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugm974/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6013C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789945833;
	bh=vcrJtVGeXHhWQ3k4InAc7GK6BX1y6IhtnitxkY41MFE=;
	h=To:Subject:From:Date:From;
	b=Ugm974/4yb0ePkIospx/9FmpIWtRf+PyVO1UuLHQNTycM3ZBCpO0Rk+9gXhOIN9Gz
	 zV1zmAWYgONLd3MQgty3U2oqiLPxzbqyasYeE8AJ2JB7mESZmYPLzmKe4vqpRiKRkR
	 sGxswT6JbKv75ah6RaHLtrbP2LNiVgGTvmlc8IM2OLmKx72SctKaz5hcY9cs9oVcGJ
	 wiuxkj9eEu3Igju7nIbwGAl/7Hr1SDrfih1SzTUn0F+aYUwIA7yqPig/2MQmm92b5A
	 YDEUlqwSQ3lXIuprTBTMspusD9gTn54lgsLN5bxrQDEA/IK4oF79eN1WWWXKLA4u/E
	 Wzgg7G/XM/Htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E1C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994583369.12927.1693007579993660415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29524f28e4c3047825c4a478e1e1d1074d2d33fa6366dc6bd31da47dccc009ed
Date: Sun, 20 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789945833
