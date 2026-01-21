Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475D263F5D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768974834; cv=none; b=HyIH9QhteLzxswdvZSOR1MhiqK6nInDcjkLUV4q1HCBGLlca6VrbpZ2CxdGduuZptdAlmU0FbtPeQJtW5Gmv+4NtPGKQMkQE39SG2Edi30nvu9uVeG8/Jg92fWjeiQB85O6uV6+weMOrRidURRPF6qwRNPZq1z8xkfairgfzduM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768974834; c=relaxed/simple;
	bh=CMydOMEssHUjyKIOgzzdJEJSWczBqSHsTyXLCYm+Tic=;
	h=To:Subject:From:Message-Id:Date; b=jtj0IR6NdSipZdfzsnTa5dHtePrftcsw9jmQUHgB0v+J/1dfQeEB4Wx4fkF2A5Nm5U9ErlwgdbU5Tm5uQHew+O8hw+pgkA8aFCMXvGAWJX7X2SMbfqMIyMVHuINEn8aIWrqXjwkGFRKyU8AjZFZC8tvPWP4TA+08kJ3JehiWSNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzY8YlA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzY8YlA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C56C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768974833;
	bh=CMydOMEssHUjyKIOgzzdJEJSWczBqSHsTyXLCYm+Tic=;
	h=To:Subject:From:Date:From;
	b=WzY8YlA+MfuvNFYqyxXOgNonKYhnOwOi0V6N5B2GKsw1G9J+3XuOYVUWYhoXqfm1r
	 /DqInEuT/htPKTxFdiHLFmN+LaRW4Y5CIkt5iQiBrG8dyXr8+xn770YJSkMPnJ2+B8
	 kb5Zxz4r0VL9q7WE1onIaBFV0dTlAMI3xuyHJLmD0/nX2O21rMlHJ+87lLym/VB8Hn
	 edhodb1+SkuMN0+tzOBdppA0VYqHMz/dnX2p+CFo/ey/ur+4LOGHZgOVkVSn9OhsG/
	 Pz1AbDbPpq3rx5nHSnAMnI2v5cn+cgRe0YCLMfLIYdRcOH5TrekQd8aCdeI9JY0uyr
	 vzjIA9cRpQVqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFDD262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897483358.21946.16431769747030981880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c809b08ddd1595474a4f3d9fe018cdec3a332886f82e238c0fa1af1ed19d63f5
Date: Wed, 21 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768974833
