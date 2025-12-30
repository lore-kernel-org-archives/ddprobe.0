Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5219320A31
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767111833; cv=none; b=hNhpp4dlXHIjVOfxe7fuSCD3QZeh+9mkV8YxEL4lw/ypWjfVOHRDk1ihwqbcZw9X46c4I+epkYGCXKai4qBwflMDa5fw0ae7qTmdi5M3w5W3WCjTEyAWPfR7F3a0s5qsOQwGQkW34pSwTX/zPJDU9g19JS3NNKRBOZpEbxDqikk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767111833; c=relaxed/simple;
	bh=QoQBkCeR2Hes13ZrjBeDVRQRZgK+5I3dIyR0XnYBc3w=;
	h=To:Subject:From:Message-Id:Date; b=W7vzuNtTgz08Ljk7Pmj7oT4MvnlDx1eX5yz2DzrGqNlV1QoBpHmYGi8kR4Ihp8Xw6uxSa5qxIN3ykGmIVlYFUircZUf2GxV478z5ZCQ5t8Vdu8/r2HdRhGCiWYlFwhKX05Q8q+QkZtXV+GbUg+hnQD0DIWMOViDZr9IiocEL6mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGyWIshp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGyWIshp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE0C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767111833;
	bh=QoQBkCeR2Hes13ZrjBeDVRQRZgK+5I3dIyR0XnYBc3w=;
	h=To:Subject:From:Date:From;
	b=BGyWIshp2rUbbgkaP+s3831JEmIA3ULsjUyHcA4B3kQM3kJ1wEqrNIKsyIaJNyvzd
	 sMKDjFZNjkDHjuMlDBVnUXRLRRDqL47rXQcOQDQTe1Qg+BfVYmD8xV0Q5L2dFT49Xr
	 2C5zZJbB0GkZ4o4u/8iOJe3Deby9BCoN9EJ6sGd2pK/SxCDPzQlNWEoTxjP+lYU3CM
	 BCukVMtrIIcYsV33bBjko2vzuSqbVxLmUbLkI9oaBLijqluaSLHLUJOZMPYyOK8JDa
	 YmdmdEpMsM2a9G5nASt06fP6YescO87vTOiDFZna7mWIovexcI5/ctvJSBmOWYp4cx
	 Y3mv5vxehbTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBDEE4982
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711183358.7590.17820289266131485842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4503a4c12cd96756ec8a6cf708c4f819aae042b37772b35ac872e83e63bfb0c9
Date: Tue, 30 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767111833
