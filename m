Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F71175A7E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785108634; cv=none; b=T9Z7zLvVy0cm7/vv4Gz16pKjYMYkXKlbsXkxojKLxgh6gpfq4ZS0a51fDYBDYt+3SWJKH+4TztjwwSnRK8EOdvpaWylT9m0s53eJJx6b4X7YolgcvTguzUbgvJl1A9tdtGU2YpteVrCcdHS1UyePU5ziWE0xudTDIhdWszDwoTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785108634; c=relaxed/simple;
	bh=KWK8SIgAvJTHFrvhFyFlRvfJqXkfMuQAVBcsiemp4kk=;
	h=To:Subject:From:Message-Id:Date; b=ufPtaXuYANIpsKowHLu4v2YQiBToREVdf0tFARElm95WXHRGFr398rz+Y3T8vZlHMZY9ZwiVL9M9QIURqWDsC2fc9Fxw7uJB4GxOAcO9m6eWdwonq6M4erJqYEWct9j4J3WsMO7oDQfNXnrjgYvezR6vS+oGU3+kKOb7t0kjrz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx4Hp7Gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx4Hp7Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB60CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785108633;
	bh=KWK8SIgAvJTHFrvhFyFlRvfJqXkfMuQAVBcsiemp4kk=;
	h=To:Subject:From:Date:From;
	b=gx4Hp7Gw9lycVmWMEvO1c08byntIbOXMowcg2/wRpTpBpTAo7xpidzuzmBlbKSbPT
	 2glv7k81NuIGhgCt/slg7mOkTYmwavDoTUsMBJTqiERwEi69t6L3Cjhn8s1YTMgqFD
	 1PcEz9vjx7WMwxMyfMeJYEkEOvPKLoe8EclGo3a+IKs9zR3Bj+f6cquelPxvBoMWcG
	 sCKRl7MSaEk8mD2hdsTEXHLNaqAEbAs/NR4pqM6g5GVtVTXf3hCcD9CNMZMIOQe0Ge
	 CQfor6+05V+tN7wsgQDG5NRf+qFcxrlj/SEPJwdbJyoiP26mZyqFozDFjlZm3JEFo2
	 FmDC73/GXzQDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86F3C53219
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510863368.29260.784157410050339893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211d80465dc4022f6479e1c4fe849614511166bf331eb09a1176f6f6650d3c15
Date: Sun, 26 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785108633
