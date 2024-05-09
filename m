Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A7BC2ED
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715280143; cv=none; b=kpPF3/bxyJmrt4c0Gym/2SoTJWipwldYN0rQfx0l0GLzpr4uQMgk2lfzH6oNBh04nKAMGrDhGhZzF5yLr+pXsc3zGV8eJUptGYICUM1ddFqxaIiv0LezhEADaZGK8j0qY9ZuznVqtf9Yxa+9BwgbUF5fbskTfwibVLasgw6V7fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715280143; c=relaxed/simple;
	bh=Owk58xgtU1jf6G7ll/wDTzDQmNClODm+xwohJVh7U4A=;
	h=To:Subject:From:Message-Id:Date; b=IY9hJ/9LJZr6rAK0hurTC2q2QvgepOAE+Q4D/tPVvMrbo2ON3Rw2KRuBCfvDd2MCLeyDS68c50tC5WSyJGzveJnC1O77DYB82Wykg/GYt5N4qsp4EKI9KvqRxHhJMAaIUnJ2qz5Yr8IKURkBoeXVNK6/YlXg7dBYaRJgt24yaAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4bC2i++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4bC2i++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37B7C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715280142;
	bh=Owk58xgtU1jf6G7ll/wDTzDQmNClODm+xwohJVh7U4A=;
	h=To:Subject:From:Date:From;
	b=N4bC2i++sWucNyE7lQpjuXTsxwSWCHD1iOavbRlooNpOERAYiZrPmOrsG/X1nIgeB
	 VnN9iD/6lRSgVMBv4dBzrrDPagj/eoe+HjyTWhwTbSJCAiHCvEbDbY3I0/FXd+rKfX
	 wce7iX2XQYuZjlH3j6i6OlaYGxLwEgaa/e+W0QiHcJdwkHC6dpf80QzWFmbHbeUJQv
	 NKT1mFy5v4dvxRNT2rLZMaEwS35OIYH9E8v2p904k0AeBAeBUO4805VpqCnENhWp+2
	 Qwnhekagp+CPDJUueZUxGquac8NVXGadAmJb1GSZ9zt7JiIxiuGdv8LvduPw8CDACg
	 Q4OwKE3MIjSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29E6C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528014278.8785.13761246498006437035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3675be14843ee437a4081c4816785b80651c16bffd46e0463306483e9d8a40f
Date: Thu, 09 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715280142
