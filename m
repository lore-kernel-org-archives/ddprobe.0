Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5917D2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744649394; cv=none; b=kOEIXs/ysR4NPqAMR6n15wTcAr4dkpV3HAHYbzZrWPG+VuqtkUoe6njUCNMxRc3P95RRLvnt1vRTbJMO4ZGGMmDYK12u1hgEDqcj2B2gSJdBSUI6mgaZyEF2kKPI8uDvMfH30zdLcc5dslaGWuFc/PHBE9FqIDR+3nmJI011S+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744649394; c=relaxed/simple;
	bh=9Ip3UUoxDojpuAWHE80rzkyOeOJ76m93WKOZEk2LStw=;
	h=To:Subject:From:Message-Id:Date; b=bnU3JzVokj6SQmE1i8Xd5gvSnYywG0/9pOXWQzzd5/9qS2MsX1mhYB1TG8JnAXKSz4aWInXe+MQwNP/kFyEATbCSrPcR9SisF+BQXKBvWwRbfqJCH6DXBbndtezck4Tw+twQSvtzTf7giXdrjysH3uJT0Kwj3DqAsWgC3w5FVaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psa8d6er; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psa8d6er"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCC3C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744649393;
	bh=9Ip3UUoxDojpuAWHE80rzkyOeOJ76m93WKOZEk2LStw=;
	h=To:Subject:From:Date:From;
	b=psa8d6erhU9xxmrD8C9q7tdABu5C+tWAyYvROQeMT01cj19ScVZajR30DqG670tPb
	 3ijPO6QfAfKhsEFZXt9ATWEzr8kpxU73YdnSwyGvPTv38m4eyTRyvmL2Ttu1EP1xWu
	 MrzZW4X5RbFGMyB8JsnvbG8iv6BEafTwFo7AwaSk0UvZYtYwiJJJnjZLWe1c9RtyKd
	 7/y6bm0tWwfVJ40tIza+suprSD/pPlySlcVDGnJmFvXJNnR+VkuwILCHTQY0r/NCTR
	 jBRuafqx3DZVT/xJJ+Cj4GVQsrWP9v0KNvATBRLDIlOvjyhlDYUtLn+D55vnPnN/Uj
	 hsYvfGLKxNOQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B724C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464939362.13706.7273747629927616920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790aa652aedb50ce65d9b02a49d8c12faf8615d18753f7eb5de59617435be50c
Date: Mon, 14 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744649393
