Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215942FE56E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783290514; cv=none; b=rpfRmBTBIWTb3XMVsP5EPyRJ52XtyIYcNsv3d5puFbCfWHc+i+69hUyNr70zXGT0Gjekn5IE2oJ7QN9EJ8RyEINFN14LN+AYv6YCSrgcyGZccY31f0AiOYUV1ug+KCc1JugvguJeTDZtEcglRHVOhJgrmohiATgzxQZQjRvMXDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783290514; c=relaxed/simple;
	bh=nw7WlLNAgOnvrnh0mUfaqJt7sNbpYS0N/b2mskFGMUE=;
	h=To:Subject:From:Message-Id:Date; b=RFQPfmzASCHGON2ZH//drxvD/NUNoAoE2w4b8nv8TdVAqZD5jCCNqnhs0IkGFMUWl8AG90gGNCZQyXa1b9DGsI+P4dH3EVa38GpILu01VqXr3LYEzi4FvaEB6UDtRkXfVjibaQ9d0HVZrW8YHYbyJtRjrxq5dcMnVoLA/dRwNPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReQwLkKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReQwLkKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BCC2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783290513;
	bh=nw7WlLNAgOnvrnh0mUfaqJt7sNbpYS0N/b2mskFGMUE=;
	h=To:Subject:From:Date:From;
	b=ReQwLkKUF+opvTbAG+cqNEp2z9YAGCfmRF1kRsTh5fbJ9Nn+7Q4pWCT0VnyNzMSs1
	 ov440WNj7fn+QGppsxPMhEFRMnGxm1M8zbCm+Mv4SrvLXhgSJTPrSEUP86X5OhWDHK
	 xOODWF+GcDiy113EeN3XTA/9mkH95nb3fQPGIg8S8Gg+hVaNnexxmxK6R0xxVlHq59
	 XYw4SfaannJ6iOh/X7C4LGhaSJpilVrKDeD+Cko5X6cLgbbVdJwnQ4ubC2dxA5ft2d
	 zxmnJ2SPWt7oQMsYNXvN7j9w+Xqy7LP8NdrZzlLaJ/tiBJ+OfQEXDyIXgx1DLF4lGe
	 c7+2uhdhboFKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329051370.21539.9251865807827642099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6f4f8bee179f17ca68c0d5615810f11351648d26eef40c0ff30caa51d53e3f
Date: Sun, 05 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783290513
