Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA801F4C92
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754677194; cv=none; b=hBuUUJJJ6YFvDaQbot4irnU9ySrUwkwEnrTguPv9Z7wsgoLabP0fun+CpMY8MtyrdRXWKwLNwkfYj8aFhg1UwqoKavilPwbh4MH++bIp7QSKdLQLsdUfCyIT4Z3B4cuMHlcOzuq8r1uuLstUqozXkJeJpu/6zt4tLi8wapoXJ50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754677194; c=relaxed/simple;
	bh=iEShSLuQdE6+jl9UvuJLbBJKbTktP3Q+FxcpxZPpktw=;
	h=To:Subject:From:Message-Id:Date; b=UOItRmzYFAiG1Q1yXrdY9Wn9Qao11+XjGEdZD4i8K9nI1l5KCDMcwwexMIDAEo5hnUNFa+5t+D/MLA/HjPZrc/AVqx8bR6fAMOao4UkjSO+tEO2+QU2Tb4DkvXWVy3B8vUYJfk+Jle6lVCCfW4MEUFOl7/MaN+1JK5CuEwhM7qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K99RunI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K99RunI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E04C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754677193;
	bh=iEShSLuQdE6+jl9UvuJLbBJKbTktP3Q+FxcpxZPpktw=;
	h=To:Subject:From:Date:From;
	b=K99RunI8ZdXkYuaYeZSZIPct1nPHA9nTZZ6jbfEoLgZFe9oZxyDUn9pZWpJw4VAVE
	 yrJV/Ej3v2G0zUpiLcvn6ituEiAQuTSt4qAANhcR807kVIeFa24x6fy0TRcMN8JTRo
	 KuEsB4aVCJWlJzzMmMsTxpJ2YHBZxpYu99JWi2nbFaFZCVJlU+8ZbwK3grpVGOXgI0
	 Oyh7sB0po69fD+olqwJUeF33ve5fDaOUAbBIfpohP6gmu8U3c1B9D7F7Pf6lVV/tyE
	 MSHC8Kqzh73EXfcOG/XGCr2G5aBSO5yyq1YLorFVRCj7hZDs9wkJFFjLkFIbduniTp
	 c4Ix8WwaT/AsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEAC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467719357.10944.17685909375551170191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1838e490475e300cd66a0b41fac850a0b921d785b1204f411e91d95ca0693bf
Date: Fri, 08 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754677193
