Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AABB2900A8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758883794; cv=none; b=gYM98nkHpWb+P/TBHHtX6WpRHxHXN+T0+Dy3mForN5dkaCGSQjRP9+byGx9WZdSx9b3JsEpX364dva4kkva5XM9mxS8yu3MCcUak4L4qHB/EQaIGwpjOzOQGkL4X93srPIgkvUHq81hSyB7mSXcD3hjQKIkmJ0JIUEPYKzV1+KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758883794; c=relaxed/simple;
	bh=f61fQfd7Td3/OddenN5KJiP2jQEHqlk5pUfu26hA5kg=;
	h=To:Subject:From:Message-Id:Date; b=LlfcRm/ce0gS8OWVgH97CxV2jB+D9K9d9vKTPK2yX6/aI2G8OvdOAsoc1q7JOlLivybNHibp3Nw9MMqSoUYbE5MV4CSoTFcbYC0d3HA2rD+qFaYI02MIMSxLXKhp1ZXJpCCsFux7hopG/Kr1ugy8pqVaYE0RgvP9gyB2qKWRaPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk4ncfQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk4ncfQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8AAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758883793;
	bh=f61fQfd7Td3/OddenN5KJiP2jQEHqlk5pUfu26hA5kg=;
	h=To:Subject:From:Date:From;
	b=Qk4ncfQeFl4G0ifgEVHjDXaipsBNoEUiLt2biE3yO9E+NfnRiKAuewtHic1yyVxF2
	 IV2f7BMJdOLrd7U3RldbFuB4daBALZgC5V1PHdYB360H0vLF4EeaeJ+PwHzwV1rK3k
	 eoYCVOcgzZZL/3IL6tAPrJuR30WuDBkTUVbVAk6pH7KOoLURGRirsSgWURn/dW3TRJ
	 SC7V7v7ByoIZ4QZv7L4ou4tsT0XZfVuN8WoV7TtVksXYN0RFPnU5H0yiEHGlX1mYAW
	 Is4XaGksCaXqrgQktqCFBG1PQpMZVlhSrUtP5stezmDqFPr8WZaHVsw1uFhxe31ICI
	 W5N3VOtKG+KxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95429CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888379360.5707.11269459355599343917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fd2eecee58c02c3a995302de14a71b5bbbcd198c6a492d269497dfd84816bb
Date: Fri, 26 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758883793
