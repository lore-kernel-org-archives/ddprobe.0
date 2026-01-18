Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371891D6193
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768727634; cv=none; b=e00v1TyD7MhhHabLXh/K43APX0jIHd9a86ZAL9sDgUJctplSVt+dK7ejrDIgRaKEIAtvvxwTwy29cnUK+WEXwMyki+WdLr1MDNvmoKgEljKqYkMl/JeGo2JzYbXfKJAuKJjX3eGSxm1TXEfzunTtWPT/0VAd0N/QjZBssbmclSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768727634; c=relaxed/simple;
	bh=dTcWewr6btzpsPf0MQl9FkN/6plhJhpJdOym8hNp0y8=;
	h=To:Subject:From:Message-Id:Date; b=D8ObzkbJsErPU2orSyxYmPqd276Ks0G3UZAz8CKSHPkoJakYf3zroXU7eKjFujYkc5L9p35SalVBKgQaTbmE/ZITeNy9l8XPF9CwF6cvrMNdISdirho6Gf0ZPEAjMb93HICsDdPVAtuLHbbSiXHfYOCtFVTUTczjGGF47K5KsYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVBqEVUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVBqEVUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C83C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768727633;
	bh=dTcWewr6btzpsPf0MQl9FkN/6plhJhpJdOym8hNp0y8=;
	h=To:Subject:From:Date:From;
	b=hVBqEVUQPJDWcTlDkQ/xQMatEvzeBhksMIfHOdZz7UHECiYkMnduhUDBIpA/bVsI0
	 6cX8DUM+DyTc+3vTv7u2Mqm3XiJ04gyw+Gb96QRL1i7w0tHmZr2o5uURuXtd88hkLm
	 Rmnx5IKnZzrYYvvzzQ36go23hRoO5WO0KqL9+1b0ZYUEONy8m7KNYiyVHRcr8pDfCJ
	 LIIUyxKeY/n447gE1J2ZTLknQSok7kGX6l2xvP02CbIk+Gw+ecyDGEKaG1mKOh4/SX
	 9s8B70SawEX88rPyjuaSgRskrDDSRQqAvpOjY+0Qcdpr6yPfjt4cWHQMGEhhXRIx8v
	 ISOXtICvToTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB9D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872763358.8944.12758732028384250533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9c53a6a8ca1a43ef727c68c50e5d354f33cc4ef7a11b026582b9c6cfd31326
Date: Sun, 18 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768727633
