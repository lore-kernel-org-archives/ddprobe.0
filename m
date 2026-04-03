Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167B72D0606
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775228734; cv=none; b=YalfaIFxyqPKfDXB43NxucykVUZ9nLShcCoUdBOVEUGipqGS8YEooSn0VEQ0tpXzS44FZx7T2brGD0HH+3Ha5u1PB1JjetvxEpUNLkI2btmraI2/WmWW02uRPb/3/9X3CzbmpFe3TkNuNoT+t/dcjuMSUPp2/xc8faolD6OtRiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775228734; c=relaxed/simple;
	bh=EAvN1haJlbO4rrxkaS5qbrAe6pkEPHeuv8SxuUIEjqU=;
	h=To:Subject:From:Message-Id:Date; b=oqB479hQ0P7dv800XJxWimuTZrOH/cv4lkGq5F/A6WNe/RSDcDvXiQwI2EJFo8/rlEdk85gIRaIWz/hVisOGvvquTZe6fxCagnRg/uoCBdgW9n4x8WLR1U6sQupfIUzg8dkAOWtz58sl4HgYYaJAENMFxPfU1OAZfEyas90Nw1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU02/3a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU02/3a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3684C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775228733;
	bh=EAvN1haJlbO4rrxkaS5qbrAe6pkEPHeuv8SxuUIEjqU=;
	h=To:Subject:From:Date:From;
	b=tU02/3a135wDCJx/KjwnhOHZC9aS8arMzes+R1ccWPfuyqnyynGg02JXgzuk/HgdR
	 WNXrEk+wXVov5jsx2gUOPKVElcgDxD9fmCAlsfVCrkRkroSfd4bpoc2jllxBfg9xgI
	 G/NZGpy7oVCDRiN75YNmIWK+lmWIXGGXOqIOx6tqs1waPicABERKhHcLSnFJwx9W4L
	 d4sIRSiGW7yuDgP5kK0AK0J6SE/LrV907xl4Xjuco+kbLcxCQ2PcNDioPK+JO3e2Jr
	 10EkMI+mOZI1p2dyDYizlwHHfC//awOyxDwjmBQHWQw53h62Lx1eg+cfV5jaCgB1O7
	 GgKlm0KvqQdHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD70DE85374
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522873370.2632.3731886588474192744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7bbe989c0fac37e0090889536effc5c53396c1a36654d0533aea96596f3bde
Date: Fri, 03 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775228733
