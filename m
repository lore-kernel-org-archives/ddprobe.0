Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A72D144D1E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720905623; cv=none; b=O80jkXJsySCliHuNhicfKZdzRLzk9pSXvwcmspG862eqyHIeqQV4odPCpaiWpXibHg/YKcRWg2k3vu5AQw4UXZ/P/5zawIKA7ilg0wNFa2/a3ridiRyK8U8OP3SG5D4GGzHQAgGXNS+a4Rq/a1Ixmt/L9p+1BUjwzn6IAtQkcl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720905623; c=relaxed/simple;
	bh=3Jy731J0sbi3H16LsMTLnWOi09IK8hcqJPEogsXxiS8=;
	h=To:Subject:From:Message-Id:Date; b=nHwT32juNsum65lKIazGSVatgKMLS3twEUq+Iq0zqA+RoWi3WFDH/vU1wTWuhuGm3LVwjrVvELhFLOmVtMgaS6YSAxowpztQcXlZEyrCmJQ+foIy5YqNOd0Sjt/tCWVo1PnjrfSJOR64bWkPSzihmkmqMbQA2NkAzjyNjAZUTJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg1Xhjrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg1Xhjrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D923CC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720905622;
	bh=3Jy731J0sbi3H16LsMTLnWOi09IK8hcqJPEogsXxiS8=;
	h=To:Subject:From:Date:From;
	b=Jg1Xhjrn9KL6D8hOOIBIWuURjn21X8L8mK8w1wVD8kIS2fdOeR9esrNH5RV6M7Io+
	 XnUeQ2nwPIbr6uVgzZEy0ObK+OMcOrkLP8vczMTmZvegrCStn5aSG2cH8ugspFtLDR
	 JrCxqY290jUgcxAu0dVJ7pIxmdZEeFFv5SLaL1KrLeDH4loaNzVUSbC+q8c5EAQq3w
	 y90rWgFWod/d86GLwpbZnYn6v6ZQ2/MDnB0EGmeRu4XVSZWAf9Nl1aicWr1Fyv2cYl
	 4O0xInI/I+Z719Kni55iCtiVK2P90/oC+61SgKI2N1SYuPGuR7fX0u/TTyGttbFZhi
	 MzTW7bJkbFglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E33C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090562279.14598.11712047072466565012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7526a23b8c6814abb2bd7573514002ffa0cf177835995903c28e2892b29a87
Date: Sat, 13 Jul 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720905622
