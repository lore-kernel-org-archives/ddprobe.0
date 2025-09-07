Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019913FE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757216994; cv=none; b=qJKjeAbdlSGG+dNMOqBfuDSbEan31V/603lLZ0lTDr+uFdld7MOn4P1XK1nWBndZHflAUa2BfeTJYYmC8/i3HMIc5QNnvjWWqdaw69tYnpmy2KYh9EzSHbeBORIkGuFvr5hzs5RzPHhOlDMGehaohuKyhr22YriBsVB6MWVME5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757216994; c=relaxed/simple;
	bh=yxGtRt31UKzgd67vsx0hig5PM0qUZEH4U7fLmgvjOsc=;
	h=To:Subject:From:Message-Id:Date; b=SfIiHu+dv24WIdoemMTLT24M42xmWOzFCyIwiqBzPn3S+Q5BdM+5AcPOfWTpnBfEKs0m4629YwZrWwMzfG2tamw0p0/LQVi5fCNCxOlwAlQFpMtzPXaMtDxTLNKAdO7nACHfPNjqkx94TO/Es4TgRoTyRWb8QSXNN7AExK6lGs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgrfe5MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgrfe5MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4504C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757216993;
	bh=yxGtRt31UKzgd67vsx0hig5PM0qUZEH4U7fLmgvjOsc=;
	h=To:Subject:From:Date:From;
	b=kgrfe5MYKaqT7SOiD37NUsQddFKGWidVnWtam1Iuq78D2XKujb3zCLVOGoBu/QhvR
	 8b+hkwG+Ujp7G/gmDW0TFwv1vPIb4uBgIQwHjEAxIEKfYNc4z2P8eAvpfRwR6tp0HI
	 TjAsrb1XqSTk5UGif7LQRAluRa4HZNo0UCpjFQvUAKrV1QRZwWbzuE+IdeTwOyf5ur
	 Qtp2CN/5iv6zjRo8Fw+1qMsuBrNOZ7PFJF9ORvEUBac3hmDAcur9uw2TJrxAPgZwrA
	 hHHF/JD/Z7pc1K9CGO1wBOXiBjC7kg7ZboNJxAhHdcUkN8si8lTMPcHhMudRU4U4Ct
	 7tiz1Tjev42+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2CCA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721699357.25479.17199438610261112012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5450bb3591a2628a3321306e20615e4d5e3258b2723ff0cccf218c5d14feb759
Date: Sun, 07 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757216993
