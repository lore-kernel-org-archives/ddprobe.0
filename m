Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0F6198E81
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753938594; cv=none; b=GXwNykqoo9DVQVprUUvBkLVPAp/+v/P46PW35I1lFMbrYScJKyH5OhcBc4RcEOZCKQsMhx6QpfY+zXw4LRPgI1dYkkLOVhelvjjRsP7bvX3w7KC7qIbQRo5qCUvi59hKVSFxxjEPHL0ODpOtZx2LeNHDmkmHGYYs3LHzpzOC5FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753938594; c=relaxed/simple;
	bh=AeJrlvMxiqUiMjaqng8CsKAMOjq4RaFuGcEX+saPmbY=;
	h=To:Subject:From:Message-Id:Date; b=nTR038eJIQTB7wU2hyJwSBYYOIvCBiqHJwtjOwZH1CWflvEe80erpv+faMQ/h9N+KFw6ilfOIpl8WktmdGqB4v6FU0p2nS2hSaNFwOynIyJCCkdPy9CasGUrVcI6jpfMYk3aaIHbdS1t1XbH6lWk7+IZ7KaHOPriTbG+OdgR+C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLwxUJGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLwxUJGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4333C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753938593;
	bh=AeJrlvMxiqUiMjaqng8CsKAMOjq4RaFuGcEX+saPmbY=;
	h=To:Subject:From:Date:From;
	b=CLwxUJGd7qp/y5P9rWnCTkmsUJzhIKi1scOSFxWMGWSG8bITZ2ereiL8ea4LgRG9h
	 PrugDNtJnC3vGj4A3gmubeQQtJ2VrAsP++uGT+ai2V8mIvybKyQhcnaLOy6Gwa6IZo
	 JRoNQVAITgGRx250BhgbSrliWmcaFXf+su/bdDyyGVTp/9832c7o+CXKX/e2R4NOau
	 uRECDb/SC58CSjV20PJRVPAHufW+d4+Bc6ouFrP9+qhKgsDFHtgsP6qntXeG/vEU39
	 m/sVyYFnsAUnKAojr7xGd3NrMYlst8DCvBd6Wz74sPqvBn6CZwPkQvp3JfBxfj+U0T
	 85PvJf6pMqi1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1AC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393859357.762.17221896406164608409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fc5f1d572d775ab4972ba33c1b3ea042278314fa67b5e263edd56e73671824
Date: Thu, 31 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753938593
