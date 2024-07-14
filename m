Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623892B9A4
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720989623; cv=none; b=Lc0nNbsQlC+/erCf8x0r1mGzQYX7EPS2eUWRBLscjEwk1FY1TFy9r/XbXyiU3fR7nIl9YVkDtPg/9FBZVeX6TanDTqssuOEyWDRcnGgRvLmK2WAovIPO/ymXYMwa9XlTjVzv9/wusLnmDU6+8HdFKeYdyrOFZ7lBtuik4/qNvIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720989623; c=relaxed/simple;
	bh=xDJe5vvEkXNQkAjjfkyFV10c7O5AoNpDtQgNmI9iOUo=;
	h=To:Subject:From:Message-Id:Date; b=jZ8weqEEf/VmoxKQIF/PK6hWQyvvrefZVLfOCuOFHloMFIzsKRmE6Z+bzOjVRdvt6oyTPty2UIdTSCcY7GJMlWd4BwMOJmQg9CQEAfvBjxs111Jf3TZGoLC2H0BA0xVz1S4OzMTmYb6YBFchIDRxEjtdKwWCyB9LDjAn1ulTvzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrT7g9Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrT7g9Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2AAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720989622;
	bh=xDJe5vvEkXNQkAjjfkyFV10c7O5AoNpDtQgNmI9iOUo=;
	h=To:Subject:From:Date:From;
	b=SrT7g9GuOYKks9MVZfcqbdS1cOGSBmiSwJxIBYMTnrKaKAaRcMsemn+Y7bxPMNwMg
	 FDccx7V4ueIlDuqGNWefZkEhR47lGGLHpUSYTwrF/S6iy6tOjLxxkKLa/T2Ln0B647
	 h1WKU8cXR9lkpm+mzZL+iOlBGACAMg50iWRu2nflvTNWgiO5GhlcAVm5v3PtAip7Sh
	 6jrNCbGWtCK0+0Xq0lP2+eeu0KIa6hNYuVTsL6sN9WmhpQRQ11jxupX3JmrVTJx4nk
	 jIhVJQLIs9hU1VfXt8d4196hKbOSKzD5Qis85/YyiVyunEM0tL2aR54HvMqseteZL7
	 KCScR+jJAIe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EBAC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098962277.2234.6581547771028983958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8be43254a5af1bd103a57f0d42a2bfdd089a2d2d03ba3beaf16f1ddae88fc44
Date: Sun, 14 Jul 2024 20:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720989622
