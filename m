Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417BD34DCF3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781436994; cv=none; b=A6uyqCOce+feQJyo7SOPkLcUQxqScLXcCiTlodGz1zvYm0/3ru6qs1lzPduWm0jW7neshkITfV3+WRpDnm+aEX/5eWpyy0oTdQeia/Ag4Yb/9vnHsgq/L5rSYiPPg3I5n0HDIkTWnqilQZUC8Yh8h5kHC8jxMI4oA/UZK8fdyI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781436994; c=relaxed/simple;
	bh=MYHiVCSEAvTYVzm2ykzToWGWwubSpN5jgv0Tt7sG0O8=;
	h=To:Subject:From:Message-Id:Date; b=l1Z1D6M77BRz3Tq6oMjafjDa2LasQy7g+yYdqARroc046emP+Darx5dgyd7R4PvcWtxNfgAbOkQW6dYZyCeI6WuQ31nKFkyB1IayMzTQxBd0J39g9k3LaWxSpt5BXc2RVNRFIlV5suLNUS/4kjBf8raL6Tk96IxmsYRX8VYiEng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NK8pmoPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NK8pmoPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2272C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781436993;
	bh=MYHiVCSEAvTYVzm2ykzToWGWwubSpN5jgv0Tt7sG0O8=;
	h=To:Subject:From:Date:From;
	b=NK8pmoPwHWMthZcZWKkB16ti3GRcysb4/KG6ec5ZXwu8yxHLgL2ek8FYGdJGis5Kq
	 NTf4iPjXbgbQylak4dmtEvBsGHATDdtgtMn2cE+OnP9lYZBsYXwTcgForijbHE/s+K
	 u1Bx0KrXO/YAp/E92uh935bVV26/Pa7H3k3Srw5Vf762B7yMC6b/hvw/8EZrYP58UZ
	 wXKDfdQEKVAObUP+gIbVWEx1jhOium2rksn+7Cd67dpvzjzI8cJF3Pa4RIXQejmqax
	 d0sfZCC9ng98E7a3Imzuollo62oR1jscXGo7gso1jbExFHiWx3oY3sBZChRbGKmftD
	 OCIhu49Psb5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB58CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143699369.15688.4207445800581915439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ac269032a908d22a594e65236afe08ca52139e35f7e7f15a850a0a64ff4106
Date: Sun, 14 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781436993
