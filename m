Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B4A4F215
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715533943; cv=none; b=BjZ7JUi6jlBUSFvesG10Vp9CX3yrXo1MtB8KXFGMDwrGeZwXl8pN98i+WKP7gizXDSKVl3DUxjSA7E8iqCVlNJQeoZ7Nm4b6sZrUuRC4vwFaThrsvqS0xk50MkFwdBCHJrHR4wZssNDhgogBYTEqWGbxfMVdps159YF69G/tlJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715533943; c=relaxed/simple;
	bh=BA7yKQ28yyrnffvis/TwG5WzjpnoLKWpoa31VGTzuic=;
	h=To:Subject:From:Message-Id:Date; b=C8/5KjN3VsoNQDwv2l82GuYIWPvjD6WDnPJrysHHcnLXUCQkdXlerEgjBLgnHj96+BMp6lbUeDJaJPBF92F35CupnGNZniHXFv+kXMv26NU/dJXkxuBGeTqlT+DCImYNVUpw0JQr4o9ECuZmI2c3uv/fMZyTcqmafBpQ3ggtvyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPUOwhbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPUOwhbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C35C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715533942;
	bh=BA7yKQ28yyrnffvis/TwG5WzjpnoLKWpoa31VGTzuic=;
	h=To:Subject:From:Date:From;
	b=sPUOwhbQgCvQWfB2VohcSTMMK5mcpY1fYh3TK7eijbod2qi5UaXhgECRvZtC/ciYj
	 itdh7guTs/6RJc9HSOUhL+gURZriIEEEHigltzlOgJUo08gCFgdk379ZdkJ6PUu4i6
	 zf4d0cA7Xm/BcuMWT6IzcHaPPkrjT78e1DgJyxiCoq5Q6ko4foqyWuPk9KFq8VOEWA
	 reVGEQz9M3NzEFVFksdwReRZdXU6KvOCQeGCkD1uWIrvLwt5jbuR1bpiQorg+grtG0
	 S2DooRD1Vk94yrBlL86uFihz4GcuMmgGHU6Ly0wanJungFyu5tgClje3akSowzu1Fp
	 FSsjJOPuiG5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B78C25B75
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553394278.21278.1191463773781406881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b305f2d14cc4d9a0bdc4dda38c2e3267532628a774ce63a167fd580d11941adb
Date: Sun, 12 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715533942
