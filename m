Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE45370ADA
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779187834; cv=none; b=mOcWgxozhkq5aqOfBo5SuO4Iw4KWmihL8qV3D1qD5b1OeSDvcGQCclud/k7d6ro0bjHMYTiHOqc+qWaBrPGMAmOvtrJR8n5sCNjhNP6UWoUDS/BqiccHhp7VDTXIpi1MjP7Zb1wDJvnRnZD+9ykrZjKo0STpwr4P80ubmQmAx74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779187834; c=relaxed/simple;
	bh=96fxsnZ1AvKsv5L7Zx28UAjNja/d3lRPhje46RNTA1Y=;
	h=To:Subject:From:Message-Id:Date; b=abjZ3RX6Qzmgo9sG1NgLj5wxDb8KnZJAv4USfsvz4sfk259wuAuNL4RNqcNGz+usixSHWi8GRwt5flMLp86cC8kAP/lSbTpWR3HKUmSkuZptJak8vjSK9i4Qx3+lqAHvk2wYTnozrc4v+JUOxK2BHCQj3p+bEBN77gKPWz7AVo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ljs4MD52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ljs4MD52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6616C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187833;
	bh=96fxsnZ1AvKsv5L7Zx28UAjNja/d3lRPhje46RNTA1Y=;
	h=To:Subject:From:Date:From;
	b=Ljs4MD52yKEAZbmm33/n1O/+W7fEwLQbnvEjvOXD2xlATimdkFvZAR2QGh57T0ZMj
	 uss2T0pw4EzrpLcTGpHBEYKzZlXAwg3moyyYaHMkLU559yIwBrfrS8obHViCymXBkL
	 YgCkfzBnf82su2YOIPPRfmTGCZytTfs01LkqlZx+cpGTp9YDg3BqqOocHAkMNa1KYp
	 XehYcq+vdIuXWoYMEZQfa/FhZpoggf825HfwLjAkopyKqGLzmjWar7epQ9QWDO2oHC
	 JuDAcOz6NOAHAaOav9S6gxB1XOvQDGUhI44P4tcix2HNxfV5KUWTo5deGPUdNTHa7/
	 O7xhyVpWYom5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACADBCD5BA3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918783369.26063.6404988324034500053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd6705482d204f8ee1d5e765097bf4f921578fae8d58d21bfffb14fec504413
Date: Tue, 19 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779187833
