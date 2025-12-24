Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0467E10785
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766554434; cv=none; b=TFOaBhLchOz6Wr6fzrmNfB4krNvfOKFGd2UuihWhVexmlqVkhUd10x2qL7SdIAh/qmfhqfvwIpTkKQigFH8Q/1zFi0RHmTW0TAck7o+wvP5cNwnBYep0QsfozAN9OEq1J4pe+cVAOMCx6xLIN8aqVD8TYFEQgM35j/LgE14UozQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766554434; c=relaxed/simple;
	bh=C4mCZ/gKkOa3g+5HCgAoEoT1p6Fo8V7sVuIQ0B6KmBo=;
	h=To:Subject:From:Message-Id:Date; b=nQobqloJQBveV26ObFNRwei2SuwZH7FKpsmK2J2OLPlZaiHii5Eq+wVp8nyj1iPjKMJv6CwyVw/cSPU02Dsf6BjWdLMfYOt+kKqksVFnVlR/PQFjIUnS/eCx001JuvFRgXsHPaowVeeerRVRpCXmLcqMiQRMjQVqWah5WakN2bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+PiFosU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+PiFosU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0082C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766554433;
	bh=C4mCZ/gKkOa3g+5HCgAoEoT1p6Fo8V7sVuIQ0B6KmBo=;
	h=To:Subject:From:Date:From;
	b=c+PiFosUGU8y7JeJYnjfvfUhJZM2KdOGUBaZh5Amkbu8SzRtvu7EY4a7QBnWk/lHj
	 Kn4oyo7GozwGarjocflMFfuLj1/4JxdwUmMDmnEWRHNz3KgJxD2e/WIQ9/JSJu9LMZ
	 2Oe+LijDinXn2h+WM4Wda+BeWxWgWu7QJV2MUHty2JSfGZvSNvVKoixNOfDAECKu/l
	 Tr8Dl1behqh18U1x0KNqMmlyCQbgjPFBzAacGsH+Esvm+UCCgaO180svYAj8SLngMl
	 4v65nRVsoosHxtm0eGv7KSZ9+fca4msTSIM/gT7uUsSwlPJg92C2s4cdcL4Z+Ekae0
	 UOeRhSKthaTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDDE74902
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655443357.6452.1407050265270753593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d6de15daec7d114af45db2330743ebf4dbad011c4cf2d85429fe9fd8be075c
Date: Wed, 24 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766554433
