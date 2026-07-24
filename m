Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCF1449EB7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784912434; cv=none; b=R4uvq+ZjMiCi38iBiT14LTq0nFSEBixmZxrrTKLW06hVnjMQoZgWMnybLR8pRv2rwSlks+MeotpHRtJDLzsYQaekbeenrQL8rs01JcX2xTJMEJ5AWNr1pWb5QZb6sBWcRnvtysS1+4MesjveBfDQUwoyYRiac4Ql+YIRbYQ2Y/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784912434; c=relaxed/simple;
	bh=yHlOVvZ9548+hXddEshUUWd42UAebgvNEcTXOM//PLQ=;
	h=To:Subject:From:Message-Id:Date; b=Nd+camAX0vikws9do4te8sQPDbsL2oRMmHunAx94UDM+62HZXswWDeXpNqrSIQCRsgVYWU/91s7wLug54QOfF3gL6QzjRqmmAS7EjTGIrzmYNFapUUm1YqQGNkGWbyguu2aH/JtQy7c66ZSk26a3lKH7NXLPogbKIzjNuhVCKw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ky85xQru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ky85xQru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D8C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784912433;
	bh=yHlOVvZ9548+hXddEshUUWd42UAebgvNEcTXOM//PLQ=;
	h=To:Subject:From:Date:From;
	b=ky85xQru6CKj28tVMzH5CFDslzCl3ajQ7nWBwOCq0UNwnBw8Fb9cD0NGG3fVSG/oc
	 uh6Qnu7Yur5ERhWJN8h9i3OKW93ElfgU8j9JhT6TorzpUykSEycnVGsZ3hzGLJ/gKj
	 LR/lVnsbXSePZHt+v8YME/VlfTQ9/Y9bt0Aq23geMX3dUDwXTj1sukbbqx3dHC4V5W
	 BUjT9qL/DEviMfTGc3vqeWdj4yOWCi28JGMx2Uiq71Um2Ew6tGUL6KWoOgZ6655kh+
	 8oTQoM+pee+D+kDm/QRwvr2KsdLK57zOJVvZs7OBDC1MfgQ///4/XiamjFrrXWOH94
	 tfIhKnKZ9jdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE368C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491243369.23789.370421167751017903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf210124ca251c6f942b8d4a141522a8a5601934b04b8af1f7f9eadd82424f8
Date: Fri, 24 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784912433
