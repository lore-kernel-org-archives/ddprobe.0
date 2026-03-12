Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DF53090D5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773305094; cv=none; b=n48Bs24o+MgLoREEbnhnZsfL2Ev8AN4EFrlTJyYHdPIAkgKfpViNWU6sh7Pu/KDQimddWLmxU8MLtx7DAJSBb8j39kG7vqI596+Ptpiscol3hrm8f7jghosGCBmjpxx74XlxlVGYZeVNmquM6oLAAafWI9kOzgnAZ6lKLIQjJBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773305094; c=relaxed/simple;
	bh=Ikc2dC3I7m3XalTX+vBBDCmewOO/GR7SmDBXPKC/LNE=;
	h=To:Subject:From:Message-Id:Date; b=frzhTLnGjYXPHrn/md8ZEGuYi3tH2myxcFpVnc5Wo8Ru2khBmkf/qA2B4tifZeYS0oRMVDlMgcwoA5U8xhtpcdCYsqb4YGCWh6i7kU8R+zH5iLSYPZDN3Y56xudx16htfsbGrR1Fj5VvRrtgFlR2zs4F25d7FKysKGVDVxW1u4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBO/qYpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBO/qYpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A21C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773305093;
	bh=Ikc2dC3I7m3XalTX+vBBDCmewOO/GR7SmDBXPKC/LNE=;
	h=To:Subject:From:Date:From;
	b=hBO/qYpognUoR93lZ/9RlDpW7c+LTKnKcY4CGgEdikkOQDx7sCcR2lnjyHIffcBD0
	 dl1UESb+rL9LBmDHIit1/RE8qIpLyeIzCANzzRTzyjH56a/X4nlGI0J4jP8sVRWKu7
	 FfI4UUgWbi6RONsgJ/zt07WARQV8HsYka+i/uJC9yhJeWWKYkQyUqaOnyZV8c0ujvO
	 0elkYFrp533fsOnCH0P48MfDycmRYqwscHtJVg4TCQdC8mesPrkK1hXz9/85vCy2D+
	 jjTHQ/y6hiwb4kreFzRu7NcYKQtaR0qwAKxkF9wDvrAVeysO1iXHzfSTxz38hcT6j7
	 k3UyFkfI0UXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBAEFED2F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330509358.13661.16992393720416870343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c0ca927c34a0baca6dadfbd433bd6a9d00c697fdf5b3c60c809e11f78fee5f
Date: Thu, 12 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773305093
