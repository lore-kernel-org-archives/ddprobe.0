Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98F830F523
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773428694; cv=none; b=O7Hr7JMaddcG/MGxeqA5FE19dcMmaDundB4TKGgsj78rwRugx2+/ZLiAtYauuhbifpsZ0x9iOCAsfn6QjwkW++ztvX2pR+el6Ml+k5hS/d3HJ9EEbgKEO2JFaWHMagv2YcX/11CelGNKEPOcDBZNMRy6H3moqquehdTb3hnhkKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773428694; c=relaxed/simple;
	bh=IbG91u/txPwW7HCdh4pmT9kFfLMhIFgEKh1mzsBq8bw=;
	h=To:Subject:From:Message-Id:Date; b=Xt3n/1DQSPuhDjVGE95HKfrs9TL6Rt+2N+mFm+7qgbRlv1OQubvq5O0JIkzhhj1+E/idg4adaOyu8Fg6IfkkRGjCI+MBH1r/rWeMAmgcuR1aj7iUak62s4PjhGDKPNEZgs+HyX1Ka5gq+HUZPJZVN1Uv2ZDfG6HxqsdIwrniw90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIHEvTOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIHEvTOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D5EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773428693;
	bh=IbG91u/txPwW7HCdh4pmT9kFfLMhIFgEKh1mzsBq8bw=;
	h=To:Subject:From:Date:From;
	b=qIHEvTORixIQ9uTddLEx0hOZF0sn3N0InWsdk1rC7htaS9T4555wQzkylPkqE32fl
	 eL9yE32rHLkzNfUYM7bKZOYn+rmFVsnScIHRUl+A5j1OIlFsBUzR8vYPsKnixCAZTq
	 VvuetgEf9ADHrupeSPjU+FbHXPqMZoRfCjYPrswidUX/o9luqcjnxcrSAiL6HLQlFi
	 0xC/i7jNg1bjo4EFctyyvXYJNdkDclMcQyaML4DSYvnTKvEau4YxgEPquHHm/hOQWn
	 U7MtY92y8be1v+imI1fEvO7WKINFygZOjitLl0SayNtEI17ZDWuxQo5rLBcdAecQeJ
	 UPsGfYJuyzM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B7107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342869358.32385.428514631277216646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31ea4ba303c6c7dbe2cc13b14151f840531a45eaceac6c0c8cca05c524b4ced
Date: Fri, 13 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773428693
