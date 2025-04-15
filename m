Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89321E08D
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744737594; cv=none; b=HKWw68AG7mMm4QGi+t1iuJVysD9/pOvouUHCkbIj4+AkooBVOqY6afrlP0LXezfnUiIP1foKEZ8Mhc84m4aCZq4TAuCn5UcPAStKbKBkWC1URE7AdfY20fGeRq0/kewi3AtOoEGWcI8ErX/dDiJCtXCM0CmP0JxfWlZzaEUIgMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744737594; c=relaxed/simple;
	bh=ot0KATzJfNdRBi3Gb0PULEsXyCk1HrQj5crIW0OHlDU=;
	h=To:Subject:From:Message-Id:Date; b=DZj8nvIje/oJOFC/VtuAZQkbO56kBX4cTJ6HbKu12bwmeh/meuwHwBFFFGCQRUeEo2Bbo1xB83b89cLGGykrfkfgqvA46q5LpyhB+uh7MP346tcr4W+zQ+rxfMWeswlDW+zJkxZOi1bhVm1vz0E3GfJaSsgSMlHDLXBgzyjgK8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkZK4VfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkZK4VfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5B2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744737593;
	bh=ot0KATzJfNdRBi3Gb0PULEsXyCk1HrQj5crIW0OHlDU=;
	h=To:Subject:From:Date:From;
	b=OkZK4VfMevt+Q+JY24xLPmGMyufQIEVLsnpJitn1j+9i08leaB3h0EO8Mf4bUFjbQ
	 q/SHbTjXFU3TrCXTre2yfdouTi3WVVoxok6p+Ajd2/W5redExtyEoNH1JzuIV918N4
	 6GIEVasFMl1Efzl5tbQqQytFf50CQ+Y3TFzVxyNSZ5mWMW8vMFBO6/9I5948rw9P6u
	 C0We259wdGT2mnWhdArdDUuudH1cxVSbg/vHLm6J6Prj/gsYIN+kzT/XuUbAcoqjnQ
	 RK2xekWGj1YbSA4UkFw0lIdUGIZLYpCDPTUZDUFYEZ3N3mUPX4zYtLptp0QspJCF1i
	 mLQZwjpsLCUvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2A3C369BD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473759362.7929.12492247789696853093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9503416a685ffac69b8a8d9b3cbc1832e2f74db96119a754e336aba11fde1cee
Date: Tue, 15 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744737593
