Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1CA1E0DEB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744297794; cv=none; b=exYwkAx9l40ldk2unSDDaua9a+7fHG4WK7a2Xl+WGPIF7nqrqtBk3YbiyoWLYI8w5MbtrQ2lTL/KczZcEb+Ve2wN5QDCXGXnpGp5WM3zFGFUnE/dzfwtRyi5daKoaJpgFg91FxEwmcDr/RlZ5lo2Di5fCOwF3yG7B8r/bOYfGQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744297794; c=relaxed/simple;
	bh=U5Z/LEeITzIFTcPE1yZ7PY24sMWQAP6lJB+fE/rU4qA=;
	h=To:Subject:From:Message-Id:Date; b=GNC6t6IqPl2eDIKdhuu38pvjumd/gKe4ph8mGyvfv8pZ93XlkB5pmB1plCBsMlyBgO1+TWLpnK0egcteMJcDo6KkN93v97v0/9dLuw+Py7UR5WVwgYJmbpsWofFKERomjvZCj4bbrhIXitv5Z0UB7S7LKHuzaIIqxmW5k4gG5pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGDNaD1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGDNaD1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB87CC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744297793;
	bh=U5Z/LEeITzIFTcPE1yZ7PY24sMWQAP6lJB+fE/rU4qA=;
	h=To:Subject:From:Date:From;
	b=nGDNaD1fpPARRpNsPbDgzlldIO96fRa0cMPHoeBbb7l3j1kfD1elzsg1SDm0KhkoW
	 Tp/7UpaRxx+Nlc7YekUMj3CfWYSzi3x9TKW4QdKmRDKxkryPnXmoBPHG8oYVVMRRQX
	 FzVEBu0feuFUskHmoZCSO8KC7OHp+OEoHYHvXEaFO3vewvGRS5XWCGbP/sWMGySg3U
	 Ym0RF/dCDwlspwdym9o2vIqcpFEGQxIdaY18f9vhX97My3dyvlQcxWw43Vq0GychSD
	 quSJS6ppN75kpNzrqJOeFvAbmsmRvVr1flulOY76CD5S6gbbrJUkc8yfvHMbui5M/Y
	 osBWxL1O9ZXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B06C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429779365.1670.11140838086252875391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a2fc065e4a10ce764e933f2644fccba1fdd13510bc753ebe16d43e84c93560
Date: Thu, 10 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744297793
