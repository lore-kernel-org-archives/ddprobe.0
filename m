Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06321D585
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751744995; cv=none; b=JxhIbYdNOq365VpN8QMF0kAEr0fmtadbN4IbKSJpdZKYsotLMH7NV0J9KPWE4gV07Rz9znP0P7nwUydU7uYiLRByl2iZ8A7ptWcIV1HWX6CXe03c1FMq3S9NijzMvJ6fdF3dShtV3/tT/CwT1IRjn7Tjlc/WZ9LrijsKGStyrmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751744995; c=relaxed/simple;
	bh=JIu98KLCs4ScBtH4//2s49Aorqnlk7SXaMieJ6r3QV8=;
	h=To:Subject:From:Message-Id:Date; b=t5H9K5nluNSHHhl1eFe846ATbP58JoWVq9DHuHQk7kK9M4OVLpcSttdPrU6WjNSWCGJa37C9m2sI0CgsbzHHzgVsnvDwJhC5NBznTZbT1DrZ6U0Cx9pxe7jwFjXGz60cQzugr6QqsV8cu+4Fkth3apEboMPGpoiokxOKuPDGaMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlNMJSkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlNMJSkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2946C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751744993;
	bh=JIu98KLCs4ScBtH4//2s49Aorqnlk7SXaMieJ6r3QV8=;
	h=To:Subject:From:Date:From;
	b=RlNMJSktSA+H2iF4xaOjGHjEanbVRgx5tcTIaHmMKfleu3RZPWmjA066c6o7jxsA5
	 HOE/nShwPlwc+wqMKf/3DezWo7a65N9w+RboZMrOKhA+og+rX1ifZR1eKdCF8fAfLG
	 lJjtTcgfkchi8tlGLFgeBX42foqSRY4LJtogRKH8wkrSWw+aUAFa2wYt7ZHdpB7EbW
	 Wsw3GOKEue7352OhlD2wSP4dfI+XU3IV2cbUeP4Oj9UNdNpsDro8QY19wpGem6WYl7
	 aBkzqqDMMw8tWc+8eD4HU/3ib70CQyUu8MDxLAYfohyq4oMz1CXhuN37GaA1OUiq8w
	 2+mi66MdHLPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA5C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174499357.19207.5990585411276077515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2169b3f346be82464d9b3d760e3d8f7c961dd44de89762133cca74b9ee230901
Date: Sat, 05 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751744993
