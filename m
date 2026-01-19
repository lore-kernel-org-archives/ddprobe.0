Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250368632B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768789434; cv=none; b=nEL3CZxKlvq2pBqMB9JCw8fbjtzLrumbpft1rffYENwo4zaoeXUJUXmYNUb6Z63IQi+2Wj42F7g5wWopDzfi/kQYJpZxGx+gNVgjo9DeMkwfIC9Tbhjei1TAMqxwRR2Xi2NBAn2aaVbUSG8E1ir2hTbSoIRBdPwdTZVJh2y9ax4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768789434; c=relaxed/simple;
	bh=OIK9GcrBf/MurTuuKBzm3ebuROa948RY7HloqidLn9Y=;
	h=To:Subject:From:Message-Id:Date; b=cmFpHcF9VoZMwmsdcsIPKE+ZJ6eb9IWsOvVdNypzKoq1PNvJSLa/htexz/TJNGiA5gvfAbPCLcf0pOXwKt6M94g1BbLBIoZusIh6wxaE6405Zc/WBypNgyIBaoVdUVqOYrqgKbI8i8jADcTOerMiVQvkwonPJe2tFG/Od/HyqDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSpgzE2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSpgzE2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FFC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768789433;
	bh=OIK9GcrBf/MurTuuKBzm3ebuROa948RY7HloqidLn9Y=;
	h=To:Subject:From:Date:From;
	b=MSpgzE2T+MdUZCaENPBULCpxdql2B39MiGNOTAbyyGGnv3runziBEl6B4VjFndgIp
	 KmDP1rbf0usjl/TNFMc8qA0mMq3yr82wuHF4zqG7UMlqMZREIwT/MnHuMOXvS6WZWk
	 HzyfTjGD5Bn4C3nFjtjlFGc/1VVQRXYIhiCXn933XEwxriiotusG53W5Lj+X+sKNci
	 LtSY3gymHil2bZQOk3ZVwEHpFVVr0K2972LH1G7FjXT4EQ9zRjWaBms5BtaEraAT0T
	 hlmAocVjHhGNwK7aHRpntCaBM+TZrR6skOA6kvDxIvxIl5FB9AaiDiVyZPxDDL4JE5
	 Ih/Xg/3ji6zMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC0C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878943358.20269.11390912707104315917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e731cd5696149a3a356f36b74b78cf9332213c9755dd7127fdfbc5eed6ccdb
Date: Mon, 19 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768789433
