Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36306C8EB
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750085394; cv=none; b=RWPkCUETYmy5Xwu1LjzuHSql7MfgVo5mDsIhdA+Z85kN9oYALm4Uy8nHUG/2mV5WnzEAopqJTqQE0LKGF+PvfY7KqEzeWo1pE64P9g1HrrQQ8ReogIB+hMa41Lz7kUSJ5v3nC4xxEPWmAczZ1cmb0lj6QeVs58vq6BnFtT90Wls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750085394; c=relaxed/simple;
	bh=G5UilkeI/qoIU2jzeSpYmt6uNdMzn/Qa1H6ueHsWTR8=;
	h=To:Subject:From:Message-Id:Date; b=OM7bAVOWEfxiKynUIR0g+VqPsTc/DvnA/+GqsP/JCzoL+UgGE1tE9cIQvKC6+8509GHyj8K22pc/8zkVSNveS6Kn3RLTdCGnFoHGBKOSpmaa25zq+54UURn2qziiJgBG6MfZQcKp2Vhtp/wwWNbkomexjcrM8JieiyYuhE+3m2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EejCkszW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EejCkszW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B313EC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750085393;
	bh=G5UilkeI/qoIU2jzeSpYmt6uNdMzn/Qa1H6ueHsWTR8=;
	h=To:Subject:From:Date:From;
	b=EejCkszWu+zX7ICLHn3mg8c6x4LucH1jjuw/j7WDoluAwSJWPJI9JzKZmHSqInF4E
	 9H6YE6BB6i9IhprI2BEIMhvLIRW0epmD6vXGY8lr6v32L2kezoIGNDBwE86U3T4taA
	 j2vvXkrTUAqQ95q37Zz9BxA5e1Fe06Bkmpv4XcwX75xC+0xXHUAMN54gpo8k9/Ld0Q
	 AsR9dFrBafrtROxRK/XwtogWn9YA1zrLtZ91SOp5+szG2Ppwz5PkbLyd6z2E+9QU2t
	 D06UcE+Xn2zN1CWlL+REjUXIixiA61lLLo4nbvLQzs+W08JzU2NhYPe2RcZ/UsWVXy
	 u/sF5wEhEJ6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A94C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008539362.26955.1497990829514684836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699f61fe53ec45baa454ce0fad0be0d10701f9bd794c4d6b5e73cb2b2f4ea42f
Date: Mon, 16 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750085393
