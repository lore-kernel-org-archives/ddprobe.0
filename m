Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5122A3DC4A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781517994; cv=none; b=pJhSZPVEux9l9KOT2HxZSifKgbJz4grrKl5ZJXE24/RZES/P+qSe2GtaXNIAz6wB0c7CYlcNCl35xgkITmg28GniTB7P5e9j3cgKiia6WWokliIUhx4SKCR4oIItvIavWip+W74eKuRKsy1U2o1FdaGS434bY23GxWbZpdFB0Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781517994; c=relaxed/simple;
	bh=SWDjDFhOSHZsx81O52fYvrZJxfps/F+qbaz2QSSIn/A=;
	h=To:Subject:From:Message-Id:Date; b=Ngm5Y3cWGKyf+paFVX6OygN+dBQOF/+icxJuyo8/egNNjJqGCE4xdAcYiYvx+HVNqDA3Vvw0izXLq7y1m9G4zRGQZOdu6kHA9eHUg5USZfe0lJ2ox2mabLfCoVxWhOpNR59o4vnmQ6eZAroxQbWxLPPjGjSfSdW/sNiM87QOQXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4vDAM9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4vDAM9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781517993;
	bh=SWDjDFhOSHZsx81O52fYvrZJxfps/F+qbaz2QSSIn/A=;
	h=To:Subject:From:Date:From;
	b=Z4vDAM9a5w/HmIuZdlJZctAbLiA60+uaFBS+R+ghhK5nwkafurj550LLtt3S6wQZQ
	 URfwDqZtBKteXo5qTDWdVepoMCsi8uPJhdQvZVgClVpfGYe17WFZ3gpPQalg9SIxYO
	 n6Fo3qB1O5VTvXrfPpmRsHPKtoIgXmrzFv+lUSVScTrX+OwfFkyGga9NyZzCfBKk7R
	 UGmMm6cpk/hKHAD0GCDk017CpgoNQweJ6BGTzN+XZaXsFkiE1+UdOBffargICgYcka
	 tcELuPpissP7IUOy1UUsj1YmQNOK8tY424PIazdaeRgT+znwEL4WatdKYj+O7ZReQD
	 tqzAoL9Uw4gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACEDCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151799375.20695.448018135594232569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d5125dde98c9d32afde0a2d2542565593d6e40433c08eb5b6b98fcd361aaaf
Date: Mon, 15 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781517993
