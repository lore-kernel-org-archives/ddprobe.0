Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268D421E3C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729110354; cv=none; b=r1B+vMJQO62x0rfWO8Tek0/Or65hres/e6lyJlmsB6anE8J7pzU8TH5GUdjyFuu4D/7l71xe+q00TCnZ4yFJz/TpIx43ekQoQQf6bluBupfWXWGGGfTt9a6U0Z94AW5IJYD2XrMSrxGfWgQfM8Qz9Kj25Y7hNSX+lVnJgObqa+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729110354; c=relaxed/simple;
	bh=0UvKqJg66QoENxUFqoECjugr5Sma4e3+1Pp001ZUJWs=;
	h=To:Subject:From:Message-Id:Date; b=hnuWKrnxb5HyZHEkRzt9ZRWB8ggFknBV6OgJSJNQba0BUPwkRp7xqq3KFKfywefX1pvGsUXMZ7+u/WA84QlXGyup3Nrhr4VUdJV0b4ovXZncikbKhNJveFNZitHGDC2ooEc6blRMwBMZNxWqnOsGW2TaIbED/IDNcEZn7pE+gHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4FHQoBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4FHQoBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE7C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729110353;
	bh=0UvKqJg66QoENxUFqoECjugr5Sma4e3+1Pp001ZUJWs=;
	h=To:Subject:From:Date:From;
	b=D4FHQoBwUnhe1j9wGobNmW2qg3XGEfJofVApoNaBpkuMjpiiOazLaOAuOL7mKOCrO
	 BP43yCPJgwCPsGtMHwCx3gZsT/qzulz1qRjsn19pdJAGVsqsMXZr98h2Qsa7mbd1Ic
	 ZNH9lY0P2KXoTeQDq+tnbt97mUOAjXfLmdqwX2RjzlsR9to/l/y1JRWW8pxKEg6O2p
	 KQOlZ2PX68thB3LK6qBOagMgp7yaz6eEG9vbI1gAMRpLVcG9S0NwJhB48JEJYmdPPC
	 r9WnI3zueYP5BaBDWiiBgvQ3d6p8mwBo+/HWtZVw1LMuwHoDon0dibDN5AcRonIhAV
	 NrQ+0nekAKyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92825D2A559
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911035359.14639.12432422538376689376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9630f2db7e3706a1753dbc0e81865d16b08980bb1aaa165b58eff8e7e92feb
Date: Wed, 16 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729110353
