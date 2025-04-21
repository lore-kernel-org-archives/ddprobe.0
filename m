Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4060013CF9C
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745245794; cv=none; b=O6vjnhB2T0+1Tiqx5WHqhbO22+uXhiDCy6cS4vsvlcIF5W9zcc4snBzcb0VWFf7LFSf4kTA7UY0LMYjtLlmIEPJDa/cEr9zWa7d9PemyhI8mkpJT5MtvD/JlMdKb2RoOVXziVNacCM3/QZcQbCwT4b56z8XMp3sE0gjpg2ahqgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745245794; c=relaxed/simple;
	bh=zdZyKxZ/qaJGP3VKyGJJ/OzRKW+ghYTpj0IsBia4zyU=;
	h=To:Subject:From:Message-Id:Date; b=tiTJXKsBE3qxlhXSlE3y6/kA9+TjiKmLqJxjX8KvciRxj+Jtc2hoTFqvlAf+D4BQqtantiR7/4vpZMTecDgGXuHwexhFMtme2EQ5qgd4Ms3NPk4qPmwOeaUtVYA8Pp2Uf9m6oVkApVY6HwoI2pbv+llvrVGUxK/KoGGjGXiHuEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CihBPUbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CihBPUbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745245793;
	bh=zdZyKxZ/qaJGP3VKyGJJ/OzRKW+ghYTpj0IsBia4zyU=;
	h=To:Subject:From:Date:From;
	b=CihBPUbA1H6dN2zJZaHye5fpBn9osOdx3wcaORZfmiiguMgK8veEZskHSDdzB/pe8
	 EcYh+t1snYp368g2IDQFkUoM7y2sV8Bv5bI/DXsXsW/axuDhw+sbydrVrf77wUI5bx
	 rjbWdQvpcvlzFnP2Un0hlDJazNZ+hnikPe4jJAEzIvCAI2rpclASdo8Lavz36LYFUj
	 EjXfOksUKzgtqYbR7U/8hLRWv7QbZkV/3qHkjnBzTu7dKz76JPO0vPtBA6J5eGCk9L
	 AXHXHpca9e8vzXWGnAWdor76HBAuGm/86Ryz1Qfng436DT2MUWOQeXC3FxOxBFyPmm
	 /LpvPmPuvD7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524579358.23468.9717192556489383090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec9bf8bafad1809a2dfe800d69a82abfac596fdbb026d52219d4b01b6cb95c4
Date: Mon, 21 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745245793
