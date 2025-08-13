Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1476C303C8A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755106194; cv=none; b=NW+yaK5WZiaiiM+cxws/GXn13ZDjge7hKFsKRvWQHJhdaF6I9phg07Gnusj+pnVAQSGAI95jUK+u1MrM+XBl2fun3sgcFuWuQYje58nnkx7NhlKPNkvwGksHiSfSSqKL9Hy6VV2YauhNgxfTNqnhz6JYbex978fiX8SVi3gOYhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755106194; c=relaxed/simple;
	bh=Ow+C9x4b7HvwIWndtNS7HGFZuvB5QquSVbEWb6w5FYw=;
	h=To:Subject:From:Message-Id:Date; b=WJFkAYFXMtP5D4tL2iB9BWkwVapXrAVxGbkQ2YxZEvOTb+6RqeV9ZFfNGL2jy5c3ifvDvqdI6v3nhyVVfnZeW9YuJiCb4JfQqqA2SGbCojnN9Qhc2Wp8O7/qWqDxbFqVxAtqfmZNhsR18sYGbDvEdGf1E6h5QEBbE861k3oRLVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePpe2+Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePpe2+Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E771C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755106193;
	bh=Ow+C9x4b7HvwIWndtNS7HGFZuvB5QquSVbEWb6w5FYw=;
	h=To:Subject:From:Date:From;
	b=ePpe2+XnnxZNuv9P3Jd9YcCI6bjBdnhQ7kmt9U7VSUfxynX3KMRYMWBaaoZYEuQey
	 oaXpPnU+3o3OWqvqld5S5fKePbHWTfZj5rQpQDhjC1aSUfzAiWaWBptOD/ashpcjak
	 t5tWQYbEA9eh1it9o5kpQXBncYuQePG5y+o6FbdbhFyt3YlaLoS5soOjynk3ZxcgW0
	 U2046FzNX5ZxYzAN/96lYhVcS3TK++jOlPNtJ/uuKNzKsRDIl34Oy1XkxryXknxpqv
	 /KsnW5niJHTKt+oJfKJLEKA+e5RO/a/bzDvJBSqG3hcYt04mZQGEz1S41fnSXf34nd
	 v4cYP2Xh8ksdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA1C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510619358.31876.5312997220050426618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e29a26f2933fa083dbb906bb2a00a3ce658e461b7cff5ffcadcb56e861a2fc7
Date: Wed, 13 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755106193
