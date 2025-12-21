Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F45168BD
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766334834; cv=none; b=ZaHAMAfEm/qImU4K6aDdoL7lY9ZtT0PcLMFAPcDNsPh8pjuC19ci/ZUk7HTBiJPba74xSlol1Y73MJ0BoBS6LHvs8Plo7V0/6rH7IXD1S2/g/neavUUmMFvEjkIyqnEAoTMqXwS9n59I+y+GuOHKvLyd+NwD0Ip24Ja+e3Fydw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766334834; c=relaxed/simple;
	bh=0UKPqqJm6M2/rdIGBWEFRokLBKaLMlFGW23mUWeZ4Pg=;
	h=To:Subject:From:Message-Id:Date; b=j9OCQ83yMAtCx0EQzUdFWSLARZGT/L/oVse5hWqqqidGDzHsXyFv+zf7ybtUyfbN8+am6O/SY7K7NGo0VsxheDFKydpNtZQZritXKFHdUG25HCiE4i+uvUQTpOvXet/XSIso7+2GaLsbvd++HYmCe9ldwhmvJAv0lTriBIw6cXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiwV2dsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiwV2dsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA759C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766334833;
	bh=0UKPqqJm6M2/rdIGBWEFRokLBKaLMlFGW23mUWeZ4Pg=;
	h=To:Subject:From:Date:From;
	b=fiwV2dsBFr5T4UXdeidUernL7FRt011CFOdUZ3dP7U5DEYnj9KBaVQY/EjTA1rJC6
	 aOpuvGY38GcgdY58hrVPhOiQ7HGQwhX9TcMGo96TlIL1IQFxw+uRe87LfxFZshf44I
	 U1JMziyknG609Zt990O/wC2Mq4ZaaXpMXbIb5ahnl/toIEA9GDEcxqItT1Q6qgvv58
	 SZqtgYUZG3k+dvGG7JPhXMbsFcGptB3RC9fJo/lLoICcRkX6DiT5t6UJOjBWJWaJsM
	 OvxR9xHznpwRMSCt4ZEK4bOL1QOxFellY8D0gIU0aOTihQ/Aoj6BdMhUg+ZuHWtuy4
	 T8Q4XXQOSw++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CAE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633483358.22890.3547702393617288109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41db939804a27d00db694ce9baca1bec064142b2135dd1bce524bfec8f54385d
Date: Sun, 21 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766334833
