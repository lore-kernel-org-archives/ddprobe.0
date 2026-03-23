Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4082387349
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774260894; cv=none; b=O71B0afBXOeEBP6ugVVfDo+BhjvNPAPMdQN8+FM1OOuyPIuCMVLiXWCinCArhdTLypo5roH7SErs/UH2DRfq9tveBwwQL7YhWKVQmKBuI8SVkba34pxrRgjzSYemxwQDy2RqMz8VilN9XFeL8scu3q47g2YaHrWpM3IW2eyUm2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774260894; c=relaxed/simple;
	bh=8GhszaKKcClt/gORNdYduip6RZgmmFWGLWdzgybZzqU=;
	h=To:Subject:From:Message-Id:Date; b=u0/gKsBLqA9Iip7wgv3H5ToJUV8nn7xjebK5N+JEc1VEShuxPeYAkCkzGkatVrkS2KiyJeAZraRwBJyiUbJZuqSVJ+JEgZUcSPU1o7qt0uIJsSd3nSZlz875JSCvY8iAD9Hq8uYyijbK2AQ3hujcUxX5KvYIrz8HbLrHmZp+Uc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyteI1po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyteI1po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2063C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774260893;
	bh=8GhszaKKcClt/gORNdYduip6RZgmmFWGLWdzgybZzqU=;
	h=To:Subject:From:Date:From;
	b=PyteI1po69EVeI20Gb5kOwRr1xD1/VVjz0JYrdXQQEFO9m2jlFeTPAdOjac8IcbaL
	 DMzuZ7d+JgIkNw3xEKhf5SHej+MrIpoGD5Qch7FhGNSiI8evbOGM6Bo9HMpJoqYZGp
	 OewOkBPBU5dwm+32hq0kVbFbsKYcCjh7L6F8feXuaP9N+GbbwKtnZApi1F6MbVnCYx
	 StdMiDf2W6Sx1TrSLnIuVpvj4pss/l2Rji1HCnJfBridbu2ES5gcdr6lero14Apz8y
	 lkL8kR6ndEp0+K8OGXBtxSNvgI0xwo1L86duNtMdXC7Ru2Di/04OBTH8ogFZZK5bMX
	 StbO0VxOzJNsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91572EC01BE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426089358.7192.12816361670663578157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3f83264b090190e75b3d751a6ec51c0506eadb171a8018cb8a5c07d50716f0
Date: Mon, 23 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774260893
