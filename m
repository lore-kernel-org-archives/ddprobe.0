Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D6D38D011
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787859034; cv=none; b=G8VpYBRXK/0+xZvc2An9O3Zn+RNOftX/ZQxblnZ0Ha+YgagRWY8yJ1L4ECB+54cXGmrfjq+UcWrGCKlsLi4DAus0e+bgZbZcbWRcmzIcm14UpeVe2Wpg7MF3vU5ydiEUYzLIlh8b3kQKOC3iStZL2Fi3QcciBCZCjLAHPhja2AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787859034; c=relaxed/simple;
	bh=yHpXw+3eh9pseoI9DQ/8D+IJhtiyXu5N9l+k7JU1LdU=;
	h=To:Subject:From:Message-Id:Date; b=pRG9DN3PYR+rcNE8QuDpWDIiRwyyfh2etNmt/ic1axv3vLr2KPuxN4NrrhswxxMb1qOkcxNjO6tk98AUIzmMq4YXUdbcR44m17Na0qoCpiMZbMuSaX+SXZ8gdSheMW8kKaNr/oux1H2YBuEUd7A2xyY+eyytptRdH3KrbjoavXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn+hmA1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn+hmA1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAEDC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787859033;
	bh=yHpXw+3eh9pseoI9DQ/8D+IJhtiyXu5N9l+k7JU1LdU=;
	h=To:Subject:From:Date:From;
	b=rn+hmA1vNieUjQT0h4z/KfBBUQvtLudG8+De/RIqbLzRcsLrkXRnbKJ4O3pH/IMtK
	 O999uCriyY6VWvSYQt+d+ecVSlOYz08I+sgXkKU1XIz/mvs/GOjJUgwWyaotujetmt
	 vMo5IBvFJ+Xn5wQVVqDxJFCYWw9d6bcSeTpn83F7vofcIKid+ngEAbQKWMmq6JD87l
	 m82B1mKFyJ1UDOfb7mVZnUdCBAT4pzk7K6FtZDSF05CmKCQucLoiK4+SYbgOooZi4a
	 Sfrw/d3rAkXxBhPKm6tYO23bJFv+fa6GB4J0wP1H4bFO8IhH7dh0hj5upQ3hPMw/ji
	 khCg7p8nGj3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB17DC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785903369.25369.2030606729066135318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398c896b9a4f6c6b06eb03b19ba5aa48b7e447219118c68417b2021b6a050251
Date: Thu, 27 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787859033
