Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCB914C5A3
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712942363; cv=none; b=gk2wOxAKs6bcvCinVR/tHNhluvdf09wFx9S6IphUJ2/+mw+U5vHNnPOvaDz8QC8DUVKKen0Tv2u4tr7kfUc2qQiMwohgcEk8otDt3Rgf6iAU18bn8RaMOPlLWCsPHKvwe/CejLaF4xq0dcjuzEwTci57CgsS2oc8MfDgAKQxUa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712942363; c=relaxed/simple;
	bh=072o38Q7LF8P8lDhfjJRdT7pVpYbLGgiKyxmoDGT1E8=;
	h=To:Subject:From:Message-Id:Date; b=KA8YYufmPtkvXPyaHe9EYdtTqdVY5Q9lX6ZmCl0Ndn9WSj2eIXB0BIMnpbyWt637ia1gxVLmUajG++mM8WLkmU/iXiFhB+iuLVDHAfQcOmUY/ex5GsXoLlR0ccwrnzQwadgwEl8K+zkndZbXCzUKepDPzf53cjO3Izt/7pkrvbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiAD7VVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiAD7VVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC797C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712942362;
	bh=072o38Q7LF8P8lDhfjJRdT7pVpYbLGgiKyxmoDGT1E8=;
	h=To:Subject:From:Date:From;
	b=tiAD7VViBV0rsq+ctePBuLeODv0+tfdec8AHX4hxlL7lYCBf098M8o52YsUD4s0nI
	 4O8GF9pCYzsS5uIx5dulK4UxkdfqFwB5pnhrZrwrFkPcG7H6ni0+lHZGevo4vybH7g
	 k36E0kvhDnbhlF6ZiagXSFdAqwLrNP5KGF+7jWkPyg9qLxgIEHNAETufeskrG8l2M4
	 iVZz019SGCva82LRStMe8AqmP+Nexvny+p/CuaemV9cSGhLSH0HFV822C+h5pAjVH6
	 eEvFLT0Ve2hlZwiN0MFG2vc7ih7nQp8glgWyTEx3Dqo+8l4ex8opmYz2dZtCmbbKiI
	 FSkWIURknSOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FEAC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294236281.15417.16443210765734372788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfed60a48786a831020f79236792cad0284f833219107ea4b577d6c3ba762762
Date: Fri, 12 Apr 2024 17:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712942362
