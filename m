Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D81531F2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732126554; cv=none; b=h/NfkOcBggr08n+dR6QPihEBD2c4fzcacDG5QPBK5h0sgMmJljwDVpaPU0jZYXMX/gox5rKCByLrH/ys2KZkMEiBAGJvdCa3542EJ6FRb8tjaxpCeTO4AEhhLLGuqhlTk3W/d068zFROGj0yWrUiUo1j98vxbIzC0OJCUWV6IBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732126554; c=relaxed/simple;
	bh=yvlDWxAanA7TDgK7Te4+peeayZ7KgciLBoGIZYvOy6I=;
	h=To:Subject:From:Message-Id:Date; b=aTR6l1uCO79E1ovcYQyMY34U3PdBGW6PSu9ZJDCL+asgKGY19nx//ahoxAThduAPFLfOW46bqF1c2kNV5N450dV1fuC9BkZ/aCe3sWt97lCQuUQT9RTICvpIZaQIbM8S4h4cqJVV2q0aQnH0fs605ofA2OJmk8lCIxM+B4gdeGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcIi2yyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcIi2yyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC950C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732126553;
	bh=yvlDWxAanA7TDgK7Te4+peeayZ7KgciLBoGIZYvOy6I=;
	h=To:Subject:From:Date:From;
	b=HcIi2yyL6vt8t3osNkGEOk6DaNqWC5B89MII6YQiGAu+rLzI60q0RPAvirXmefDMA
	 vawPim2eDSPIqK9uGDjXlJBJjo4hzqxfzl63kNYZ0ZjTaIe+qGv/rk582bWKIhmDnt
	 mboB9fDKSZ4aqGqXbbr/aLQHrd4eS70Uu9Q47xWHU4uFlYzha8UV45efOqzOxYA4Ce
	 UkJvRNBAzM+ElQTSqC70OM1Ml0dSGuZTp6+NepbsMVoklbG4DbGsM7D0/0IiQnjdIh
	 sXk7bb0/HEx+PZPfV6sJF3OWNpw8oggDLfNqmD/xTs013UmKUG62ltfdrPni475Xqw
	 9zaQ4wHnbGYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E58D711D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212655367.16232.9755208760025735698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7e3101ed81b948344919d845260c7889971ac81a4463398f52f37a370f16a3
Date: Wed, 20 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732126553
