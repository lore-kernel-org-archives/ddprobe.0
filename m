Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5CB1BDCF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763334113; cv=none; b=gL436DJi8Sax119ZfNTU2G8K4teCwQlwVPvM3QYrPaRscVCg0mReqg9maDUuGgEUY6DcpLJqiRV1f/MVvbEoaRLDeK/n4rkCiEOs5CpGIm1PDD6Yei9gbZnlzQuto9Ir3izx6we5Btp0mMhgF6KaCcA3E38kS5IB1g3fbESyy6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763334113; c=relaxed/simple;
	bh=L0tmBSFf6SX+oLGd/Y9qU44o7WtC3L8XW/VMcly2Jcg=;
	h=To:Subject:From:Message-Id:Date; b=QaWKwHWFmpd5kpdtVFuhN6W1K689swtYRiFxAJu1PjyMYDBXzkl44Ih2QdM6oU8ADV709Hsxtsg+6F6/TBzfPrd36VrdCNxiIK/EG079mZsZD78JUQcIvLwdN+sRl/ima5y81fwZlgtVwY7m6DXvh7uZVjrHO6Ujku7kizg7zaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvIq1UbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvIq1UbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DA4C19422
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763334113;
	bh=L0tmBSFf6SX+oLGd/Y9qU44o7WtC3L8XW/VMcly2Jcg=;
	h=To:Subject:From:Date:From;
	b=qvIq1UbEBJCETtrbwA7YnVHmZgxXuT8C0j8cMbjNaqe3TuX7g66rxUXV/2taJkPAo
	 twOeS0n+6OLO0iypfnmiEt87aPNwE0H6yQ9LMEBKBdMG6vzDI4oMd5dvD+V3gUTyej
	 CxKZdCdfPDHvwhvD+h6Oz86zPiLgldQFT+F+Xd6+KBYC9FAJxDUGqa69a8ZWrqmlF2
	 JRj0UhVia+mz6im/2vQDnlsAf5CUarju65njvUxfxR094yQrxk2CYOTfyFsUPuFR8u
	 MVNyHKwixllR9vhE4sv6MCPLWCjQzC3eb+SYY05GLj3Zdz/jPDEPLbvOWsGplsvzsK
	 TB+QzXcWgc/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97042CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333411359.4245.4880422922575659444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff2f6271592f45d7565e70a6847c4e6f3081d9137b948b84332b25b72006012
Date: Sun, 16 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763334113
