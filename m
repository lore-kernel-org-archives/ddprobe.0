Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E69175A64
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779637354; cv=none; b=P3KfuVVtEFrvc+TZO7e8Zoy8+vheDHRVmTZZ1oGMhzWTQr2o2OQ8yklocbA5SmHDT5jGYw9Wcf/r4RUxK+FsEWUGb9oXdse5JTHAs8AuoRfoB6PDbDfuztvlkeN5FjFTjWW5V7gThTGJPfMBntzThLj/PNOICTs4gieZMDkZPVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779637354; c=relaxed/simple;
	bh=mynmpjOZr2xVxPRWIgrZvTxPBysmQD4AYBOMW18cY4A=;
	h=To:Subject:From:Message-Id:Date; b=aB8MiRBcxTv+FhKQeB28NmNVTaP8Nc/RcK4853E/9JgROjN/wGEgj3EdpGza3Z6jFX6JmLB7b8L2u3kqDO61H1w4VJorGAQlwKWmw7sjobwyCYru0oPscT6cABFNNi0DKKWZ5zT7+NYFEg+GVCLmKabDPQjyv+QiLpLCSgrKewo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM3sdBhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM3sdBhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51FFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779637353;
	bh=mynmpjOZr2xVxPRWIgrZvTxPBysmQD4AYBOMW18cY4A=;
	h=To:Subject:From:Date:From;
	b=KM3sdBhPDAkIY+YLqOEugEL4FwvijiwoOyVCapHfg1lqYClf1k6eXZXNDdXpUfmN6
	 7y72dakbInqLiwXSMtCgROqtzTV+ZUQ0fDgTxZs3VzeIjmxI+639Rh+ipfaBNHSq6H
	 r4icIVxLzZnyatSkQukrWB7EUCMt0UU+/gkzdHQ39TBiYWbdU/Ewp/aNoEHEKk9vIN
	 1in0DYEBmUqiosOQDi9IfNjmFygMYhd1d1nLadVqtvRjNaFE26NzYmsIIZ+t93IBEx
	 ne3AVOjhY6Uogyo3bEIAal70o+89khf6OEMvG09Q7Dk+D1wefDWNGdIZwPY4sk26wz
	 4pWc2oZRgY/wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6AECD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963735368.8636.6591923938234115807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25339c39ecd286871ef40897c7e1d07ea142f6d0c72827228899e1bc3fa82811
Date: Sun, 24 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779637353
