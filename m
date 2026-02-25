Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F32BE644
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772046894; cv=none; b=sSckG0QecNzcQ4OX2veVG6b+a9OnxvGYcWtvceGoha4/lwjidOsgFVBASzbQ+yTrG9lBsXAEKjkaxBWguRfPeY6pxAxoUZd6L6/F/ankWXNKgIxpiqHFSoznLeXhfsQkSkn4X7kUKHx5qaNVgzXk3/FNcLsFE85bjWg9HY3gZ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772046894; c=relaxed/simple;
	bh=iwVLl1NmbwQc9g4zYmhL3O3+R+WLSunO2eMJfJawJ5s=;
	h=To:Subject:From:Message-Id:Date; b=WvvMgVe/6dgPuxhJTK5bZ+6HcZVuKxVxm/2tJKQr13Ib68bdBXGWAM6efOcyuhl58przu14OSoBkV3NPm3cWSSoLhSwqz2Yog5pAegy3Zjhk5mX/+jgSflATJHz3DHKByAM+mJ0JAFuAm3FPEbSNj3zYGJU/zRJtuOf8HYX9ab8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onQd58xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onQd58xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772046893;
	bh=iwVLl1NmbwQc9g4zYmhL3O3+R+WLSunO2eMJfJawJ5s=;
	h=To:Subject:From:Date:From;
	b=onQd58xc6Oj8HJ6R/IVDProvNcggx1PlVUKyTFbCSgJfb72o2g4sYbdSxAFGdCN0W
	 TyF9zoSonv2CuJkKf2FgdoH3R+1u2c/kOMrNSVfl0u0UWT0NXJEVZbDeGuV0ixUi37
	 Dfw0QntkJHpq0syOP0mjBHGMxVlB9EYOIPT77ZlNz5CO1EgxoqvggM2zNdZ2wAUovY
	 9E8wAuizhKCQ7wy7gNggHwmnXEF27MrmxaXudfKJOAmgeJ+rfMtL6pm442koyMC0p9
	 Ls7KkGoX+AazRvHMfMc7hN6dHJQVwt5ZLSZz9TPSCgZXdeeYX1fhRyZJIdZieXzbUl
	 aGu+Vr7IO9VJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BEEFD23F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204689359.20370.11676167872729451682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05a4a4748972c4759317a530ddc18f41f3313ad318475c44a56cb68ffb9d40a
Date: Wed, 25 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772046893
