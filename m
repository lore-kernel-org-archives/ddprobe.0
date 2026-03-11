Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3D2383C92
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773259494; cv=none; b=ooSHaaI0k8YE6wUl8O/Yrg7Crdu9x8TR52Nh+S5X9L7y7jpee6Dckahhs8J1z8vNhp4w9XEEvzBo1e+SYkRmgB7aUxyJPfagaV/5w1TsymuKiSfNJsQdHBr7qGzN5FsyZmsAgfq5leyb7yMHthBynSRqlpsfgLQibVp6sBZZ8xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773259494; c=relaxed/simple;
	bh=76Ne6Q0kYl1F2sGkRpdU9e3PaUvR+zgDFBCzY5Lcof8=;
	h=To:Subject:From:Message-Id:Date; b=jVVDxMjXBPPbwOWYorGO41bt4DR9KzJFgEdmG/eRriuaVe2uTvIbj/f4jWiNUvubNCrL6+ChMF/hWwIjrzOHb4NBzxLkoT8GbbEVpQA+MqJiH/JaaQflbllKiSesIZx2ayLbIPOJt7tRHQy8yCNdA6+Vrgz3oCAt0HwIYSAXdCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLuKS2kB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLuKS2kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6693C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773259493;
	bh=76Ne6Q0kYl1F2sGkRpdU9e3PaUvR+zgDFBCzY5Lcof8=;
	h=To:Subject:From:Date:From;
	b=fLuKS2kBv69LZIS1CkAr/6uXAqVzowOUCz0SQECiXshqGutOSaGNRPmIZv2amRE55
	 f9Q9jlZKkE0FvP/DHIYwiVrtLNw39OsEVn6YUeatclc4SYRxmr9Mu0oms1GVOG5Ftp
	 yiG/eGz+O5pgV2U2yY7gJw7EHrB4tr7ILR3q+5PXV8vwrIHGIdIBoQNMvZcvqN9zIp
	 KZpb/ZmVPQlYQ5C10pkshRj4DS1ImJTt1U9THP19ZwMlwvDaVTzMaEj/rME5MwNrRH
	 C5KYeJn54B3Htoh3S3e6ywNpaCls3QaL3gFaUA4S4WNRaGlGeUcGgHqeHNI2y8Mb8x
	 SfGIFenNer2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E1E1125876
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325949363.4115.9487723122786740556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407f98a5c3061508a5504c0cceae48ac67d9168b8111be2ac3e351da447b8de3
Date: Wed, 11 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773259493
