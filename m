Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0919B1A38DA
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711286297; cv=none; b=hkkfd14O4XHSyH2oID+3h0rdsKu8n/Xh7WzqxRao9KLicbg7PHKFEN9GDZBUwx4MGokYBlebAuRgehDm+1nKMGoFQh3aPCysUWmF/ckiXn7he1gXhTaBDcut8Co52zK80UXfS6TFHYzHmjU5JcVphY4NkCoLMFzx3bAVRXszMZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711286297; c=relaxed/simple;
	bh=g088mD10ylomF60Nq731Hknu0Wf0YzsJEc7sJTz1U1g=;
	h=To:Subject:From:Message-Id:Date; b=gVb/oqvB6KLzE6VXhB81NXIYf3l+GcqNdvj5yShisV1RuQtbib7YWBeDczTwmbNEXWcCDHLqXlR2cBE0dQT0HEN+shRiz9vs9HYcceiiw4FOtrVLQSPMVGwHvWPNkVXQma/XxRuJdAUfm6DQWDu83USbgn8o0iJH7MB85oglGYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHZBblO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHZBblO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AEEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711286296;
	bh=g088mD10ylomF60Nq731Hknu0Wf0YzsJEc7sJTz1U1g=;
	h=To:Subject:From:Date:From;
	b=fHZBblO+XKZFE5iSYaAg7EwOeajZ+UN3fxl7TIrYaWysc6th5aw5BnMRmMosRQaJs
	 aGGKjA+WRZV6jfmVgWtUCOTVVbRfpi6koyfnKSysiFil5RpE9MbjziV7RWCM1YEu0N
	 uWribxxnRWs3bs9h4LJAQh//N4rVmGN3snbMvza7MGldWSVW7v1cuJYxJK3d1tSKIY
	 1hLatQUZ78gwXbVrWIOQdXCqRoigDFlkHI+tKU7rjyWrK51ZVd42pMpCp/YV7mKhkF
	 cF3hTrsICFlzdwsoIilfNfOs6M0JLC3zh1pxSrZoaAIMIL46Im692EK2GsyD3TlLqj
	 2eKmizkhGnL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62318C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171128629638.9678.10074877918524626577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe8cfd93b987f9ec9c868bce5f5479033eb9b1483125a88cf68281927a50cdf
Date: Sun, 24 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711286296
