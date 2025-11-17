Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBFA255F2C
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763402514; cv=none; b=KAovLOzmMBnpaq3Oam+YUcnRap2KedzYpk1FeEcaXkIhuET9MaqT68UqOfnHfR97sS9Z0h/tfJBogIPMadWelEwlTRn2zRojClsHpGIJ0tnDb28RTnPxVN8ne+bstiHmheIxfJJxGFGXYDljl0IssZ+y6QkoprPod3iY6eFhzkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763402514; c=relaxed/simple;
	bh=MFxCcFUABAjMakFwiyiYO1cPNzk66iUQnPpVnPxw1SA=;
	h=To:Subject:From:Message-Id:Date; b=aKW4ImpF63p/FxfQXxcaoRjhkOII1ZD39YVBSJA5pkti7/wbKGvnLkXnM9Q0lCx2sJt1cQ7LZhbB+tbTYyHHmEYg5oNPhcC5hQ7hoW+yBUFsvvDCRtorkyw1GECygWSmOQGAyyGofi9WVZ15AV9wbJRxxOHU+SVkMORhbGh/GP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmRgVkfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmRgVkfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C9BC19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763402513;
	bh=MFxCcFUABAjMakFwiyiYO1cPNzk66iUQnPpVnPxw1SA=;
	h=To:Subject:From:Date:From;
	b=CmRgVkfGlUsTPlIImJot8hHfE5909+JlKv9LAxpd60l0eM5+h/ENnfiIhyFLmMs5T
	 z1YXvYYIktSkmjdOHte29CwjEfwWxKXr7M+udVWRLLe4J8yZjTsI+49hCSE6Mcfl9Q
	 JFCKEixhh/IqDMSSnN4mbFX4uPpE3WeqD2AvYAMJayfSQuKwOt6YlHVWxBZo6EkWTN
	 xK9WjvmklsUUoESqTc6iLDt4t51P+rQyUjukLI+xNud0fm9zDhQPzGUC0Ej9S+RqL0
	 i/SkrsQ096oEXqGnm2n5NU2ZMbs2IzS7Njuzh/1LACC67K7BFYK84ZhX5uYiWvRXn5
	 3PRbgsSsRd0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91710CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340251358.4542.7552755886749921037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4128fe85990079241b99fe9c2100747fb9c478a15dd70fcd0ee8800744d2e2
Date: Mon, 17 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763402513
