Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367C63A1E94
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766792034; cv=none; b=vDBp9UdBxwjiV497zV5uMG3jmhofCD52dsnEJfoNide3tbgxvD67hPD7WZiNNPnWzz3SwvkOl0lGBvswpmpCuDFiHrj8JvIIBdlf7lPoZBMhqsNFIzXqTkGCGeFjpw++y2oai6RB5kt5tyZav/I2p97gI3tS5qCGIu+MPc1Kl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766792034; c=relaxed/simple;
	bh=+aBFrrgHffNKGYGn/xgqn2UgVJqexgDwz+6JeqTy4zY=;
	h=To:Subject:From:Message-Id:Date; b=clHRzwsFmVHFrIY6fV+aIXcC8/8pipyO+4ZjWWMV+DxAy5h1KlxUlHn9+KZuF4MXRQXena0iy90/drttsgkJ+s4Em0S20Zk/SmqMuiNmfVTb1zFd43R07/wk+1YNUbfyziohan4ZzWN4VgwdE/a0gGQ4H+A6fi9zPGxZlfTBThQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIoJjc6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIoJjc6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB343C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766792033;
	bh=+aBFrrgHffNKGYGn/xgqn2UgVJqexgDwz+6JeqTy4zY=;
	h=To:Subject:From:Date:From;
	b=VIoJjc6eCxYyezm569IEms+CSkmO30k13wQxU0wrCtNpS7V5jJ+xFNkS5WhHuv0WP
	 /EnwlTMB+zkEguqonhdwWpyEcQbieQOckSckN57O96KHCNKmcs/1SFetlk47SbFbb9
	 ArNY8MGTgwHxQlBGnpUjM/O6snDhYqAiBh0aoFXHcBkXakxh5o60/JxA3gMhMEgRav
	 N1l1hLDxb8By8klENja+3TmENMMRby1rW7FszaH7dlFpD2Zrr+HeKnfDa4sUeMW/ry
	 QvQfhGLrx6/2vmdD/pT2zefM6ro31i+jNDyGfx6hHJAqvwgWUaU05MTgW0Mo4KEczX
	 Ky7WBPIE3y3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB3E8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679203358.23934.11852295620085929775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bbe7551e032ebd5d614576443475dd0765eef1e1f030a2e4fbafb71365d71e
Date: Fri, 26 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766792033
