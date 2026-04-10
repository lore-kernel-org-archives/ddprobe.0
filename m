Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC143164DF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775782654; cv=none; b=XUriH82OObPAtbFvEGYqXke5GdkU6O9eOQ4XiCkvlvOZVqXtFpYikPSbJGi56QpNamelV1u4ZXr9y33eeOsc1xJ/T7kPlmZlRFzoU0lAuhTVlSSFwkENDX0M97XwqocJfQ8Tl1aOBWwPCYcFWBkW5bbVHIcDRGRlPAmiepIMmq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775782654; c=relaxed/simple;
	bh=GFAdc3amzRdvHKfvSv6Qmh6gZr2UxR8JsXBPNBbNvL8=;
	h=To:Subject:From:Message-Id:Date; b=icDtxxWIfQBeKrkUd+j1O6Xb0UqF2XSSUJ5E2oVR6kJ3kAriUvYaSqML/fMrA8By/LGJ92QT2SfVRIidzUFLUdTBSvY/IJYZ48kIlEOc5ZmxnKRG74g0xM0F2dodfk3f4fCh4kQXhZSIW8XGbQQJas8P+WJZnkoV9pg7jxypVqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAjcphM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAjcphM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA574C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775782653;
	bh=GFAdc3amzRdvHKfvSv6Qmh6gZr2UxR8JsXBPNBbNvL8=;
	h=To:Subject:From:Date:From;
	b=VAjcphM0zIl44BDIXodggxTk8Rhq8q4ofMW7n25462G1Lr89q0qCz8ruUCKGhYeWu
	 ycfj7r47LhBB7ksvwFwITgG8SJRLdYc3HGhOwMYX/A92YH5ABtVuu1X2S9E0Nmy/Bp
	 K3wQvPQamk/ci27daKP5+EMN5LcOsojB8gjrGBwCRM2qy2O5e4AvD2Ba40a/baEQdG
	 sNi8UQxYedliDirTWTQbPsmE3pDmlSo1NlAR3puu+aDCjoXcNug7HJ8uODLLlkt6Xr
	 PhF8DTTuWyk5FQGqiR4Fhps1eK5kmRz4WiKjPF5i8bwgTFPVaOoAlLEfykum6Tz+Tn
	 tJHAkoiQ8cbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB57F36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578265369.12437.9941278788133452981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce750f9ef494daaf21beafb48b69bed27bbf725bae279471914e12874da6a9d
Date: Fri, 10 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775782653
