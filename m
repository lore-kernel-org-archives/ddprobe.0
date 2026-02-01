Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A02191
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769969034; cv=none; b=tGDkxOiP3LjF7wpIF9wKlNu2HIDcaLjlyeWhij3TAE+nVHK4nD0rw7pdeeEmxQRjz+W+0WfGQc0B3lrHre1vXGGLZQN8NVbtJ7h3nSpLHOE/NE+6RrLTw54FFLxVfLKeJ5Otl1SgDJuTDQhsuv5/cvE9qsuvbQUyp1EsKSA2F4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769969034; c=relaxed/simple;
	bh=vBwfRel1eZHmr9WJuOonUJ1Az/fshGSVdXDNbQbmGjs=;
	h=To:Subject:From:Message-Id:Date; b=D8QTbkky/QGrqNE8JA4iRC3pgpAhS5DN9d+dnZInexGBINKHmGeyGUT1ZnDqh3CRuYkWqmVpq123W7M5TqzSIPJnuacWjNZRqm9jMgcw9b937MySDLiq0XqmY50v0cvIXXOSgYcLaac8OQJEVMLuTNxVxkQUaMwZFCE1fd+zLf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAzP+3g1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAzP+3g1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC177C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769969033;
	bh=vBwfRel1eZHmr9WJuOonUJ1Az/fshGSVdXDNbQbmGjs=;
	h=To:Subject:From:Date:From;
	b=sAzP+3g1O6aP5wL7XKds1I47j1fuMEhmpRsdkMD3wzCmGtLxwAqAyOS1GjYTiANeL
	 Yw2GEV1EQt4E0L/qo2rzZHwHaOY7EciT73C0tSFo8Dp3X+ikMM4YlJY7+phzZrAN1A
	 ifHAUls/6yqELIMNSFlR0eT6i+kpa4FrhXJSSzkitXyJqqjlmwbLoXZS/uzlcLrfKO
	 hrcy3XG3RqVP+vsAiXF8icXPqO4PLMQO1FFgu5WCyWQOu7+vhxhWxkRpKGmS1QeJQF
	 y4+OV11ie4u0Vz0Mp0/h1hZi7dzAzYFjbJHRpeMdXspWVu+fmEfhIWlAri5B2hBVii
	 o/W51whBWcnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9719EE65296
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996903360.23735.15230815780159117020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5020e1c26c19f1e1b064862085c0b2dabb091426494e56edf8738066bb72e065
Date: Sun, 01 Feb 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769969033
