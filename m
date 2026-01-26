Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212C32C0F90
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769458434; cv=none; b=jvKGh+m+bp7D9fTPQ7B/P70PZ2oIRiGyGvlLazMoa+hJIoSCBf/ErXWXKTLa+F2SLyCCAiHQlGwsqGhQsRK4c6lAbcoTZp3nlZVjJ5Z5IcQifyJZFsGxKhpFz37hIAhK3cXbs6mhKBFWuKUBeIx+u5oiLwlgazZPp/kg8bOl8/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769458434; c=relaxed/simple;
	bh=UKnctQhsLuH/YFajwXTUPTTRjEU5De+yhrK+tiv6YE4=;
	h=To:Subject:From:Message-Id:Date; b=Ue8EnFE2imgw5JObtt0owkgE4wWpPvxmjGdXrRPzvmk9QRIWjNGwRwwaMgTgKKuqB2OL4w0fFyNErTtDrMhggTxKzOGXh2GnEzkPk2FxLUtUKESqA/vYyPW3UYbWQq6tSHqlZb/qB+IZPOfmPIwosc5+YelvpxZp3j73wg36PGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBmQwTzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBmQwTzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1664C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769458433;
	bh=UKnctQhsLuH/YFajwXTUPTTRjEU5De+yhrK+tiv6YE4=;
	h=To:Subject:From:Date:From;
	b=eBmQwTzMmq1EEasboTbTIUAToM+WpDv3Lz1GbdBYCdZcviBIjqmo6nuNHn+7NE1v/
	 71h6X+V+D2kkpCI4gwy87e+M+CGQG3CPrIIqJG3ga+LFEaFZ5v3nACPmfRgdHFHzD9
	 ZzyeSZzpeCdPowi3DVu2jnRhFBTiP0amOVqwido7u0hLhHsFtTgkT5Xv+z9Ny46ENv
	 3Km0uYX5PeEMl4PY4W6jSkrcp4NFrG115CP+SwscveiKUj0bij2uMGlEi6UTRpTVvp
	 vxnCD8xGPHAVLy7hHBNJYen3ZT0XGlUenoao8fUxotMN2ifhCUcBcIr2Seb7irA8uT
	 yfHTUmbH7JTEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91593D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945843358.30141.1950855316795051811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00e8823628a0f6a87121bc542b35c89cb8d4af6dc134dc9b5feb97cf62fb368
Date: Mon, 26 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769458433
