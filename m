Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A826238D54
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790828434; cv=none; b=beDsM8ZHDQrxhNBVeHtdLc2dCZuhwWtPNEMCkKCOq7h7i0PglIqfBg7q+KqVsE+ReMLPkdp/Q9+fIFihsnS5ZhFKV3e788kZ3aAeF+hod62uxWIsX1X4BkNfQz34WCgs6RcHLmcbvaQzL7K64/RNxhs34VKSRxqSCfFYpJYc0gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790828434; c=relaxed/simple;
	bh=CuoptWJ8OaX7jaCXl/F1O95IA/DXEudqldBGvIegae8=;
	h=To:Subject:From:Message-Id:Date; b=LT1vwozlT+2QeZaoXzpiRCUDVQ6HWHy396EuWkmyHeh0liKlDq+fi6/fFju6sDlB9Lp1GH1ly9Hm7BIv0tSRcJVXGfI9LaV5z/2sKNqR1y/A7gIEuaMEWDvUDaC9H2GkXEnIFG9RAy3mfx4bnyBaMQ3bspB/mZW7/3XbQCre208=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAQoQufh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAQoQufh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DD9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790828433;
	bh=CuoptWJ8OaX7jaCXl/F1O95IA/DXEudqldBGvIegae8=;
	h=To:Subject:From:Date:From;
	b=ZAQoQufhglDoA8QG0gU2pLcUufRsYyt/NnKSsuvSaREuxNAXGXgkuwUoD5fx0y38h
	 UOs45kKRT2ffxA3deref/6Tw8/Hp5eIxGdyYDCkfLzIHa6MBqiC/QYz8O/Q1a6ZahY
	 yV02L2noTyOIVtmy+Vj7eRh143vWC5Jvkgww4RBUyw4ogVge8sXR0bl1Qz3bHvN4IP
	 dtwFKOvYoarW+/oglgS/+jSCVZxzgbKj6a2CvUSeS87B/mmKD7PKQVYwow25r9r6M1
	 AcZ5q7KVxx81GQmYYCWw4+zVn1oKyj6T8Hl9Zlicc3AJ2Z8EoW7MtOqJI9xNcgZ9fs
	 pmoE0owRmhFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD042CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082843369.32041.3660574642841011374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dddd8c5fdd8397fc50553cc5a58a618ef0211f634767be7a50e19a3aea96a6
Date: Thu, 01 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790828433
