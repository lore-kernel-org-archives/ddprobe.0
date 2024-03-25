Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA131327E1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711368497; cv=none; b=cRkzvWMqA4ujk9yyaDYtm3Syv6HfNrmfSpjiVFEDk1GyB7MYYZCsrt4TuwZiKkWMYZwQNBqAt8MOTul0JcynWabaFp3Qv5Ze0tnhZ8td+uwlQ3cYvcA57dOCGa0yHS4hPciwS26qq62q5zemm0kMbNwVgtFbUPkKwZkKAsH3QuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711368497; c=relaxed/simple;
	bh=nW8Ij4LXnmcnleLYTUKP6AkuqrMuj9UzPsy6aGibMe4=;
	h=To:Subject:From:Message-Id:Date; b=hETvvFC425k5pplTNYALDZ9SPM9M6Xe620FQI+p5j0XeUeV8etS+vcwNInTJ/ZKubeUW85gtq6mCLAg+lyQb226+hxHyNDBxDu5cjHLJMq87Vf6YhBrTb5F0w4Zy+0g2lGbWI1fuWqBaSFtR5+8vyeyXmjam68xgQ+Jq/WFvsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvOInn4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvOInn4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B04AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711368496;
	bh=nW8Ij4LXnmcnleLYTUKP6AkuqrMuj9UzPsy6aGibMe4=;
	h=To:Subject:From:Date:From;
	b=kvOInn4gNz1nPLIhNryAS54NEtQpLkUGGMI6mn6ZJFcrmBRxuOpGvi3Ssnfispm74
	 XkmQTA9z9IrWjRHww6rWr03uMrBw3TNZo5WJTIw4kZ9WovVFsCxhLqFXGv7dMV2xEm
	 SS5gH4Vup/ylAWVg0sSMhz3/cagGrIHlW2H2Vw4M2wwr4W00W+c/uLKjFRsUds1cqA
	 6j2fTte1zdaer1x+6fbZpPI/Qa8xYS020phr0dWYGId/kINKL2stE5ijx4UX3vwmtc
	 HL61OHxprtauwd/UxqoMkQsC4/dE5mtiL7P7+JfUnlrjTMOpo2HuS+1WGrtsCfi+Ri
	 I5O7ziO8QS/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68764C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136849641.16469.17873449981435207116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a257c135d3a28bd4a233f0502ebd126bf9642f792267c30debd3d82a7f7977
Date: Mon, 25 Mar 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711368496
