Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D49225D6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757386795; cv=none; b=R9S5JPU0oQiZ3XHtH6le1sQkWj90QeG+68dkfUbrKyncsU5oz8ntW5okfsQ6W+FKkvgGclCXKKgg2krl/2RjkP2wl7gMMZWduvrfYjJyWMf2tn955bcguonU1mjKKcQ8/Ll07Q9WkGiuvS4IG4I0Rp9rWi9Y+pdEhLT/+X6hfKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757386795; c=relaxed/simple;
	bh=ZESjLFnayCgIH+dVfjbRxosJdSojTcP4orKqh1U9Qr4=;
	h=To:Subject:From:Message-Id:Date; b=CJ6k9ZXjowOOxoPv3o0u0G2JOT0UrqzZvliVUTSjC9PqcrFdZJBfU43G0v8A4E3JxCPiq9E+52ah1QX3BgGLaMcjW5aeAso/m7LfxDWluL6ORr4VZsx3qMtd2hHZrBuRxxLPaj5aX7pzPjVruqua16omAN9i5h8q+132mRkvqJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tW0F7EqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tW0F7EqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757386793;
	bh=ZESjLFnayCgIH+dVfjbRxosJdSojTcP4orKqh1U9Qr4=;
	h=To:Subject:From:Date:From;
	b=tW0F7EqE9J2q9eFc6T6F1qZlhEyojycVWYyvx6Nr5nH8zdbSxK8cLdyrFuL29CMwT
	 If3sNohXr/ub+TrwXqiHzuOvVo4bZmFoh00YRsrfCP4iQXA2StnfSdyQFRQCYnjlij
	 jAocsdtXLutkPDkTc2IFpYjb1OnrvLGY74cxoejLIPW3qztUAc2+86RpSzm8eCBf0V
	 nk/mSnQ3m14eV/hB+q6UdYlzd6i7X056hVF1Fs+V5AjaXwkBFMhvYSuiU5fz+PC0Cm
	 jc/1byx1Y532AmelrV7QoMIMaJzFgXT3tWSw9luXeCCR6U8mNiuHCVbFhfuMGUV0md
	 dO4gJcuBeFTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92655CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738679357.31457.14810379634958312851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6438f20c1dd451012ca72df5e96707ec939e0c94aefa427ba7bb69ae15218a13
Date: Tue, 09 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757386793
