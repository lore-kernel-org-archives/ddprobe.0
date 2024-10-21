Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9FA19A28D
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729547154; cv=none; b=gUxOjpOA0g6cXnE1aBpKlicMJAsdtGQNP4M1tDGZDXJ2UZpjFYcXH9NQZHYSHZeIHARX3g4TbhocO5HrP1E244Idp7RBL0kKsglu+Vl9uocgdfqMUCSv1C/42Ur4lU6USPM9uObhegfR8hrJrIGuAQkWBwUWffcN2mpHbgTIl0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729547154; c=relaxed/simple;
	bh=/m5+e97zieC+dikBdJ/fpSWKhDHuVeelFUaxnsRu8SM=;
	h=To:Subject:From:Message-Id:Date; b=Pi99gtjqAFOZcjXztD9oZmjmniNeiFn3OhN2VbO9Sktk+R9A2VZmv9awWKkoWYRF5ZC//Q0OlZ3jdoNlfPvvlzLMa3/+DgYsgCKE9eYkpI/AkrD/8uBDFkmBfJrywCHOcHbDd3WBa2dFhGbSWM+75Jcsx177kyciK3Pv6vm+m30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaZSkfB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaZSkfB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E07C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729547153;
	bh=/m5+e97zieC+dikBdJ/fpSWKhDHuVeelFUaxnsRu8SM=;
	h=To:Subject:From:Date:From;
	b=LaZSkfB0Zf2MPvH2ufhFz+yZTwZmKsFGbKQ0WCBu697LZlWNwbxRaRDgPo+IKRlND
	 a4sFkgjAJgtwwjkmhH4S7Y8w1Snwc041ecVIgINqXiXLGt2iHo02os+xMXj5AOEveV
	 QuBmb2jBG9VlnldBTGgRbKO1NnaxGZ4SvPnrjOF6Wo1IWw5KbX5VqWH6fl1dNlSakl
	 jWvLGri8hu4Z4tsLejzZrzNWOWsZlP9H+fJTuNa61vr6nz2lC9uS0L7HuWmuqXWdpk
	 vW7XEL7dWT/SO4itWz3kzNvCtzq48kSPGIeFxDtPOxYUlBJwZ7mUqznWI4OpLFUSrn
	 K0hdgR6YUl+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA6D17141
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954715359.29286.4758185270315976241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5940ad33091d3da17d7ae6fccefc83d6f5dee76dcc7cb83414e2180cf0e3452f
Date: Mon, 21 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729547153
