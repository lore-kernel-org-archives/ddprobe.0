Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508F4A04
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754075994; cv=none; b=HduIzzUM3Jyc99S9GcJz7m/MkBaln+AJFOK2S58KbOxFx6hUrFBeRLmrUdIagQXpPZw3eanS2XsCpkVOUS8Lagn5WCOEl/WhYX6FOBG5sCMpPCM0KS/OJ1ivBICbKMukpI1bhI+zMZyYiyqJGfUWT8HsU0durf9ifFeRgPr2nsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754075994; c=relaxed/simple;
	bh=l77cpllXq2yI6wmZ9LI6TsrSNGCBKDb9UsoOnXuxgd8=;
	h=To:Subject:From:Message-Id:Date; b=SNFjTA2cwEVOK68pQbXCqRPORIxTaWrAi2CVGN4vHr7ZNBfNJoNEk7hctiRYDw1MySP/g6/SmL66hxpDjxj0aXAPL/t0oe2mLTam9Fw52PHIKjR/AtaKMbpoOGn3Ze440lh02QsTVVXyjzZ2VKpLfLxiOOfeuwFr417ZhZ502hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJJ0B0qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJJ0B0qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754075993;
	bh=l77cpllXq2yI6wmZ9LI6TsrSNGCBKDb9UsoOnXuxgd8=;
	h=To:Subject:From:Date:From;
	b=DJJ0B0qiUPqrbmCzieSHMI7byQSxlSc55+hWdxsJXKC/dzYiylFnqLfUOfTGljJxC
	 RBM4lGfby26TYEtxuS+zvOGFX23eR2Nk6fmxLZVQ31pAUAgH/NQfXT6awxbmm9HbpI
	 jxYwYJahVXaTKHD+a4pAOP3frNAMD4Iqnd0z0TG1OYK++/6/BCEEMaBeF82yMUy6kh
	 oHajOpJZc0vZInaPw9tBhsPIqYr0+CeJk1cLjFpdpL838tjUZjqd4HPvoE4oFY/Nfn
	 intVT/GyKxk9Z1nnNKn5j1zDgk1RHrOcjtfvSuhT8VEBCIEAxdIW3isV9c94YY0E5s
	 cJWF/g7bAh8dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEE0C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407599357.16850.719808410671166296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e93b73c612c0177a4035d675db5dca256627ba0801ed8c782f7f664360fa3c7
Date: Fri, 01 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754075993
