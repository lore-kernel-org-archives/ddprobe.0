Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101BC4DB547
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792165234; cv=none; b=tQR2GcBfNIUqeYNQCHIGF0tfG+FZCpFU7/uJdB82cuOEqT1vMPD7frhMq1ODlyDC00UwCWKCwT5nBDuct9QI+NnnovUmJG5CBblyOGk5NZvE/1M2Q0IoiHE3+bRZB/IdQ0Xb6MNCOPu38PMpsyAym3Y2zwXc+z5gplYcljWE5bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792165234; c=relaxed/simple;
	bh=VhKuGEFcLE+RWqzqQOBsyHTBAtiuT/xbglaQ4oftAwY=;
	h=To:Subject:From:Message-Id:Date; b=TKMT6Y3/3hdtZAiq4eKblLrpGh3QiROGb4kM68zUdMMndlJsXgnkLRzceP8dobGD18dVuCqcbAqzdinuXdj4PzCbylFM8I6iOOYLfQJVTvxLbBoA7q9t3Lqb9GEK6huaOh6dP5ttJlK61/IYKcNuhAz3biBK4WkMMpFOsJzdjek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea/zCcDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea/zCcDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D4DC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792165233;
	bh=VhKuGEFcLE+RWqzqQOBsyHTBAtiuT/xbglaQ4oftAwY=;
	h=To:Subject:From:Date:From;
	b=Ea/zCcDPJFEuXnLsWimhuUsHev/6tKu5RxbuCn3Xo5FWZhchSbqwZPItYbILQKGr8
	 EojmmqXZaelHwvACrA4NsdB6Om769v+vgvA5BQ3w8KxUgqCZ+Rp1K+0HOKwW3mFzxT
	 Lc1GJ6igQ1wZUHOrINmgLzJbvHlsLsqnmKW1RhbNO65WTT1N/VF6qXlHuQnYfBVTpj
	 7S9l/17dLmXv6BAZ5bWO+08yxTIINTJxyrFADwLsCOHR9W2hsC9+NXUFFpziVpAyN3
	 fs+F5K30u3SVCrfj7qi7TM13fIaP+Glbui9rezqSbMY2VXygQZqSAQa3DzCAIcBjxW
	 t5qYQN541NgFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC110CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216523375.4349.11021866485984703805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3e14e29a9da6cb4b3f405a9eed39a6c9a5e25b29cc97429d647b9852f3bcb8
Date: Fri, 16 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792165233
