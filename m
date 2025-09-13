Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41413C695
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757724594; cv=none; b=C0PCsaIxZpPpjTI0fP3CtUT4V8ixIPef+IWqEyLbJnrwyiuzqu10CvYJBrD32ThqSvtPUFB5PID/ZnZ3Ubuz6Md2E2pLcN58lEO079umJlWyZu7ew+MvfUoR3zG0GP60qWOQNec78WezrLA5EY5+Y9LIYuFvWJj7xTALw13Nwh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757724594; c=relaxed/simple;
	bh=RFbt9p8/ptngyUNOjYGhSSA2NsAHy0Pcr0tQej4XCxc=;
	h=To:Subject:From:Message-Id:Date; b=n4wPJvt4gdX6twf/WOwMQO/bAjyru/gXEpRUa3InkoZ+axODJxc2vo4zwz4YiPl3WGqBGoncz4eCFbkDL5UiAfbvvzaovrhHR7zUkYnxMgJFImw4dit3Uz4vv/6mjJBy+vYYqM572FvDSTp5SN3wIlow2RjxkGSFV8lktoSBcvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFXu3XdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFXu3XdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE0BC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757724593;
	bh=RFbt9p8/ptngyUNOjYGhSSA2NsAHy0Pcr0tQej4XCxc=;
	h=To:Subject:From:Date:From;
	b=iFXu3XdGw1KWh6/wraLHC5lB4rph8khc0t+tU+0l6tOfiqh5wX1Qft9j8aLodtLVT
	 lI98MdIJIUcKBEtKCcHjqVVh1xb23r4s5j3s8l6A6J3kmriaOC++kS6FSmsv1z79GA
	 /vmv7FEvykeOGfb5U9FGWyXv454/ATHGVO/rPPjpUM3s/h8veuiF12PKdK/t03g4df
	 XzcHxJ+dRR9bK+RPlUWwskYO0qA+/gZe+C6hwbiKaFODn5rFrMiFnNCWrKtKszDNwg
	 0uUfKY5lifse0pK8CUYnO74vTVQ9LPkjTKtQL35B0k1asHqKQgYSsx/gM1e5X2QhOD
	 zoTY7ndrJUrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F153CAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772459357.11775.12602123880085973202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b3304a4c0352ba603a12683e48b20daf36df095c552539547804d909d2ebf2
Date: Sat, 13 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757724593
