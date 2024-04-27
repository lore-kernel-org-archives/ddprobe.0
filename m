Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B8044391
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714204943; cv=none; b=uofuMSvycf4GVDENMxhwTHrlKoQ+u99pD6YuO9aEPm5y0PtlEPpfaSgVPws+bUBtAFIZ3wtT8BqMUl9tYt82RFe/Couj7SCYQw7xEvKzg+YYZA/XHD68/NO53sj4fgwV/4zQoqH0Gi4s72gKw7NLOVNvOW9IiZU4PEE8ztvU3ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714204943; c=relaxed/simple;
	bh=VCQIriC7SCyZUb/HiSaj+MO1Oo0BAMmgSNwVarPqX5Y=;
	h=To:Subject:From:Message-Id:Date; b=iRqEUU02v0PKp3M1Rk8jJaKADlstWEBTvev7d4VTetrDT1UnbDcc7wDTn0MGzm0J4oN/bhGnmMpZB6NkewPeoW/XH5VPWM7t3q/yXrbAszy4+qYqBLnUrk826k4CJTI9rOMm4FGUhA9iUgTBfTfSaUZME5E9cBd0Pkvp+Im5o3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5kih6ui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5kih6ui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BF2C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714204942;
	bh=VCQIriC7SCyZUb/HiSaj+MO1Oo0BAMmgSNwVarPqX5Y=;
	h=To:Subject:From:Date:From;
	b=g5kih6uiHhwuzEva0i+vJbWQcQ/dB4Y7jrdoJNww/r0OS9dHRaK8HFAphdH7KbfEk
	 YaKnILjRU45dCFuK3Np4r+JAC6zLKd7CnNsVCllFT8lBxOpSF1c+tCQsb3mWZ/9fTO
	 I+xhegykKA3O89Y8lGRxonoc1k126NCW3otOWVHbU94VF9/E988DgT6LC6Vzc61P7Y
	 o1bYRdavDVLMaZeeTKxJJcOyI3zKWqXS4HEZANOIUxMd3Mf1HsnX49SL1SKdlcXVX0
	 BD17QTa8xt9mXGZL8sPXMVQeZg3MONOodShR6QOERiyVEjZpEHsyTC6TRDDdUcCyrf
	 4stLKO8+4UB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C26C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420494276.683.13037682440359386068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a393b756ef67e1a8eb6be64019f97d9da66686291b3f0e4ca58669c22e400deb
Date: Sat, 27 Apr 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714204942
