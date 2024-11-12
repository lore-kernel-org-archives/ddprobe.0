Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0B416F8EB
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731453354; cv=none; b=aA2djGSuMgR+54T+uBNAE1YV5AIY6hDNJpf3mEs0yfxPvS4ys/GWoTuwS8xTj9Asw2Tqzo6wpKjCRY78lfFqsbVi2qWNpgal6HL+AHV8YZjyOPhEAP1N0tHhzvt7tPXeXpWpf3H3UzEJTHy9Mm0fxLZkgvuW8hqdEZPVpvmxKMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731453354; c=relaxed/simple;
	bh=4kyfqTQFmlfpBvxwFA9sMg2FZkJpCsgH78pzOSLfrak=;
	h=To:Subject:From:Message-Id:Date; b=Tb1+6Pwb8psJdM+cnLpzD8UPI9GKP6nkum2wIug296pQISpm7hu/e+jjDJTDTYNCcuOfhkTIgLbzlsMv5PY6xxDhHSFh99k76hEeGnpEfJLVsKDA4uGuB+0GBl+JnoDAuVBuXg6sqtC5393JO56OSrLhNBry+79ULgbYxlqxyO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCaipmr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCaipmr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC54C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731453353;
	bh=4kyfqTQFmlfpBvxwFA9sMg2FZkJpCsgH78pzOSLfrak=;
	h=To:Subject:From:Date:From;
	b=pCaipmr7FG2B42dGnMhpP2XHh6gcWvgwsa7huchM4tzlhiS4HudnvqcDRjSzj9rfn
	 0UId2dbXaqesYC3vtpSftCfLaKAoK0nHGHTbIEgvt4ZSND7qlLF+LKremvm+ZzzKxh
	 RHNm3rom8AYer2DzGn4OyDm2QOsj6anG4lr3SDNwzrStpARjjvZJ/sftyZVnzQBhJP
	 yyIH1SlIBYavoT5MU/4GlowuOykZ2ns33LtppGJBuE9qPxaaycDs/7iZYxmwlqRaIb
	 pDTC+AXuVJ2UFGeznBh8Mk/z4t4Hen+peKpF3uOJ3XwdzhgXAwF6dyY5Rc5abiZZi4
	 oXkBy2ckD8gFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C746D597B7
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145335362.21286.3873345506098891956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309050f6a3a8729f4a4862470cc279754a75bd6d11fe6a400a96a07f682054fa
Date: Tue, 12 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731453353
