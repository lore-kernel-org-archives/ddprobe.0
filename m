Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44815182BC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735769754; cv=none; b=G9KoZ2lAGi+oJpKJ8Tb5eungSV7eniAkmy0xCsY9KUAjnHdF/K8Cd7QrIO99LTgcwCk9Z5gangrVzYRAPJNv8DQ4wEMyOzow6UjpElIkRrO1xdJUUDIRwisqKoGaXT/jpoQtT8WLobB4Af3tdVYTCHkqBtCvm2kvGi7zqFHjbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735769754; c=relaxed/simple;
	bh=+PY7MA8gB41w+xD0sEWcsPO0yofJxU3/4ahcEX6gYpA=;
	h=To:Subject:From:Message-Id:Date; b=VWU5j1Cdb/BBFVlZSOdQrxr5Y0b1OP0XyVQdYXF6k6TuMHwzfRsXzwdkxEHEKYpNEs4CC9/pJyIL/nm0WXepGD3jgaoW/23IfxtUXkczQdItzd4rZJOsyZ+PEkZ2uKbYqbhARbyAINWzdsJEfSQjHQNJVla/aEPhxc9OMg1nZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfl+DhFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfl+DhFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF05C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735769753;
	bh=+PY7MA8gB41w+xD0sEWcsPO0yofJxU3/4ahcEX6gYpA=;
	h=To:Subject:From:Date:From;
	b=nfl+DhFYT+eFz5qt8QxfWJ+UZmgGSWSpCcDqELtm1hIfzjfoqDcUXZRJrN5BgLRjQ
	 KOvZK9S2Ng4WiXZ7iJNh35vPx9dYVfFk+aKvBJCZ2aXje8s+OIz292HUeuCLgBGgb8
	 5J6zeNEwEvxPF+BclLfG98Ok81OoTIlY8Z+odfCgMGa7Wq6bm0pu+FeVP11GhoDJ95
	 s4uDZPvMvsaYNTNxy11jb16qU+tT7h+BGs9N+UU6KzbkrMEH/qsBAniFwgCKjCHzjY
	 kU9GJI03mxSryQ6SWVSrmabEBL7ylmKnmJSczAzBARYbWc30ZzmHCDgBVQbsaNptOw
	 7ZZkIxhmZWAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E0E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576975358.9148.17233208132522968823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fa930407971b49207288d063e53696605eb87485a026e9528e5312861b0fa9
Date: Wed, 01 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735769753
