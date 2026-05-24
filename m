Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AED33EF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779629554; cv=none; b=Yb1fBuo0bZfFl+8xJPE/4P4r3K7fCdkYKu3OrWYB6cypkFFG9V6BYRyP7+Y+TW6lVSLsc4wvP8ryGVnL9FMQ/La7gRQ6rIt4ejsiX6wXdY86se4lunjYilm58WhoZp2S2fJQRb1wk6JmG64PNuMeqEcZ/vhv8nG84y3dTXSS+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779629554; c=relaxed/simple;
	bh=Rc2O+AQbSbXaedenHGGwoytD3l+vPtvZQIe9nimnOuU=;
	h=To:Subject:From:Message-Id:Date; b=cgNnCZQX6WUySwVelKk0r5/sef1qmsjV5CT5oGCtEao0QtgNU0IFB4YP57toUkkiJ3XvP4L6qPsoi5Y9D8YuUfmo8xq73RKu3Rd4/jhgEkgIpnC0Kfj3guZ5tri+Wl4/jqnNZZ/27NBel0cM8TstNarPo+zq5nK5gSCgUTFyGNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfR0Jp0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfR0Jp0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB12CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779629553;
	bh=Rc2O+AQbSbXaedenHGGwoytD3l+vPtvZQIe9nimnOuU=;
	h=To:Subject:From:Date:From;
	b=FfR0Jp0dgZAkL6sLvW2bnCpP3MAgYJ8fwhxLlJbZX176a2uLXQ6Sga+YxIuVprREk
	 VJ6KxWFP04ngL22A3Co3iCbqtF3sxxjoXvm8awj5FngmZly/jXw/SXTS+/VtWXlKqU
	 wAILiBstSprWukcd/EHqhcd+f44jwEqnzUdIJGbRitmwLScHhMF4JsZPKkDh2mAGb4
	 io0n3ed9INx3w90UPQJMNFkM7rEPFk3h062UMLfavNZ82A0gHhwvTYHYurkx63szn7
	 RVXDNd8LmS7p+YwJ0D5V+RRTFj5FPKud61g5121H+3awzNYivgkmOhFiQ5bZxY1d3h
	 4LIHH6B3BFRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB48CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962955368.21681.10919121109940999332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f402c21559c325a454a81607ca3b7c00a54624fb2ae38abd967d8f389ea7b22
Date: Sun, 24 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779629553
