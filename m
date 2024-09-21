Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E0510E6
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726881354; cv=none; b=jaP/qlM6I8Ikg4TZ5xmOoNet0P+Ttc2clKSR0enBCqko3WvKvjpOQ3J5ucHYoGDlMCDrON6+ByOjwm1nCy7jgCmmxRRaVpAH/00VwN51j5sgMMeLaoV2cD8yNrczMyEtBBHxDlHUqZiAkpMZ3RmI3mM2AFE6a8H6LAyMkvPE0UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726881354; c=relaxed/simple;
	bh=7gC4cqqDGGyYFXHN4BMy4JvpioJH0fuqMEkQynIgKg8=;
	h=To:Subject:From:Message-Id:Date; b=NGGSEk2njYlXdK/Cfu2CufnrFlhhz5Mz3bFKWfljDH14iQTnFgT0cfPWB9jCgQDFx3X3AZgg/QpwHQBvKlmOr6FeNDi3ZwhU1xblIgyADNLDQUcjRlx2BYsLPNsCIh7ESaATVo7NdqaouSlLtq6G2N8UIkREdOYxOgtMfjve0xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txt/hB+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txt/hB+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD5C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726881353;
	bh=7gC4cqqDGGyYFXHN4BMy4JvpioJH0fuqMEkQynIgKg8=;
	h=To:Subject:From:Date:From;
	b=Txt/hB+rgN/kdzsugom7snEk1jc/YgcvC6cQnoUxKXUz3V6XQJUjUoqTJZjMPh1m0
	 CPlQtgBYOlOOEpvgg92P8A6s2mDp0vcbUzVdxbgLe9PP7G+UqNbwMnK1gV3WML+tEi
	 L8/m5FWCHW5dndeLX7N0qJcYy2fLa5JmMoPs8UMYwd+SKGC2qc7nb6auYpUopzMzAS
	 /vQECoF/UvEwsbIgdUkDGUpcVFtlJQxORwMZIEdK5GJAuHxVJRAwj/8q1TTQVoCu2l
	 hxWlLixXrZ8ZXiAg5xqu9S56ZQjrXZpnS23gTeld+0eYJHES/19g86LEIHsqrDU/KB
	 E22OlzjsYoG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE1CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688135357.13805.3512988880088990683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afcdf57a312038ce7cd413cc62d1046c799167ade4a1443a12847be0a538998
Date: Sat, 21 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726881353
