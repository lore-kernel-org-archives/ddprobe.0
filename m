Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C3521ABD7
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177094; cv=none; b=NWBSSAroro7276t7+q7NAhTDTM2lRhoo4LKh0dI4Un5iTRqSqpcKeBO0QKtPaSMj3BsSGe1OrC6ffdsMIxGo2QSbgLFMqB+HPfxkBO0fDkBY1LwUZp7HynAycDfWoiwsI8HNAovJYwGo7/RYvdXAzLoB77RnbmipFBdAtU1BS80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177094; c=relaxed/simple;
	bh=07z+eHsbbC1b02aMB4FleMSfS3sIuHXW5hEKzQpiZwY=;
	h=To:Subject:From:Message-Id:Date; b=oZCpDhQmtpymM4zrWzi2OljquHlx+dKOg44LcAML4zuvUHh9gdb9/2L9zEfkXu8cUIzWM/kgPX3Ed5SR4rqbDxOZsdYi7LhCmalWihMTQr2g193GO+V9efFaR9/mISyvj6H1i5fGVvAcTapTrD5iwYxIZd/l7K7RCR9cjeP6zws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tez8Xh4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tez8Xh4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E26C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772177093;
	bh=07z+eHsbbC1b02aMB4FleMSfS3sIuHXW5hEKzQpiZwY=;
	h=To:Subject:From:Date:From;
	b=tez8Xh4bmxyvJHVS50IVVo/ixBkyXRwDn6/jReorUCFA9NNYBnIDCiQwp/oqXlbzg
	 GQsXnGNkb2Pbxg/5Ptn8YAINjYSq36/s4JvKQ4cgeIEosRJiLn/FiSFPRDtBlX/d39
	 UC8uMqR7VXoi15C+/u41ZZRrgSF69Tj70hGm8YCPgmdUwlEgbO/mxZT7ylpoULbLwe
	 HHyAqBvOc3hkLYnWrOgFJixag8roXYISg5S4tQ1r3rcv1dOJY3h2lUkVMC12nZHDUw
	 MITA6lIkORVDkmn4DBsnpSP19doCRDm7ZBYl89pBVW2O/UQUVYyFtwpUNyaLpmTlLm
	 lK9ZMryuWjuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95356FD5309
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217709360.9793.17109117786338775395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef861f36b9db19c5db7f6ddb3b8ac5f0a23ddceda8aa3e94f8362a92f0ceb7c4
Date: Fri, 27 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772177093
