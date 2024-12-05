Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CD218AB4
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733409355; cv=none; b=SUhvs3XhuRLn5uzI3upW20SgodUl5qk7QTSh/zT2etgfRSby8H5rNz3pdCidY4pn2BEkPtwXpXDmykkfRWuRhdFOa+3qxRMMBlxXdORMBMGrVPWR0BXw660MP6dQN9AwsTZrQw4lBJwt2sdPzLViMEtGmM88BR+UKrDzujF4YnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733409355; c=relaxed/simple;
	bh=uZLoPwvbHbE7WVo7uuGuNoZiItSsp2HWuD5/XQXipxU=;
	h=To:Subject:From:Message-Id:Date; b=bj1DwI97QpPs2p+NfA4qexyt2zhAFa/ldX3p8uuk30Is+LfWHwUX20EQgHnBqo6gD8iSSGnTPYaeP6icppJdQ0NxzHVZqaLFe3g21bb/e/XORaYnrVDSepWAjhsekyzyjEwsKhiA+3qcDgEPaiSKA7BUoS3ivWKxyEWxleXo6Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRrPL9sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRrPL9sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF241C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733409353;
	bh=uZLoPwvbHbE7WVo7uuGuNoZiItSsp2HWuD5/XQXipxU=;
	h=To:Subject:From:Date:From;
	b=WRrPL9spShH87tP47CTTqMFO+ZjVY4P5XPQyCRVjI3QFOn4qEFI0zr0Zv71AcHraN
	 NQfp+T0gDYW2j9GJVSbUWJjPzIyq9o3xbV4paOH+EehY8iMWC/FzKlTA/w7XI19qHt
	 jEdfXS6jXz9RWJJ7wE4tOy6YvNhHWotCEVsklzFPxPQC3GrZ6csAvC0OT9z8QTxunc
	 sxP1hG9rR5pt7YQ/bd1o3YYOQi1wU91hMJpCdBkU1uVVVhNc2FWB8Fq4qDV8EJY/iu
	 MTK48zLJOLiW1MDACrbSb3FWJVo4dafjpz/fdk7Nz9pGhK7OPAx6NKfqsRBxdDtkUT
	 nX4RC9S6ksReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EB5E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340935364.21419.3023599665727143406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f3ea3fb2dbf3eab019c43c09e5b258771ee679bf6fcfa13d2535687e000bf8
Date: Thu, 05 Dec 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733409353
