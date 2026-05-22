Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C83D3CC314
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779445954; cv=none; b=ISNigovkw3+eKf9xk7HQTu3mVJn0LdtcO8NTeUj7a2Gv7JMDqVNqLoq+wsUBi8E81T28qMRb8U3Zcww/guR2D+QobSYKBefoae3qq6SxRBlP7al5zkk8ts6pEYrq3il7h296jYAMn/+9Y2ERpZjeSPG5HlZrNmzLszuuhmmL8mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779445954; c=relaxed/simple;
	bh=RysdZwNjlmJMNoT24kNe1S9eQnPAhDTQdfWaGocZu1g=;
	h=To:Subject:From:Message-Id:Date; b=a5Mns7er/Gk0qYTbn13BW3In8DU3VyRBSkiIW1SsofYnFv0QyP9+kWQuyAq8B86W/Yd5khtF2m1UE4Kw/CtGcV8DDzADVDEEQyDmRPvJJw/rOYWn+x717eVXI0HJlNm1n1WcVOOJJ/4pRhA1c2ILg+a1TNWmE+1b8dm3nGkocI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui6GXfMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui6GXfMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55D1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779445953;
	bh=RysdZwNjlmJMNoT24kNe1S9eQnPAhDTQdfWaGocZu1g=;
	h=To:Subject:From:Date:From;
	b=Ui6GXfMSkIe+HKM3dgXKqFyAZI4iUaKlA5C7MnH/qpSyt2QW9m9S2x9Uv6CsTOj84
	 /JiZkhWAweq81NifdLvKY0q45NjAPll608VVR2kvFu+tPK+xDuABHuKVG/HOebzy89
	 okOVLO8JIPDaTjHb0hGrNrrXD6Oh3oacQX/7R2kTGFx/MV6IST7z/o5q9Ezzcfl5kj
	 s1bO9vcdvFMlOyodrDfIq71OYlB1qjdwIEN9jlcHfBqo+0lXQejHfxR/Q1Gh0TSD2V
	 wBjOaGR+GXGhLdc/UZtspIejLO2+MgxYhVrnRpjrdTtpJ+tDPbUuBMYAGxda06gcnh
	 Jqo6wbJO8MgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3AFCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944595369.4235.13887734443437291837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6c23e1c26222a1a53d95910b32d7a01d160ae9eb3313d43ae8a367b8dd9a34
Date: Fri, 22 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779445953
