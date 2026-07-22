Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FDA38F254
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784689714; cv=none; b=sgQCGF62YowCVyEpo8MqhvpezoKX5Z52YR6t0EWxP9IdZ5rUfXvw8LnXyu9yTSRYB5jSTVPchh9fewXXtdsWq8C4UFaBj8nC3ZPgFVViX9HosOxfR4dqV0oHVzfiSrpQOCntMDZipl8bogZXmchIdQmDEtfsG4tPHeOAEpYEHSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784689714; c=relaxed/simple;
	bh=h1joQFBWirzzu428uaGgUgDOIaSOakCJmn3J8suWLTw=;
	h=To:Subject:From:Message-Id:Date; b=Ka0lg3zVZPObVyGCbSiKN9FsHzZtI4t0m9vbNBF5rwFk9W/tiln2qVkfjZE4hdN/wyqTe8S22dObLH8F4zZl+xtnuqgljdtX2bvU0oCcgRm1OliZ1DryJzhGt00g7Fwc2nwgrAglWYlrFe8qPbg544Q0Fij0MYV7qGLQRvcsjz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epJjDvRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epJjDvRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D72C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784689713;
	bh=h1joQFBWirzzu428uaGgUgDOIaSOakCJmn3J8suWLTw=;
	h=To:Subject:From:Date:From;
	b=epJjDvRuldpWsq3TKFTJF9xk1RUVbr1+vKCI7rxLwNGLKJPZUbZOHhmIUTfWKuy9B
	 f4Cd+Ly7o012AFaR9zs+Is5orQhPcJhbuQUCi00A+73/IKk+jRuMeIDY0PQqtjWGNj
	 Sth+0Qi/bTCkOhut5We0dzwkBPk7ThnW7s5swBwnXozIm4Y82nSKM4qvfFH5PPbBoo
	 h5O/mypiWHrcMo4nCmtFRH/Bg98GR/pO/jfTEfaHPdgna1nYM/Aq1hjfpr76H2yEuB
	 Dnxf4YKkf4witV7sWb5I8p1gML6qPxlJTZ6EXfbj6C+8aWpfPeHAKnmXmwqS7v7Ou+
	 2hSle5i0db0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF64BC4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468971370.16571.9655529212882818266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1168ea8e68923ef78fa4ad7f9348282ef1d286ff9c8cdbf2756b2df812b1d81
Date: Wed, 22 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784689713
