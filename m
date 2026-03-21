Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01182FF657
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774101294; cv=none; b=nUt+8bbJminXEEkC8gK3SNzRmoOVATWOX7oePsfwUKS/EV2qyC9d84pBHWxOTrxnAk1ORJVQW3DBUyWFiesCgnhFZj4uVYL3OIWBIebAjmQBbagyUklj4mJxZrfVdJDKTMK4N7po61yY7OK6Vh89lEunTnVwlyA60KuarlQweWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774101294; c=relaxed/simple;
	bh=iatmWz5J7/OjpLjErKiIVvs+zbPO3bxX7z5cEt55Ggs=;
	h=To:Subject:From:Message-Id:Date; b=ASdZpnMNhavqPOgTdtF+byaWCC1dlccxMwVpJMkEsHqdQTPB1PchwIQv8K83UiAopb+XePUU1QO3k3JszuAXZS4966dp33+keTQzABwTrdFaFBiz3wVxXj5iihUnADVwWo35D/S+3AMXRzC5WJ2hhfs8zd/Z3rtsuL9owibrD78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q75WrYyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q75WrYyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC77C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774101293;
	bh=iatmWz5J7/OjpLjErKiIVvs+zbPO3bxX7z5cEt55Ggs=;
	h=To:Subject:From:Date:From;
	b=q75WrYyHtoI8EMw3uSDjWoD2ElLDjCitCxIQ8NrcyTM2RV4PAuBvaA2E8XJQ0mKHS
	 Mh6S7gOm7nhdSN2QaMQIpk2FKPfOjenAH0hCbPgLeyUyZvCZE368vLB3cLiwYjPRAp
	 mMlAcDUeUgfzic9PUP79IREHhqKU8MGQ1QKjZqve0Yr4WPHO3hqvi3QQOGAVL4q3pR
	 xjEfFAJ50+Z7798xxhxYnAuBNkRYa1lGvBT//IwAuDehNfP/EpIPk4zGWUgjO+2mmz
	 KDF2+Py0AJ8+fusH6rYD0IN7gn0sjcEWQuabtlqFz7BrOY+ieFSOqY7R3DMGZ0VJUx
	 T+sgjLJYJ2q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC241094478
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410129357.9144.15660048749860381057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e11c2e4c0063ed7bdb9755bb44d418d2b403233bbb1803d149a93118a75b141
Date: Sat, 21 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774101293
