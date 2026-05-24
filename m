Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1F938839D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779621154; cv=none; b=KjnBuOR+jWSfqg88DbtkxblV7HGmSQFZUXkBl1aiuDqiizVarWpT9D+UYn3hN7gieIIzZToNmt8ynnrmqm8Pmgkl/pWryMHiwXwqM7Tvuxd2MflIuwcVKoVc5vPciluPYgFITMqULDd56U5Xr+SZWAPFHhSQ3saQPSRbd3JX8ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779621154; c=relaxed/simple;
	bh=pcBn2HaWfx8bgeKsWMo6MlFllmuUyUl/sgVHXoA/Uhw=;
	h=To:Subject:From:Message-Id:Date; b=Bh9hl1HezgXrplh9JLIfXSHmoQr0ico9Xlf95Vy78zJ1xiRLwaYlNUn7+Rw56rTx3wRN8vXYBtJXum1wQS7zQ9c2vTjWlDIhFlsDM89PdbUrjX3llHMPoBQx3WVtd+KYw2vYa6iX8Ee1yC7zr2NUoSudpoX3yS+jiFJ6wGeo30Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDefBmlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDefBmlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAE5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779621153;
	bh=pcBn2HaWfx8bgeKsWMo6MlFllmuUyUl/sgVHXoA/Uhw=;
	h=To:Subject:From:Date:From;
	b=BDefBmlSunSd5P/Byz/WBWW9cZZfu9cVHGuoHcjqt8aZ0kQPI7xLr7ic3QqOAE511
	 +qvHkhIQZxZ2JUtVfBAAjgJoUIYzIwr0k3bOMJOkpOcEC9Xtl8X0T0N0ImSQ7LYZCi
	 NNJI6PC2dU4IJW5Zki7LnUdZ0gRQVsI8WZn+ta0a1djNp3NPG9Xx7QfOIQaWJNIiGf
	 AMRhhoJ5ZG75blRfBL/+GnnXVOPjpHm/iwnHxCDct+pUcSngMMF/FpXMWBlNgRga5b
	 oQ1HW+MabESq5Uc2+bI9+/9HXiOf302/1wjmw3Y13PZVM0JbXwoaopNmipB3NC8V4G
	 grVZrgNdu4h6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EBFCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962115369.10104.10836592494289531257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c06cd6bc11dd4cb08bf7494a0da68bbefe586956c98e614f8c1bef6f7ae3dfe
Date: Sun, 24 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779621153
