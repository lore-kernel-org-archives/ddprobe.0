Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F933A3E7B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775550334; cv=none; b=EnqIv8aFF0FbK4iKl9z0avp5W1v6pR50lPzdMyjMI/+9qo7EjdWIxdQ0CIDNLy79Qp0RYh6ZmFv7r+vjVJYgi85iPqSB74VJ/qHBrIqtdqAL/YGahf1qXxOps0zRLOuvNyZHMwdWwFC3M29Hf2sorpNHnIJby4gNsqPpSchHjik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775550334; c=relaxed/simple;
	bh=qfnAwakgA/Tt2vM3ZHg7O7pKXy7gYY/IGm1MVeilrYw=;
	h=To:Subject:From:Message-Id:Date; b=B9yFVkA8dlzH92JehVZvo1hVgtmnSzT4tEFmI8d2GJhidRIiDF6bvnnnG1bYamu2idvnR02q4FEGKeLOSAOavdIyvyIfy/5ar+6yAjj/lJQu9uW+n9CBi08u6R5erSeub9i2PViSAOtYX2Wqbbxj2wBZ/0oVmJJWgeedtsJXEWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8pyREBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8pyREBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775550333;
	bh=qfnAwakgA/Tt2vM3ZHg7O7pKXy7gYY/IGm1MVeilrYw=;
	h=To:Subject:From:Date:From;
	b=J8pyREBW7ApjmozApSTEAR/nW27oHe5Un9oJFKaHn4U7cEyfi+gDXRot6gA7LogUg
	 Pv4+RATRILQ7xdCYU2WbacYUNVZHoP2NvURZQ3imlUt7VvE4caN0yDdnkkBhdQVxnA
	 u4L5ou5uhAe5WAfCT4Uikh6QG9E1EmGWtBETi0OCSIO8kuuQF35o8drHzHje0D+XzZ
	 12dgNejMpjlsNAD6dmLBKOdfK11UoX0MjydopCMo+zBHX5TqDPc73lxs6+xQqM7XAm
	 eMo2nJyDyyD9WgmzkcCL9kQ/qPubD5qh6F/QVMpJK+hwKT4rsF+KXfcI4aQrXeXbMg
	 Z9t6rYtv2EDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE105EDB7CF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555033369.14253.1145085172273854364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bceec32349edf3c56f3932a15fa4cd7322bbdee5fdf9334305a55db19b8c6c17
Date: Tue, 07 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775550333
