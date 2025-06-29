Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BE91EE035
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751230794; cv=none; b=vBckvAIM6rvogXoIkfwmkJUECLeByCDaQZi7ELVXvBuJhTpHSVPA9TNzJKjr43aIYlF3QGfNyLVgpJqk7B+x9cLkaWKC+dy9i+KDL8LQ3XbuWJb1hRTz2TXZEUnEwRajRNYeo0BLYegJPQ0+Sc4WpMQ8A1clpYv1uAOlkGKztX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751230794; c=relaxed/simple;
	bh=zbVrMIR3sy6thCCN13abrBLWpXYsCbm503qaJuOp6Fw=;
	h=To:Subject:From:Message-Id:Date; b=o2c24qKIVytUFhzNUMHpJ9NnVzliuGfWIJYmaBtP+fgcO8LbQ1+POzf8TEmRzLssTPJKJ/FdZB0gE+nUaRCitodz5wx7TtyUUGo4PB9x03rNq8XE0JR9a+GSxCARTe6qG/tnWdUcmsxIBsmHE3Wad4P3LfJtwDuq6nzcaDYb4Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFIcHExx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFIcHExx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F6BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751230793;
	bh=zbVrMIR3sy6thCCN13abrBLWpXYsCbm503qaJuOp6Fw=;
	h=To:Subject:From:Date:From;
	b=PFIcHExxMWFc0okPGKqPTdO2mFDl4G/+sBITH4xcxDAHAgVimkeHGJ2D2Gh6+O0qL
	 ANuTTWHtGMcG18on4BzKpgq7VMdwZwOqAvzo9vnrBbo+B3URw/0mIVsAuJJirxT+PW
	 k/kaxCIOUXWmnyDDnXzPheg1maDKy8bsScKbNtBFEiIbkAh65pWZEvUy4Pk5XZ+cSU
	 M4/jFaqHK0B+ZTctwwWUb7vQpMaZ4xPJBtOX8tUDOdkVitRi/BPItdLLgRrqbhXi9T
	 mycE+VPkcwEbJ1tqpTJfrqq+j5sX+j3t9JW7wJQmhSmqpxdVRxItBQgi4PY6mxuLHQ
	 HNXR/2xBfRrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FAC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123079357.26798.3677367670842928440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a09a3abfaeba72401a08e6ba51af10647655aa99c92ee6f52e9ff9f7294b744
Date: Sun, 29 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751230793
