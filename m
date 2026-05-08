Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258FF3328FA
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778282254; cv=none; b=LC17bbiHKgmb+b/W9QVpknMCzo2V0NhZOYNL9DLFl9By5K3NI7hLyDhvxfJQv/bAOkTlYqrBYXJ9DF+QHOPH/Ssad9LlxxNv/LgfOfa14R+MiMb0eiw6SGcXlQUTJ/yfy/YdBEbA84tqhF3th6m4yPdXewMm/j2DS0W1KZA0fOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778282254; c=relaxed/simple;
	bh=n6/kXzm2dFNWm1iFmKefn+KoT5kz3kxAQt7nuJWl+Lo=;
	h=To:Subject:From:Message-Id:Date; b=WMdg41CuR85tzdMKnrFodB4tSsMtUoAig2G1sqLmbP8cu7DxDk7ZjDxTIOEY6u/mzVwLqqMzQyGT7BTjh7ZwpU57dggf7zjTsBIvG2ohtk2Y88ZoQo0w1tg6rIm6s+yzREjP4Z7idJz936oM4VC7MZB+70DY1eg89pPW9fqzIjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roL+YDun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roL+YDun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1519C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778282253;
	bh=n6/kXzm2dFNWm1iFmKefn+KoT5kz3kxAQt7nuJWl+Lo=;
	h=To:Subject:From:Date:From;
	b=roL+YDunTR7C/ShccW0w+w+xVVPvznlcAC0c6VPr49/8uIdK1VWWIBlm/G6SwIsat
	 9/mJ3CTVo0a6i/Xu2I9b67Y3cbH2dMSaeXyYkRKgxiVKUgeobmQl/MLuqh6wRNoPt+
	 sKw37BeQWK4j+TT/wIviVyO6N966rfFdIBT/3Fon92/ZnLifW3iG89m+oNvKK00avc
	 CSYyMciFh6Xu/J4nCEbGuH4pRWIWpu03Mh3V9ETrBt3Bj2hQpzcufA6207QHYEGvj/
	 KzBNV8BosfGQTq9i0UcokkKsjuuaNqAhJZuHlsVDbtU+gpU3TB2NR1P2S0N7k1HSSp
	 f3HM/7qSuRLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA70CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828225368.14925.5816756877602136160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c6eb8fed4295945bd91c97db2d41fd61b63ea9fceccbe9d53395410fbc35cc
Date: Fri, 08 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778282253
