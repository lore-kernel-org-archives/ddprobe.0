Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6849919ADAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717783043; cv=none; b=ugwGajlvQBzedv0TNfat8f40zRnv6AyiHVLwxE2vfV3q1q4T0i3kFA7COBioOafGZNxlNBPTcWBxPPQL3rF6s5eb7NZhGFDbTrBMBW0am7odbuLl9N/ogdAT6pOKkt4K+9diSIry3tWVnXaZVgcUtx+4mpIwrcrTr7BqnvBJXvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717783043; c=relaxed/simple;
	bh=ILSfDb7/15u3QQnTBIgA597OYIyQe2bzy7+GAxnLYRw=;
	h=To:Subject:From:Message-Id:Date; b=rOCEjLYf19HvzGDe9Ca3dKaCMIbcE84a3vCop9W7dFvqvdbRWkw32XwJL1H7wkTVAWOQJG2yk4do7ePM47Cg6UgDcNvIO4xArCar8ER9aIQWXlUDhNz04ewM+zNQKDBTvuT2IXv/MX/qL0Ecd4niWcXJFKzPIBAwQDQifRwzQDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI7q0jh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI7q0jh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F17B6C32781
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717783043;
	bh=ILSfDb7/15u3QQnTBIgA597OYIyQe2bzy7+GAxnLYRw=;
	h=To:Subject:From:Date:From;
	b=PI7q0jh4XJljREIO1NPUjIXXAuGpHZ7NTdBj9yywcm63OVnHHNI59+hhqe9/zbDsE
	 pPKvpEWOBkkru0DP8RWCVCPp90vCbhkzP6ngMbQl6QdMKSPSTcC+0ym6+WFAV89yT+
	 wwmUGr75TdHpILQWBLjIPJn2XQiEpQlyaQkcD++nMbDcTWFc8L88qVkSDGa47q2Wg5
	 m53SH43US6Q5roQeErm090M0jxG200tVv1YDhED0+LFlPMoqT3h6vgvyXOLfqXUpJW
	 VJTmBrI0xpiI9OipMz3s7pjJTx4kF53sdt/UW5xVixeaJX1aLoc60rxTQL/Jwtx9h+
	 mGstPGzBYMKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D93E8C27C6E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778304287.27245.10423122490278485996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fec9f934c91705dc6c4670b02dda6c6b54b98e9a2c1a8db4d792b7b4b1963e
Date: Fri, 07 Jun 2024 17:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717783042
