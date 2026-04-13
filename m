Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0F0313298
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776098853; cv=none; b=V8V1hH8bvnHLuW3LqIoqtbac6tnNHlJiSG39oqmm+mdAmOw075Iy1OIl3ZJTpHQQ4Q+POO/sPzwkg1F48SE+k1jNgpldriVeSm8h/3kCk4wJqtOS5UocUjcbkTce3CepbetKPGQ9HUzFBqUgjNNwJcZb6BKOJ1Lc4/QT8EZeyqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776098853; c=relaxed/simple;
	bh=FlACbW6EgvzzTlbLjte3acjpPkKlsLnF2T5yMJcdchA=;
	h=To:Subject:From:Message-Id:Date; b=bmYZlvh+QsyGL0gAo0vR60JLks4th49VyaL9YqAT2q+EQiwQdYTHGsEVTfdK2JTtJSBcChY0d0AdV/iXsvIHe1nhC/ip5EfwH/BVVWLxWhyXLTNjkURcK3sM3CpxxoegaAVziURjSaR96btHbf6OyHtyFW7Z+Bvt5J3eRbGdJVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQFogeZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQFogeZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9994C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776098853;
	bh=FlACbW6EgvzzTlbLjte3acjpPkKlsLnF2T5yMJcdchA=;
	h=To:Subject:From:Date:From;
	b=gQFogeZoltPnTjo9nH+ZhTKbXubGfgL979qMV2BUZXTIY8U59LEr/p1oEhd5ziKZS
	 1hatDDYeksoEAmNuGm55Xeh0ZqfYft6NufAai4IQ1uVACm8eV4jI4yr+vOKvN+UqtX
	 7ULammdsmFL6Stqq6kcQLu8YuRbhR0kYjzcUDGjzIOwdv2R63YgzYIecSK8In/dLxj
	 6h7Ggkvm++T2TADx3mXyvqWNAFbafqbE4puwCobaq4KAv4jJdH52Lm7H9fvgyFVlzB
	 xvX0HKgDfcfUnNKJ2EageF/0/jnsnv1YzXgyNScChdm1V/JT4RU9vy9pzTgdEVuWQq
	 W7bKDF4i+InUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF1F34C65
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609885369.17003.7939349234714507367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6820aeea2741646e41cb31e3dece27ef99af97f8ee0049bda1cb732496b16fc
Date: Mon, 13 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776098853
