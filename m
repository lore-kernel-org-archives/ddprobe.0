Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368BB1FF7D7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759793994; cv=none; b=JP2x5yzvrpBsIUCPC+52NrdoCqMn00kloA+LM+ibJaww/BKGYmQMyBUKsaXdnUHGFo4pcNp48uGoELJ8Xrf+aymZsbtulhqB1FNSDt2x0DBJUGyS7woG+VjNwJ69fg5JAYBeLWKRkhBiLQ4rdqHPW3wnc4/wdIlwNCl6SAT0nI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759793994; c=relaxed/simple;
	bh=56+vip2vUg+5+veNgZQW/y/Nms76bTltBKzu1anJk9A=;
	h=To:Subject:From:Message-Id:Date; b=CkZaKbOPVexRsLaKgeWKgU+f9DbE1Q3gLd/ov2+6W6oen1meW9Gq5CR15Lt+mqzo2uKvyovnGcm6DZFnKLEblePXFMVkxy4BDUnAqcAj7xsTn+q7nBE9kTCqkWa7qnxnnBGj2sIgSCz7E/VCHf/CqPbRKKiuI+ghGprUpU+n4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+4nienO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+4nienO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759793993;
	bh=56+vip2vUg+5+veNgZQW/y/Nms76bTltBKzu1anJk9A=;
	h=To:Subject:From:Date:From;
	b=R+4nienOPcwXgAJpppK+8ii3P9BSP5K3P/vuULJDRWedFmiVRYdSoAVS51i+qIcm5
	 iK+MEB24RSd0g66fBLO8urDbmriQpghgFwaTgDYHYukMIlTGG2sGlo4pguao+7EaQR
	 GWyQglMEvqTMJzfIeWayMHA/f+rOsXTCDaugV8sS9p6lJzje4Y0/qRYJzbneckBkaW
	 izAUyOaITeWlKovpkS0nksS3CtifYsYesdjeEVkaS4sHpXwk+OGbhaTCdo6AVNxBaY
	 DM+VMRlsDHuAvMPxL1rU8cOyLX9y8OedtYJHMxCsMlCQSDh9vGrVaFgCGC19lsT4oE
	 0GLbg4OZaU7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248DCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979399357.31329.6694888986096927658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b80c5d4b1c2e8f9b4648d174d0622da129f3442793de3a6a340c5fc70d32c5
Date: Mon, 06 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759793993
