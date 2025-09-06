Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215AF315D2B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757152795; cv=none; b=tQjTJMvLZ3/k7bVeA6q4W0cnX3MniLwQGIvleDe1d8yUtLIef1kwLZln5+yHdwWfJks1176ZKokZsaay1qf7BWzGTTSHW+yni0IgNV3RygX3yhQ+IGe6q6Hf6bjOTnHu7bp/Y8Ixz2fFrziFZLWDo4+h0+XUgMb5MuV1gPDIgcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757152795; c=relaxed/simple;
	bh=OyV4lwr1VhkvWyelINdY04PIiIGEwE+MdNu9UceJ8Fo=;
	h=To:Subject:From:Message-Id:Date; b=Aa8euIdpNUvZnS8R7tF7ENblt0D12zEyuHKqSG6bkgfO7HHOTflZ5GTdevoFdFiOjnSzbon0DCn+K7owemkMH9QPTNxp+Ri+ySR4EYD31axCxDh1iti4S9xBeMYJBcJIhX9U88JEPIKn/68fhOZGFEhEDJIuxaHwo7t1OPw7ti8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDhydAq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDhydAq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757152793;
	bh=OyV4lwr1VhkvWyelINdY04PIiIGEwE+MdNu9UceJ8Fo=;
	h=To:Subject:From:Date:From;
	b=WDhydAq3Q7hT5YnUvnqKk+YemKrdt0KtwZjFinD+GaMDK7tBBt518H4XjL1S30bBn
	 yCrjU7vpn1mipy98O62+GQJM81fN6PvS/DslWQXYytHXDqtLZ4gBDIX76d5Xvwab3Z
	 ZhLMaJo27G7D1vcKo0TT6JGI+3P+OCQTmSCkdF0bnw4ojm1lq6UxZ5Dt18Mu2rxEEB
	 qp7e0aOp5hou1Y6TiqS+qwFnpkrAmFvH4U4eC1HzYmoI/sqN+NFepR8LZlzZiBuuOg
	 /IRYK0JDHg4GfxAE0a+miDpacsG1pJdo8fWMUELG1KadmVJ43e3gAP1gqeZeO+CIc+
	 1vRc7ooIo5pMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A12CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715279357.29443.4470420518866879497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81a7ef3b98fe3f408521d93ff005bc7a7da9b044ffda80076c822eb2caa2d1b
Date: Sat, 06 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757152793
