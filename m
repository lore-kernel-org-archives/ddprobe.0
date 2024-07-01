Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A4F15DBD6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719861923; cv=none; b=HQysTONtLGVOEQVcR2Fl2Pp3sfV4/jTX5osMD+nevl25a4J4EwzoYZ4ilxA00At1XUKUVO7m5dPgmn6qQ2A9c3OA7hQlnuhpxNn8VK8wvxPRfT0UymbnwiPvtO/6j54aoom++xVs3LidCLwaL4LFUpuKQ7+0Btgx9OS9ke1rrdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719861923; c=relaxed/simple;
	bh=bxd5WaL/sVizk4rFbgG3miSkuSF7ou34o82/AWL9+04=;
	h=To:Subject:From:Message-Id:Date; b=BBqj+y37YKadmJCIlMMF/wnUGxl3/taQ3tyU2Bur5co6n98rA1+TgPmp4li0pML0ZmVeSi/SIO9LHj/eL6aGn1YnRT6hRZJlBIPVhB72wRU9UrJInWd++t4ruOGxZ4X+nLoBvJ1SzrHboJl8DAsKrhuaR3QD7pXuNTRcw6d8xWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9uYLmxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9uYLmxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA1BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719861923;
	bh=bxd5WaL/sVizk4rFbgG3miSkuSF7ou34o82/AWL9+04=;
	h=To:Subject:From:Date:From;
	b=Z9uYLmxzkmd5QEtbrVeOLKlsVjfKXK/EF01DhIHMyVCi5DA4AU+4ZH6ZfdeDaDwnK
	 7XeG/P9bHqwg5VlC6KDTLHg5+uTLB3uij1LQJo1q4ZaiThLolbfhJoYenLIAJ3aZYJ
	 Lb0n3sGNz9gR/wz09b5HhpPgvVkmX0NXPjnao73lbdhoIFEWRp1iQQyBjifx/vsGKP
	 pVHOs4ZK5TBYanJEhROFDJUTgDayo9g+a/ArV5h3scQZexxvap32X4e1EkAeWkrXTU
	 BtnXCrHfOe2mEH5P1BaUpknc/Ag6LFBYXmtDRVtU1bqFIOvzEpJbV0g+72TmO5sZDE
	 P7laOMSX6KBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC2FC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986192283.4571.2289776860824855212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0ab6c6700861d051cf38e66465f66ef2259dbc10c933e76c34849ab5284715
Date: Mon, 01 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719861922
