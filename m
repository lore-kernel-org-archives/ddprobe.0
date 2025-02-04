Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CEF3D81
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738646754; cv=none; b=dpIWHH3pJWY7+VCeAm1/dDIi4MTr6+ZIcZfzIuz9xaGT0UKRxjHo32qqt9c1MuJ1D+SHoXU8dT4f6w39zYi3M2zzgu5DUMWrwiYD2jBneuUPKXi2PpXFFYft2OH6YGxg7i+RlsryRhmN/QN9zkZbDmqyg+JXDMFyKVfe7mvy2WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738646754; c=relaxed/simple;
	bh=KSql7Kx2gWGUMSBMNxtewDMDDf4JIpI2hedOTqUQWZk=;
	h=To:Subject:From:Message-Id:Date; b=NNG4ZSjFo4Sdpa1bSRXQVUJjcUksMBi87+Ads22biGfogLQOx2HWJ3sWXC7yboZnlcnl/SnTz5o8wKUGV2nSAqXLlXVSkd+3JZnrO4q7vw17V9MGtNzlAUagZZWMuaLYi0eDaF2Vy3DgbaJW7YedfMawkcio/4hWoDgPJ4JaOiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU2vR7rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU2vR7rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738646753;
	bh=KSql7Kx2gWGUMSBMNxtewDMDDf4JIpI2hedOTqUQWZk=;
	h=To:Subject:From:Date:From;
	b=fU2vR7rWzqE/kam/9+9kCZzEv2AEx7xsqdf9lKrkOFd+mp0dI/FLsKqpKiN5UYdaw
	 ktN61ZVMtBxmxKNH672LlcCxddufLUqdYznXiYtzLUOnpguhtO+kF83BnwKVy8MCha
	 lZd/RxAVNae8VGlOo6U0loJcQ26GezBAarDvk03CCovutS4qJdT5wPNF7oodq4hWWR
	 k3mLpLDg7sfssNflmJBKT+iS+nrh+Q9Whr6ScNfST0SKHE17j+eVzQSeEJgTWQjAgJ
	 IUDPqyhONqXWCyk6HC0qP7gof9Pjj8WN9gHrQNa+2lLllTr8/NqArapVCnDe+FDx6E
	 PMX1lGUdJXPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD4CC0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173864675360.27413.7612150281293995846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cf6a83015566a1d1b5118c0126c316564c597af20e0c88c58ebc34d99c286b
Date: Tue, 04 Feb 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738646753
