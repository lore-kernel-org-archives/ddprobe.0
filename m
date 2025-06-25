Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C629C33A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750867194; cv=none; b=pCfXBw1rfcdJh62eQgtEfxQv3dEx9HuZvVEn7b1lruHvRcIF+++SP7ZH2l+CQjCloM11DXAtqCnwvVUqRlpUdfNsCX3Cs7Peq9rRIWSXoQ2wxhCy0kEMHUTmcO816pFKr1EjGVqY/l9Gls1h6m6or1hXzNV7m01UbpIUlYGtYxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750867194; c=relaxed/simple;
	bh=CqKxg96iK/1nGSD47yrpA6i449X3v5NBtAB+UgDGDpU=;
	h=To:Subject:From:Message-Id:Date; b=d0rSW57pLVqUDq+yPhjlJnNpQNwBOz0e/0EnD91cWvBdGIzi9BNod5aK7u3WTp1Gu6k8emWo/dptxYSVzwOqGX6QiZ72N9gOPIrGKAwutTEXPdvq8p31cnib1RcbuCRAyzsE4ZKI6EHHoJhvPoH/uqnoFtGFiDON8Lk0sXlaa6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA/qgUTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA/qgUTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F209C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750867193;
	bh=CqKxg96iK/1nGSD47yrpA6i449X3v5NBtAB+UgDGDpU=;
	h=To:Subject:From:Date:From;
	b=NA/qgUTvrK8KErw9HiKvu2v+KxqEIYwY3F7bztPzzKIKaQkwr2BiIJ4kOIHvK6FsB
	 a/Cw7NRam3eau0J3MZeLU14LAZESHkBuPNozREpcgfxXLleSSiomAsB2k6w+Q1tD1Y
	 6p+LP9xw9Vvz7wJZ2NwWX+iyRgTl3H0/T2t9yn0coVYrpo6CUFnyBsRQWbco/R25AF
	 g8w2CJTtQ5zo5N5Esee4S1CRfVyVBMN36JkviX5fNvJ12/LRb6B0Hx0bEE//j0z6MD
	 8eI1oMR3jx7SZaAJ6AJPYTqizsjM2m9XEk932BkziIXEWcHuc9xWfo2Eorv6lahBor
	 Vn3m6mZ2dt2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD45C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086719358.6811.1738842231252103983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9871c95b45f58c2b7746d525fc14a6b8196160407ffa569a8539431ae36cfe1
Date: Wed, 25 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750867193
