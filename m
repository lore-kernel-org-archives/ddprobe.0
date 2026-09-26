Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA6039989B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790405436; cv=none; b=f64vVvd11iDb9NPObBTchMayOcioj4YOIfhFndYKEk3IhmAMYcLCURIowtg1U5x4GrPLMQ5fLLoFM4E9qYe+02R1TCqk75TfynuYB2V6gkbrRkyR7S+qbkz0ZjIMvhtDyzT2RcARuqlhAN139ynLfkwmh8fRrKkFgjbLHtr1OcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790405436; c=relaxed/simple;
	bh=haSLy/rsRphSMJfxtV6CbFpAKdsYJrmCAg0OGyfZ/0M=;
	h=To:Subject:From:Message-Id:Date; b=bND/l/QEmZFqrxhJBERCJSyBy3wESNM4F9mVvT1jTLvQ2mzWyBxXdT2f5+t4d7bT4sNH+22ZR1Ma3Af2cqt38DzqoiPV3DStH6cGXWsw9tloTEoQ4PS6APB3r/zjIp12Y+SGFM+hT8n1vZ3o+UDdb76Q0Uh2DYvivbixzmX5THQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6XRo4wO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6XRo4wO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7179C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790405433;
	bh=haSLy/rsRphSMJfxtV6CbFpAKdsYJrmCAg0OGyfZ/0M=;
	h=To:Subject:From:Date:From;
	b=Z6XRo4wO1dEgYkjZNYrZBCi1ONeobJu5RByOvp07cmhcYNoCJlOmYRv4ii5UamwYI
	 DB+G5vArNtPSPI37q4C9cSPw2qZ9ACwSKrAhaOQ2VfvFcPcc3HZ+kJ3Lqs6CdjmadQ
	 JceaKJa3Npbwp/AUzdCfgvPpYEYbxRkqFrugHSL5rW8AWXz+T6H3xY8Tco1E+O+/C6
	 p2A9O2JSij2CFKFT1dRzsZfhFp3jPyRms+oK52oqGo+xLSlkdJ6itfqPDoU6sOXnYX
	 ShQcsbacuhEUyOPkok/wgsGwKV5HcYb96BxAY8wdgUdCTODm4CiRsgBi6yQJMf3oNP
	 AK/gQ2Qsty7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19C8C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040543370.11024.3074864971426341809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ede0e68336b8b7fd6e9a654ee0e81ab20eed3e00987390769d11392df7fff2
Date: Sat, 26 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790405433
