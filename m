Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EFA36A01E
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776004054; cv=none; b=XoVgPZ6DqtpueVno9O0t+5W13V+w83yZrHOZoNVLtMzUPbxnFJ73TBNfpXEZrb3UMk52DKFWgcL9rO8uYE3JVVFCB8wnjMjJPvuUQwn2kUv3gktkgWRBphVXZ4RwJaLKDHvjvTWpS21tIDuDkzTBgSgIXSpX5Xm9dQz6osvannk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776004054; c=relaxed/simple;
	bh=lFe9XtQe099CdfOXKy4F+AkQlxAquQhI8qkH5PR7XsI=;
	h=To:Subject:From:Message-Id:Date; b=ogHIJtQKQ2X8hzOnctGLH7Rk51YM/SR2rmZTzb6QWQ56+C7ejVuQ7vVrFTJ7IXobPHiS8ObAGsxsiSU3vxif718p/0biSE3yednY8EE5KmdYM03jXUeKnpAd1TLdZs26vwlO7yoJRYyuHlMQHt2avHqlarLD+jON5mQNuac8Sfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZa1l4cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZa1l4cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF60C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776004053;
	bh=lFe9XtQe099CdfOXKy4F+AkQlxAquQhI8qkH5PR7XsI=;
	h=To:Subject:From:Date:From;
	b=CZa1l4cEfNBeop+XT7uVk9Y4DdHJcg4ltylaa1vVHgP62wK6ZX5AEdz0ZFgVrOkfn
	 ng2AaZM1olBbGDdgHjNiK6u7VxwLu4iErHWDe8JScTPyNjPH5EyT3QzndaLdLdIzx2
	 xN/UNVOOaSLqH+kU7NoLeh4TDz8UzT13CvQhLLO9aT7v8/QBopjcRWxcH6FzE6Gp0G
	 JbUHbCo1uQKxkWA0SL1v5HA/BqZfgMvLjGmnyRP448zO97vMX3FOpBLfh2nmMbu6Qa
	 LqBn8BbKJHc2BhsA6MLS+LJA2rFcSYQFocf+gSUb+ajKhTgEHWm0wFM38Z7BxYfjTD
	 QSAChC9r+hR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCEEE937E5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600405368.17774.11066628398090550767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358a3358a506ed1f79a6a8571da7a35876f46774459045ad220ed01f72644dae
Date: Sun, 12 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776004053
