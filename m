Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1101B352C48
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606634; cv=none; b=I2/LtSdmTgT6htRbLVyRCJCJGJ8pPzx9XhY/NeGtyoBFcwEFo70o+xurX5zhhPQp1ryzYLIR96hjLwHJRInypZ6vBtwzkAjOwIbu030EhXFfHtPGDUyQozVg9hViirZEIBfX783q9nOF+wTz2vex0AY3uBpvj00Gg4/Ni9ObdXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606634; c=relaxed/simple;
	bh=Ahd5yKFyHUEApKNy5xb438uqK+2jQR+hv7Z6gPHkz5k=;
	h=To:Subject:From:Message-Id:Date; b=skx78yOEymVqrQ+mCaMLANgUIxWEKxxmd7VyHD+nqtj0T08hsln5jx10fkUAU30ys5N/BlIztklbex3A7SgM1BrsWT3SLGGU9YR1nQYrxHd6q1weLkocudm7crIvfOCXDQ1PMIwTwsCAZdx+maX4w9rlSYflvQka+6/0n+Ycuz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfbIxh50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfbIxh50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD7C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769606633;
	bh=Ahd5yKFyHUEApKNy5xb438uqK+2jQR+hv7Z6gPHkz5k=;
	h=To:Subject:From:Date:From;
	b=EfbIxh509oC+Moe5azP9HFBbKHPwZQclQnAuDrTeV4+wF13iAjxUTFu/YxU1lLfmg
	 ejdTptIVxAKGHWFJfATitWUCvoRLzgPWBHEn7BwIUlWOCin55zLa3y5Jskkwe24XRd
	 LttEFi3KKauTQ282nKc6doU8dWNMSXfKYxN21N9eSK1Ty2RujTgLEq7GZXW6lR14DM
	 Iosigv53tbz5idzkhnza9XZ63XzFP0Ar9+9/ajZypNS5s6U3obHF99krD3w8chx6gd
	 1kJzVL06H6DMN2vh07cAsRz38/PDeDTdxyPl0iXH38tdc5NjqqV+eeMb3EOqQBMIfO
	 tW2QhZYnp/szQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A53D25B5D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960663360.11729.271925220767655224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc18eca44d8ad0a1b4e56b782a9808211934f251616f9f57ed2f1c859196ab09
Date: Wed, 28 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769606633
