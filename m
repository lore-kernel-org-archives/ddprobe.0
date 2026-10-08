Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F6A3DD52B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791446434; cv=none; b=G5l+yjvYAfANyKN7ouZ3S2B9yrAdoC3zHPvK+XZTnM752Hk7E85/pKjVbNZw8p97OiXv7CY4dRV7+bIWdnpeqjm1ZV2wWKuP5XKBxNcIr2n4q/22gqvCUXrNgDKpXBZ4pUJiR3PWWDqdCMYEIwOOl68LIpDczzvOGaAG5VjsmOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791446434; c=relaxed/simple;
	bh=Ip4NJxiOJKtKYZw+CQ68aEPcioplu7oyJY1Ot4tVdAk=;
	h=To:Subject:From:Message-Id:Date; b=BK5OQaH1z0YCbuiPW4h9rTMJZ7Rg8QzJt6FyXUl7OyL97MsjW8auemewlkMTgA3kvnyh+ioBew5MN4i3r7veld/mJXoT3LT5Yc1Op3R0CTfZff6SXIt+Aau8lzEnRznrq95AVFjK8QxvclafM479dUhGd2gtpoMZrvtFP2sFxDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQY4vL+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQY4vL+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F27C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791446433;
	bh=Ip4NJxiOJKtKYZw+CQ68aEPcioplu7oyJY1Ot4tVdAk=;
	h=To:Subject:From:Date:From;
	b=QQY4vL+DGkbKiPb54R5P+RBV6CrPpGtVX3a6ZHLlYKMlIwkstAN117tzbVwSY3g2+
	 k65s7C0I7hShE7nsov+W5OUSsWqraYa2xFPvyrX/OXK9dD+vhChx5wogZ33gRZWM8T
	 agqp1YLdjncwhWuW7c7IkDi/vwLHChjQE2a9NEnkXSdzQwK8msBc+x/8qcEZseW2td
	 qjb+DFH25VwkAbqWxKO/4h3Bb/m+aMAmKE0ELh7y8ZPNlTiXfnpYbUjtJ/pKto9TVZ
	 /PGgQTihy/cBzIqbLKZz+p21C7BY9LYt3+EK0lsM6waHogm1x4NZwA/97Jnr28zLx/
	 TMYVgo+AoTxPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D4CA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144643372.2109.11086342779761426705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5bf42d3e977e0ea4fcdf19ffb8abe2d21b33c5e290903c5a193b798946cac9
Date: Thu, 08 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791446433
