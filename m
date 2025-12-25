Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016D821B905
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766688234; cv=none; b=tW9Btwx6bmLGXnoNTd6Zjmc9my3qgoLsiCtudVPDdIhn7u4UXwXg6SpHXCcHzLYw1Hhhsuq4UfkPZTEt5mjAds1G2c4vuovJNwHttUBFeoBcJEB59gitp42Kx/bFAgYOvzi/uiubL0uRaDzFPC64+SYiPSV4nJRG/6mXSwFjzjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766688234; c=relaxed/simple;
	bh=348HjmrO3+wuk/jNdME+tNMRh8CcRY+kO5EX3pEoeyo=;
	h=To:Subject:From:Message-Id:Date; b=c9pXaRJxrnK4xsBs9csvYdMX4+XVjWnuPsiR012AQcKHeJiia/I0orAfKrFpKYlUPLJSlL8IAntk07M92FKQw2npq20fptcxh2sax/9x7sj78LKYItgzqIcSY09wABcAKNbkY9TzxKTT2XMHrdmvjBmNOsygmxrTHes/ZM8wivo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5rLMRaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5rLMRaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D6EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766688233;
	bh=348HjmrO3+wuk/jNdME+tNMRh8CcRY+kO5EX3pEoeyo=;
	h=To:Subject:From:Date:From;
	b=E5rLMRaDcGzEmyIroqwGGZFZ9KtFcsJiRAqofXm33jv5J3ZIiNDQTGTOW61BWnY+I
	 xDOsuKa1FumbbgfZJ8TO/p2FPOUDVeInI6ZkCFcusz0orhQO83bzR3ofwEWEKI8iuR
	 E/qPYV/NNhc2v2fVLUu5uilljbsGt4Ccie1b/vQoPP11aVwK+YClOyF0OiV3eGrW2U
	 r2+5nxk0KxSug5REw8XeHklnLT8fSkKZur/wLkTMw9/xYhBN7oP1pxMnxGWiihrr/c
	 brrsQDjkgAA+wKHc6CqZbL3aOmuOy7jFJMFGM1CYaOIxvYVnf4rulNWOpxe2X+gG1e
	 z0OYI4cqp8ahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE6E7AD4A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668823358.24549.14920944770462688449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789765f6154c49ef8d830bd09e5fcc12c5d1b41fc9653053cbb18d71564c25f7
Date: Thu, 25 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766688233
