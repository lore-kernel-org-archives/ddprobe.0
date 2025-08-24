Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EDA1CDFAC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756076994; cv=none; b=cRuX8vIzMGQX5hWoaVTxYSsF+dqZ6AWeupMvyiEN5DV7uR/Cdi244M1eOlhCMGU3oJZkE2DnpD57n/yiU3kxDVRH1OKzCDcmnYF/QIY1VO6X3rPbVhbAmTxP04Q0nYNoIw8/5H8f8NYdvj39xbqJ3sxmI8ylRYVdHkU/sroQf2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756076994; c=relaxed/simple;
	bh=oJ6AWwd0HrKMEfz6wo/7xK/gVsip4esYArGRrd3DzMk=;
	h=To:Subject:From:Message-Id:Date; b=JoZWz90kp523jodMWW/SjKFdLLlPTD0rkOdqBUuFJQDBnGoYhJxKsfTv/X00pv6LfJpBquHSHtGjSimvnPXqEF3NgtasHU2h5fI0BTHSciEeBz/gDXr8AzoIl1oeYX6A76NsyRFSkvFKfrMQLibA1tNSy/FDbGgfrDLv0a+sp98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljteBVdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljteBVdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756076993;
	bh=oJ6AWwd0HrKMEfz6wo/7xK/gVsip4esYArGRrd3DzMk=;
	h=To:Subject:From:Date:From;
	b=ljteBVdp/Cz31zMkVcZVI7ztk0jbhB9Ezj/dpRpM4UD1U/OS4VXCXi8mLe5yLXEUo
	 MqamBKxyoznmoy5eDaLAYCiFRXcKYvKHSVtR4wbEH6iQAQy1rBGjC/PVwR/YIBfen4
	 eyLvFxA3yU03DhO9Pkf39HBzDQfi1Kmdf7xv2MbgEPfYl2ex8Ee/GLW2mtPS9PNG2W
	 8B326LCa6hYR1iJqdFNBooJPDcdcEf09hhTSpkSuwWCGQwRDIU1e52bYxT32l1Ykh+
	 BxkXrrBvB/O4AZDgxd/vClU5MCEB5qX/pivPHv8z1vqJ9e6EQKSx1erKg42cF+P6SY
	 efGyK1EBpclog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B8CA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607699358.32019.1537013433744515517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e38f6a6ed46c47e4793eefefaa0b3a2a875407b942c49135080f5ad2f91663
Date: Sun, 24 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756076993
