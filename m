Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EB64C69
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721354755; cv=none; b=hYD7OuJMbi+KP34qiGxrn4FV9FCQf36hBQT98JZM9ER1RstS9Z3T5Lt411J6t+Ct4YVqRmqRM2QTlZB0HI/steXFurHQeke2AM82lU02GgDa1HU3y4Rzvdr92gqUPRsJJCmwzJK9PXmtpF2FaKk6pzbnAdxuESUxsaC8FEiu49k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721354755; c=relaxed/simple;
	bh=1FIalWExzE7eCeHw1u4spQSjlLzszUXBhS5dbEGf6w4=;
	h=To:Subject:From:Message-Id:Date; b=uopMtSEFXUnbqnrEoyVuCDgpE4mcQ9qSgMjs0Xrl6QYZ+5yYXWTsus1nn1BXeFr5nBubPqk52Km7kdGCq7sAA7Nrf/cHKUXgbySeYfi0JqD7oVcujnDXDBCZhAt6lO/9JOKFRfKJ0Nv+I7k/AV/mxlZ2+U6YyMTq6pW9B0o0HAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8LJo1bJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8LJo1bJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA8CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721354754;
	bh=1FIalWExzE7eCeHw1u4spQSjlLzszUXBhS5dbEGf6w4=;
	h=To:Subject:From:Date:From;
	b=B8LJo1bJuR1XEZoSymD6sG2JtYl95O8FWKhdD+g9JsfkuwVfddgpSXRAuVwa90ESW
	 4WgVMk/eK9uDp4pVEAXuq5uyGSaR3JdbKTfoGLuCTvPscLlTn+cQ5RlG3KnB5T98OT
	 gmS6sx1UO8bk5HLtBA3HuCqAF+1NIaD6PnaBSjW8gVmRCeaiaqTc59yAt91bsRE4kb
	 1OpRNZAqNkhVxP2wzdhBXjjN0FzcKdNEw058FrFt2BJxcV8Xb+k5VIW5w+Z+ZBg0ej
	 SnzbvInOa0j8nDyZ/JCyiSJz+rT7vs8R4NaO+HfYhzHMHTDnQrtyRwA3/gROQRD6q1
	 j4eUlOMaV/vbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23F1C3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135475361.2594.7376114526318647381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f9810594147f43896f6e0f241d3c41693fdbba46dfa508e32f99f326a8fe82
Date: Fri, 19 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721354753
