Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521E51CEEB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737634554; cv=none; b=S941RoTSPNLy53oMf2SCOb/aAtYhqhbSrIJBf79FDwtuFny/ZAMRIknqFSLsdVQcREiBW+U5CtHhPU+Ei5CfDBhr7d1q3+zE5/0W3OoZK2NfR1U+qnOcECQmMd+xdUKlK5aLSB1lhaUpDZx8mbzrn7iNJM1yjilFcXiKKd8G+No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737634554; c=relaxed/simple;
	bh=sh8d90YpTk+zuel91BsUDuIKvnfFEq2Ju20qOdWlIMM=;
	h=To:Subject:From:Message-Id:Date; b=nnQ20Tnu81SLSU92GNw4o0zTNVZYlokWSLwTjBHfFW3l4P+NXqp/rhWS6YXHNoqSaNp6oPkjt1yUsjSqE+p7r+x8TrAFRzckgy2VtLOFO2GEWVFoS9zV+1ODSERqeFgoDhpTGfMxk0afAsxsQ0S7Wpy1p5YCYHpLz0FRFflWYDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy6lr+f3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy6lr+f3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8F0C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737634553;
	bh=sh8d90YpTk+zuel91BsUDuIKvnfFEq2Ju20qOdWlIMM=;
	h=To:Subject:From:Date:From;
	b=Hy6lr+f33e9J4PWd9gz8c8mYfvhtENFlhiKH8dF8IIpzOrjXMITMvhrfPrEZfBrek
	 JPzjxpZkbu+wMt1Lm7L4XZ2J2GfhD+r+LObvQUaYThSrSMulP7wP4FuZS3wF99VRvp
	 knGVPAiMfI42dakbkCuDY37iZ2ByKrDg0VKRASQ548L11sMgmAVm+nrGqkV74xx5p3
	 tpDDz+Ec4FaHmBrcwAjgUeK5HaJOHs8B17UfRr5+ODrqFmfUobyicPJvToatclwkd+
	 LmxC7gJDve+foZBb9e5XbspOPfH3LwLRabpoqH5YaFJebHCtOOkiprhqa0TBeM4bpK
	 zaKkzOFHq6FBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97785C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763455361.23398.5613519142380202030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a185ce8a3e31fa2749c5b4d1779e8f6b2ef76f858f1114ab439d2ed0d68aa915
Date: Thu, 23 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737634553
