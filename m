Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCBD2119
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724605554; cv=none; b=DEED8KYKtaZkWMG8bB52yESS0EzxbNYnHRvQWkZvR/+S/cfp7zhl6LyMZxTTG86VdvgrsbygpQCSlo8yT/q/RZUijodHkgIhBRLAAxd768+5IBdaJIjID8axuZEJyoJycVWSDgzBBjdYOno+NuGO0OJYuOHXFZq9kGTpFxJRhwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724605554; c=relaxed/simple;
	bh=C3a2hQWFW1N1ried3lAcNko0p7aN62KWtML3zD7B0vY=;
	h=To:Subject:From:Message-Id:Date; b=Swgcgz7DL9hjlyE5xqdJOVxK1YcXuKI9MZUEqZbFYqCt/edemjBPS3wUYuh/BnqMjw674Kg6nPHpmeleYS1RixNnPQcJw4wix/0eRmtlAtZV49IEU9jJZFWzXgzR+oGoP1v0nM4zoWuXIaGtGaK2tFVdIEGFxnX5u3G5dxqhWbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF9k7AUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF9k7AUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A9AC4DDF0
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724605553;
	bh=C3a2hQWFW1N1ried3lAcNko0p7aN62KWtML3zD7B0vY=;
	h=To:Subject:From:Date:From;
	b=nF9k7AULlxFrnxTaUiWz9vHoe+GN55GbMf7Nx75jAbqoWbtaDZ9HVTMKaXao4aSsm
	 LZP/saKT7he5tQIoNmD2+MSJYwQtjIY56wecK/OS+Oc7yvnqgRwSfSXZy2mg3UL5Xz
	 Q1QcJSxexIxAjaYBuCcF1B/R1lwUNCKMHZarFShlA8etXagm7O+JXpDntDA4ctV1n1
	 o/eA/HmowGQWb6xGI1SPWt8x/yclrWx1EvpqtM5/w5HJT85KNdJCWPPNvKNqgAHnxZ
	 1lXAPVdV8yDazkm8Eb5TRX9FkZj5Kcgj5wDnRwWhok6k/B6XXjfDCFSktZAfaM/epy
	 oSOWPTyqPuQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718CC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460555359.21244.17043853480632133199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dc0effa27d0e12765df533d05a9e2e47dfc5be3b9108303674ffc3ddf5a0a8
Date: Sun, 25 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724605553
