Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEFE11CBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762039194; cv=none; b=ZAn1eD/pnHIXRGKfvodmLEc5HWVJXz7eu9R/BH6OmHi0PCt2o+1KHP5A8RAe6TEGFXhRL3hfmznSXOagmb+1jJF3kyEDrUUxkE4PqtdqqYZXyhxDehkUlrcKdS395CL9SMwtJo1dT57zC/Ot0DwwrJsPi4TrCa2F6qOkq2rjfRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762039194; c=relaxed/simple;
	bh=9Ppb7CEDdlid/TcUyEAtnH7qN9bX2GxZR9x77r4Wi0M=;
	h=To:Subject:From:Message-Id:Date; b=lynsWjmW0avK+6TXvEAZjFHso5HBUpjj9Nrt4qKVKUVvyp9iWcSldBWdMCW2vDf5zmpFOYVP7Bis7+chN0w38FibsKjtPjUpPsBjOVv/X3/vUv6jOaaGSEU/SAQjWgRZZ6I3zcGGFnACUHeKwUSqlT9GI8gnG0MayWYlgcNbL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPU6c9OD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPU6c9OD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762039193;
	bh=9Ppb7CEDdlid/TcUyEAtnH7qN9bX2GxZR9x77r4Wi0M=;
	h=To:Subject:From:Date:From;
	b=gPU6c9ODwFjJskCHaxyZwDM4lqtjFflIzDnMYk7PSUPfEhF+5ozdCPyvq3Uvl2Loz
	 RV1QJ3jLGc985J7DQJrMv/W3btFahLsts5G3fvylEzIVQk61HuID4hHrhMH/NjA/eB
	 sTYwrcZlm442SSdFecyQCn3GVU/75R3yfW7/+Up3bAHBrs2NrnC/zMloVvS76fVeNr
	 Du39QpvmE3x/8iX/Z9BL5LfX+jmwzkK91INRpWMCYS3ISlCuw1CR96Wk28PdJmwkh6
	 0AXKRMCooPFiY6q+zwwwMO06g7bYqdigm0P8cVSVkFPGQAollxvckTtUwklRTa4Q/J
	 qXnvr+W4bI5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCB9CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203919363.5061.6240273418994334990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fe5aff2b71690b06a365154c7d4356ebf910874bd318b7210ab25fc290235d
Date: Sat, 01 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762039193
