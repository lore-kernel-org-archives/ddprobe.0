Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A252EFD9C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763715114; cv=none; b=nhjQgIE76SvcU08BreW0MvGcQ4iD7DUtIODfV8SeavMYc9wqdwxrGujGSmKezP1KUMDviXtQQNtwm+EEVIC+M1oBEhAnI0hsoY1gHZcU/GQ2wcorIj9Cv+rorjzV5997WW79d7IfSHnSNTom8M2x+0PKv7ntpe5S3vDkOQPr8mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763715114; c=relaxed/simple;
	bh=Z8LBUWDWM5Ce2Fc3yYALQsChlXmuDVsvhG2AkXVjDdY=;
	h=To:Subject:From:Message-Id:Date; b=daSgRhSIW/kCw/wgEiyUoh3yOJ16zZLEC/cbhMRYb9/4v2rYxgz9YopTyI3GJIGyq+3xTFhx5A2avmEfTKyiOCpTre4x5xV3WN68Hwzq4WVEC4f+MneB6auwjjGLgp0gGZzZtbfMUcI4gUsglQBWJT0OS/21FfcENgw4F25A48Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETPHURD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETPHURD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F60C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763715113;
	bh=Z8LBUWDWM5Ce2Fc3yYALQsChlXmuDVsvhG2AkXVjDdY=;
	h=To:Subject:From:Date:From;
	b=ETPHURD+njZci0QSTf9Bt0m6dmiEbdS/cye2/K6GiXy3l9g/ECAooWq4cFUrdcTND
	 3Tx0x13iDaUf+yl1ifzk+/zwhXTVpgx23kDv59QgDDYoy8ijpcNLLe2fe3I0uLWGnw
	 7ZifC4bk6gYwmQ7lTeyAcbjDSKX1mIZPH2w8quiaGBuSTcWTH6O66PFQtj+6yNUWiw
	 KjdLWJ3CvajLfFC5A2jmpucsucgGSHvnCq11nncXiPLTlQ3gf86bOJVGWlnTgNDXIC
	 zNa/Q9P4sLIIep7OXq+dQEQ3oKsW6sDRsT2uoDDK/QWtao+nnifIyTvfU6zzwl9F4E
	 MG2fNhUoWFfnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91828CFA756
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371511358.30475.15990539192293128918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0010f821b698001db248201a738cb1f91d58f81c02779b001d8bd1f157c5ce
Date: Fri, 21 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763715113
