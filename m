Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E787198E6D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737434154; cv=none; b=eizkzcZcn0CkF9i5rbSoQ6l8big9A8tkYPZFhToxfZ3AmHk+xH6BuoLNsABPaX8epSkvn6a7IULq/IM+1XiA6ignZ9BXdrDe0B58HWPWy1ufRj3LfaQnYW/1RiLHkKyoEjBjFUeGgYyHynD5LM0zDf/iE2TnJhfi+q2aMqOaBzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737434154; c=relaxed/simple;
	bh=Y15PMZC+k2GK4KJVHpmshtHuF5oAbm9yEWoc2mGkiag=;
	h=To:Subject:From:Message-Id:Date; b=ho7PQuDO0SWd6Cqjpp+J48m76PobHSUW4p3Tboi3G/T/poPbgi/SvvSasly2IdDFM6ILV0KTc9EOfaSKKDVls55h5yh1+sP2weuuqJkMXWMIQp5xMhfGL/v0iw5p+nb+O4os/n50TTXxen/elNwxiV3A8jpMSU4bKcRddt9SHpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl6tJALM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl6tJALM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75C9C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737434153;
	bh=Y15PMZC+k2GK4KJVHpmshtHuF5oAbm9yEWoc2mGkiag=;
	h=To:Subject:From:Date:From;
	b=Wl6tJALMfOvXkPFNvDkzBFQFy5i1pD8F8QNyVdAycQi3/qSPtFKqlkIiqterMP8XA
	 VKfXhYtJMQgmAWIajXgaygXYtRDzdD3c6Hfdg3zvruUEIfahQo2oGlJL+8e3Gplks2
	 L15Vzhy17FXHTlUicnoDL8WH0SfiZjwn0fazeJuoMftzP5EmtYYDBhylB2F8mD5SU5
	 4oJewmVbFEOcnQXH2mhzcSWswiXevzTyG/D8sYPdA25oUrIJQLMIIaA9df1j0Bmluw
	 2BNj1TKOH6zhMzMRa8YQbqD5V7lR4q8YQ7KAVJPa5wHJBbsamh+EyAI7Qo4Gvo72T+
	 q3WQmHU0k8zig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F10BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743415363.12486.5649983726417658888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6e1c60d226beeca7dac368eb46f561fa400401337e675b1cf7e3e80d41261c
Date: Tue, 21 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737434153
