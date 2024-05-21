Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69625487B0
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716328403; cv=none; b=Q/xA7GEBFkpYjTZ+4XReRFHmJDEGbYdJwZZN/4xfrSBKQqg85K2KDzo6nsl3p3Vck0aYPDq16nota9qhQxcbcZHwJ8P9JwVXGcymfr7Hby+9I+OgBw9gtDAh+9ECyiC0625v3yV+TMuRL6L2Xo7KnA6XRgsP1p7D3QHBNpkft54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716328403; c=relaxed/simple;
	bh=HOECSdlqjnxLmgd5nYxInzVn1coOh9piTeHWrkbB/3U=;
	h=To:Subject:From:Message-Id:Date; b=CqxPAhktJpKgHYi5ZMsxsbkUhmTRjGaHrdGUlMmoC8T3O3LI7et8M+To8o7p5jcxE003TiYO8RPgfK7DndzlvdYWlwz9w/ErtMUMqxueOTegiQVJM/0l0C0xb1UQUk9eqJcTLwAxZZL0uD70AbmnhvajJaDupPjbUlulqaAnsZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/9YNRqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/9YNRqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA516C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716328402;
	bh=HOECSdlqjnxLmgd5nYxInzVn1coOh9piTeHWrkbB/3U=;
	h=To:Subject:From:Date:From;
	b=B/9YNRqr7h3Gl3LGrscOiAVr3iGLU7Xrkbb7VlONLtmQcZLqUdf+derBV4r0XEetQ
	 g/xzbhro6JppOykoyMLgb1Y97S3/S9hp+aLyrH58A2qRgKMHms9WxCd/AfSbEKCm3T
	 niXX5JX0zOAxBsnI18mVDA02T1PeABGXaJM7FxFQGsO4muDKCygYyoCfE65tyVED97
	 InUbQ1htFv6ecuq0VYbkJJ17OIcmv9nDiTyOqnh8LqcFr/2vwunREbDnGHmj0vGUT4
	 eANlzbG9vk2AP0VZhSIHgi1nMn9AaiRX5Mp7tNooAqygX+yaXUMkCHvnq1RlqZNb95
	 /X3VD1o+0jgow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C0EC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632840277.12975.7427761475735503615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98937204e004eb0755be3b77b4c436006f3c9e9a6e8fff03b1f567108089567f
Date: Tue, 21 May 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716328402
