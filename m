Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFE01E5734
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767390234; cv=none; b=RcMUQTA9fZ571T0K193y+D0LFey3gCAYFS058iqtYdiEUC6T3FT42aWQiYSalln0hEjYLdXBH4WMQ8IzCTwyT7WU/t5dJKekvoSkV10RaoImjdYHxlMUrB5FVeMQxOSIZ6AqqAM56xDO1WAW+w1M1THSisqnh9U0R1yVF6VDiVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767390234; c=relaxed/simple;
	bh=ksjBPLA5YJlHKsdtFvsvhXk2UbGRdB81qmjTCtN78Qk=;
	h=To:Subject:From:Message-Id:Date; b=YAayt1KWCN2MXKjXJZHfZpKAJtYYfN2gF7L0g0PVLtbx4EDcRB2hgGFmz2oPDCagiTvT7swx4g5Tdqis7YsFDZGFIUHs/KmLe4IGDjERlgUVX0lqTlyaxm0X0wtpesE6/n8p2d8uaX3wsQL3q/VimTy5IWQpOLFdtfiAKppsyeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOzIJrMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOzIJrMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0746C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767390233;
	bh=ksjBPLA5YJlHKsdtFvsvhXk2UbGRdB81qmjTCtN78Qk=;
	h=To:Subject:From:Date:From;
	b=jOzIJrMcBMqiNkSlp/eTAMgogktwlYNJqWAZylLUWeJdbwhpumGiWY9AYgoYa7GvT
	 lHbcStB6ZVmMwByPFkHK+hsNukc2NNloTN3hL2YOWzQvm71X0UvDWPHGqxlyI//fWO
	 elwigiMFxvXc6U4CwTuVM7Jy6uwSLrxUl4iDhbJzHkOkvNGDx9B9h6t+ulMkA/eDHa
	 aInaZu9qkcocbRWbexCsDWNE7NKf3a7ZlRUhNFD5C96kSBg+moOod83Zxnin9BpogV
	 7jvBEwgLStjqrRKxILKAl1/xEPMjJ4oJKF+Xtu28nbJYuLUBdoO508+O00VheDTlHo
	 BjAEitsLuHSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E91FA3750
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739023358.18870.6097170377067499837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181aab7719c0cd2df2e3a83e332a8fc6696ce60102df3e3ee7a5e2a688190ec0
Date: Fri, 02 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767390233
