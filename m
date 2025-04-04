Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB7425E47A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743796194; cv=none; b=ql3ckJ2n64fWNpcH48Ratwcz/9mrYqeXvLCQ01in408dbL3MsbV4IAyXvmGfmrmjCxgjqraPQpus7yrXkxIXu47coyRWYy0Pd7+ACRCnNWAOc6nwFY/8kC7RS0cUxzZaJhwuupQdrVG3O/IpS42fWbqCNIqhDXgrDCVcIL8js10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743796194; c=relaxed/simple;
	bh=GUF9IdhEaMh94Y0yF9cdwM7AX+248p7lFqmnbD5DrZE=;
	h=To:Subject:From:Message-Id:Date; b=IUr6UHbyTOvH6ONrWA5Kv25QwLDB5I3fjZt1bHzgaGQxuid/JupXPmqwb2uvn1mwgk6yMJjn4mfsYh/9bhGwkRfBKFqt5/srMkunfzWK9CuMEoo5rXQrglrK4jbQK/EHlhDzAx97UT4dORxW9bYHaTGGR+mmi/7SYcFBh2WswaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAwoC0vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAwoC0vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAECFC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743796193;
	bh=GUF9IdhEaMh94Y0yF9cdwM7AX+248p7lFqmnbD5DrZE=;
	h=To:Subject:From:Date:From;
	b=fAwoC0vx9ifTOBp1IzD7WTbzXvvzmNtTfiCHZ9Ve39rrpQWmokv+8MA9BdOi/xsx3
	 92KpXWFu+6rt2dweRmRLJIIsIoQ2FD8Hm2T0Ab5sSMTs4wjsXtok20NYwh5p/aA6jl
	 xQy4ijbMc1FBu8eKHnPfWheDonykvdvjqkuYmTOBvvVsc3OM4RMPqDVjMEPzr9z0jh
	 1U/kaTLODR0EJPKuGju1c4HV1ju0iAjvDosnyDW0C9hgAz1Ql2oy9ILLuuHqIdtMZ+
	 v8E2rczF8iY1MazZlMn3eKpJZgHj9XMxL9OrPTOEjuwVH/xMWqTpK3rn/FDE1jnDuz
	 PO5whgAU9RQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73EAC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379619366.29137.1706096455999715052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e935717159fe74dc9e5c8997dd9bd719f3913dcc095c70ec0bfad9a49def252a
Date: Fri, 04 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743796193
