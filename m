Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D23056B86D
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788882634; cv=none; b=I6ic9oFQMcuMCJyBwhXHvIjRHlftmzHZY3Locvqdf+666h++PrlYcBROmy3aSCN6GrRedd9E66fUD1RnVLjT4k0cvCWzxbdYgDDgMaTiEV8E1D/rGsYBItQsQfHbpyHs2Jlw5QtTLPmnHbIOEkq35MAyR4ITf9LEQ1FaA9V1RF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788882634; c=relaxed/simple;
	bh=VvZlVttux8FFjQhztf4Vzj6B7tFy77UJLhmrBHvh4ck=;
	h=To:Subject:From:Message-Id:Date; b=N3nxJNNEtowRDgne3hmhQXcSmk/IzYK0fUmacxYIHvr+d41tJQHyFi0P8cRUzWD750hIQxDF7KmI3rTOI4AedHnRm4K8xtLkuSDJ4/ZrrrLIiAqyJpSB6iN0aQ6mCVPT9FOPCPqDqrURe6oYu/Zrj0OFjkGE4th93Vo2x7gEzFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5sea7xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5sea7xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD302C4AF15
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788882633;
	bh=VvZlVttux8FFjQhztf4Vzj6B7tFy77UJLhmrBHvh4ck=;
	h=To:Subject:From:Date:From;
	b=S5sea7xjr+Oe1cqP0v6ckcis3jgrZoPzxOHH/wv4+Hb4hDSzsyoaRB5t+oovlqRji
	 6dOIw9EMdoB7J6WMN2/LmuQLqYQy4FFocvnWfIpoNZIraoBfLtxh1LkBG12nGFmyN7
	 lc3laEgXjQnEWfc7KjrEKZ9iOb5mVErKcqUbcX9zY3ASZLkmrx2GBcHuBwhKXPaNPD
	 EhbFdq3D3k76L7lANKu+7gGy+0WkOMgJ8AO/zLr2parrc6iC89o1TuaUR2Ogydfmmw
	 DYCCl1CQMnBOd2JjCwn2lru7wQto6l8baLX1NY8l35bgZ048ZmklOuqpbBnnKI8uhH
	 YNWRJ/XJULQtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22BEC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888263371.10950.17010488216740748980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d1f8cf65bef7dcadd318f0a13621a0cbedda89489897a3170240b6da38c0f7
Date: Tue, 08 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788882633
