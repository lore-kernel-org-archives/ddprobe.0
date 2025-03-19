Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394321E0DE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742404795; cv=none; b=ZMrWJCHyI8t+vqmZpTmEB5yocjc6PYmYyUkyCKcwmzEX0T6O+u92i/ccjSfhVggsJ8sfQyHktEZKLJuozNiZDEYO9j5eVBTCMsllhoSOfKWnF2OohvAA63X1yn1/vxs5/QCyrA2B8+AtNVS/wH4rRwr3hyrBrEqwagaoqdox06c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742404795; c=relaxed/simple;
	bh=Nv3R9+S1OD/TqGDcAiJ7CyOYAgfMHgDxeiOCnAK4coU=;
	h=To:Subject:From:Message-Id:Date; b=SAtAt9pxWQyNLL/DtX7t44hICJg8MOK5zgAg5rFGNszOxs0cr+bXrSz/bwXIRtA8r5V/jsQhU7Z8UHQEJKiyQqv+o293I2G2u4JRv6IlhOSxNYZySIZM44a+hthuo5kXzMgPNJUwhUuSuUwsyEnMaWEfPgDH9bC/NxWrtiFYIOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttS3Cx45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttS3Cx45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F3EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742404793;
	bh=Nv3R9+S1OD/TqGDcAiJ7CyOYAgfMHgDxeiOCnAK4coU=;
	h=To:Subject:From:Date:From;
	b=ttS3Cx45NWQMAI3dUUaZ7mQC0bBmxv7mt0HgtDMDRQRl9qnz+40gN6qcwXFCEIA7V
	 3Nh+E6htZEkMhtzERhwI3PAQfAeNqTw6IkGiXclI7u212kRdEIrxNutt5a6jU2xvdR
	 ZpNQcGA9I4t52zjEzFXavf5wuHcy0vGIKx3mJv9Qx5on/tsf498bOPHeu50mt72qcs
	 jXr7xP9ZGLeb42QCFQXAoHq2Yb4FRShr1rU7Bp3kB1kZC84QJsoJu7RUBcODecztBM
	 4xy/quzCbmcEsmvZpC5P/fr0oMtNeS9pAu/DjCl/VXEaI7jg680ZvvqNvnUZ2kIB8+
	 ZAvFxHOZyoLUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0486C35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240479364.25891.5016322659006120318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4eef7fed3eae79642e27d10ac223523058b0d028a4569e34e74df0d6c1b1a46
Date: Wed, 19 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742404793
