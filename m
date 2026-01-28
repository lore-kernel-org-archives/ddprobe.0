Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E032BF43
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769593434; cv=none; b=ok1ylBfqRRk6HBivK3OAejn0ooQ8evKQSHfqFkovC7btoKhf59opYwhAI3BvkttRBEDdPPDt19uvPvaLYCgLfPjWuBY2NBs6ZC6UTp5/CxUkKgp9eOPasgD10XyYrj+hbt02a6vriMIwzCvG/bitXshlIRQXUGOo/zjCmuTw3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769593434; c=relaxed/simple;
	bh=8KowEZQDNB6Q5W5bLexHE0JvhcKlT3oPt8pM38Yyipg=;
	h=To:Subject:From:Message-Id:Date; b=JSU/3wcbRU/5IWZVk6LwL3PccIL1LIb8TkVD7njUKMJ45+c/GdXEsFArXCfAe5AHMkKQ9BdFGmI9DyTskMlys5tWm9yoH+VnkTLpcCv/U4L8YXk1jl2dyYe+yY2p2lJx7RV01XUeYOrdeCA2QI0q7/XwfpahHSrmHfcqxt91jbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPhNWiQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPhNWiQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769593433;
	bh=8KowEZQDNB6Q5W5bLexHE0JvhcKlT3oPt8pM38Yyipg=;
	h=To:Subject:From:Date:From;
	b=YPhNWiQLGXK0oUHkC6b2owEsgPPBWIBqmXWKYfefeftl1K02NcaOAz1/hmKNMI/oD
	 PiHxz5H1GZ6ItnXqpR7gSPrSiDcVacwtcyct3rn8Rc+svpXY07x+zjpflUI9gMEqSL
	 voNTzlkcxNDBbRGVuoVrbnqGNB7kQlp84E8jSPuwLlfYpNlJGoTC1T7XjxLvkC+FIa
	 LyTFNWB/2moRhcYXncgvnfsldGrKppc/izoIjkeMHwQAS9lJawo6P/neqgudFH60RI
	 iZL3kJP1YWauGhPauiLfaTanJxQbuocmeZLcqWyoDSCgY3LgLxj9aYLYWcSS400f5e
	 +ZWXQX5HqDTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A5D35697
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959343358.14530.3129360830325099317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0d1b45d9141bc8e415b2e36f4265c5d728b5752dfdac6ce2d9db995aab3914
Date: Wed, 28 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769593433
