Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B24E22612
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726781154; cv=none; b=OMNjVyAyKsrz6SKKgVjhDBNiwQp76WpetMcbgRI4oVds6MRKBXS5pQg5E7qevHA9NP726AQwd0KJNfELGZGZN8cauV5qmetvEEmnO4ziOetp9oiBCYKrsmubBqx6iX8KP7bEOpShkmJ3lp/lBe5drGCF8X2k5Ws/JfeASMl508E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726781154; c=relaxed/simple;
	bh=7Wi5aNjPAzm7pZIcBY1d7YHZK5oOn2ds/g4XhigN1Tg=;
	h=To:Subject:From:Message-Id:Date; b=YiLUeravjPKl3J/zyr3GJnOEGjB2pOXMHd68pOitJmpQmv2WcFs1Ht2lHd0riK1iIfAhKSpTzs/L7BmW6xU+mgiv7BBnkfrc4TntAOzmniS7uxp+XbNiLX3tzun3YpJm6CfdfyWTexlnAj8uwQ+u1XIU1Pi+6Az9diFx90maK40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qR+brjsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qR+brjsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD9CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726781153;
	bh=7Wi5aNjPAzm7pZIcBY1d7YHZK5oOn2ds/g4XhigN1Tg=;
	h=To:Subject:From:Date:From;
	b=qR+brjsLrN2xx/FSTvkZlIZ6VaJIBqBUYsWrPG87H0rBe9BrOHCrKPA8fUxV/q0pY
	 08Yr3k47t7ivgbpKtbvA8IXJSMsznUeR+L+O0cgQS9028kTYoCKVq2lUPoUfPO8v6D
	 l58SEFnTuL3V2nhGR1xJe1o+hAv3D9OtNEiUbDQjZ/EvvyNBJWIF2M9R0fBcmEEybD
	 lESNnjDZjL6XCCd3oacO9Al2G4TXUBHOJo4ERcgN2RWRjrfxL5DN7fLWKJSCuhPcRB
	 PLlvTXbKzOMQnyLfq7ai2clYgLbRujIgllz4AmBVxHLQXkgpMieZwpxG5824W+ZtZF
	 XNjZv6D+IpsSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9770ACF3972
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678115359.13383.1880466494694846479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5334622b3f3ec006bc284f9bb82b080a3da956fd9a9751af2f6830a841bf8d6f
Date: Thu, 19 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726781153
