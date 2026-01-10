Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35FF27FB21
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768075434; cv=none; b=WipL+0NNANUG+oo6J4obFqDiCfwFIG5r7yyjimJ+LzwBA492cC5lbuaBG5KY87cn82v19Pw7Qmaf5CW7VOp1q6NoUkBLdZJre5cdrsHaG6QcpvqIjakf2Fgms8Y+Ia+hylmThRrPNxh8sOfN5nKEoWy3ElBWsXO5mcAZ66ieXrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768075434; c=relaxed/simple;
	bh=cYi98CTSTlA/G26/rz6aapoR5Xf0qq1tScsIzhRIwKI=;
	h=To:Subject:From:Message-Id:Date; b=aui4UlCLZRtGGXYJkTa6EbyVGbO6dTeI3A6+0iu58pdEgpLFFfZeYru5ree3Ovx2DPYQ+8HwyaLo7JksTCDosa2uiJDGZqjE8TUQ/IK3e3vFzQNxrnqq7BvT10UVCEgiL7jTnKzCjJet9rK5caDV17yGhNJ5rNDquanrV6AiXlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ascy1oT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ascy1oT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768075433;
	bh=cYi98CTSTlA/G26/rz6aapoR5Xf0qq1tScsIzhRIwKI=;
	h=To:Subject:From:Date:From;
	b=Ascy1oT6AzT4G5EFOPCLmsA29NUmqPdZ6hq+cLFHur1a14Uakl+88YpogngiApMjG
	 oeKZlvaz37EJ1FvgtyIysWV8imSrr6XYaxE9cifJIXUpBwTrUfHvK3HgghdOhG6G5L
	 1Cap/ZOMhcMOa1kde2DD/DZzobvHi7Cg7dnZK1EWpdg4p/obresnh+X/AvLCpEzoTt
	 uvFM2sr1YiUTUoPaW6m0CmODuLtGAt0ol63ITV1hSiQ6kc1m+6Q/Bk1Rx7zdfdcq4K
	 v+AjsTXFXNVol/DykWAh8pVBuX4qdIseDIZbN7ioQemsCveW9znSIVy3+oMael6Q2s
	 0lB5NlCAkhjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92297D25020
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807543357.12157.14335053760285975432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87683515bb47d68ede665b84f9c96bafe7f35b02441f708f683bb72d053e5b5c
Date: Sat, 10 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768075433
