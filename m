Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B152E7F39
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783138716; cv=none; b=Sxkk0/5T4Q7eN2NQ1wySzyLI9NTFJW7qkyhWWO4Z5yj9h+lg55Hs8zhYnDje+TGVMBTGVRSQ1N8QyBSgbdMpOZ/z2oXFazFGD3IZBKUgLXGdeHuhq9m0E6j51+oKlnArNLjiOENWQ7RqEgIbK57HWz9bIPNHxC1Ox28wkV9zvd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783138716; c=relaxed/simple;
	bh=9nSVGC1dwnmxUy2NPMYFKRjOKWHNdUPKXOFkA3oGi1c=;
	h=To:Subject:From:Message-Id:Date; b=Z+6pAYoP9RVr1D5TAHhftJMNAR8+JMBsAsTElFVtUO8u5wAJdk/Ndxl+CkJsKle7KMX2iYB+Crma9n38QusSU0slEwn+c6yHmFOPrZe8Cig4Y5j7EF3686ZuaNerEMTz9juoUXHdkxvua0mm8LNFZ1208RHPeh8DjymIHiGX0os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzCk7DV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzCk7DV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA2D1C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783138713;
	bh=9nSVGC1dwnmxUy2NPMYFKRjOKWHNdUPKXOFkA3oGi1c=;
	h=To:Subject:From:Date:From;
	b=mzCk7DV9zFsJQ/Eng+3KiZbemq/m9j9bcu2izSWO9ol6BJjXp65ZKsqQ27HGgk+RI
	 opKwFLursi5uF3NWv1mndPij3EXF7U03U0gtWLwvksYxc6G0jx/T3Z7idbUXZ1RfsQ
	 UOZE2VbBMiYXqdnffUMiG0dxzrga5O81+IbA7cOsOstOAVPTtVTil9w9mWKy0TW3n0
	 sLiT4ymszHBSHyrsqKTJtfOX9MKKzK58y+wPT3J6+xuheRZzAI8zIXF/UK9HRIpv0U
	 IIGGPunlOxjvvysk1JxmUaujdbBZQHcpUhK0kpJEul01eVl3F0m/AkqWWDlp18jMl8
	 /JtRLYx5MkWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB18C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313871373.14902.10935820269151670401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f48c1a49f9a8e8952bc6b332d7b8b8a6e24821886ac80f5ec24b97c8efbeee0
Date: Sat, 04 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783138713
