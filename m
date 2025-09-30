Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8AA2E9EBC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759219793; cv=none; b=hePA/FvZINWDUkpGax8Bbi7hlXygX3k9RQ9XcxxcvQ3LB69mtmLOket2a4bXY1WheHySjrCItISs/PFbSBreSeHxnHGedl1/voDg449PNvbv9Ylg9OW0qnJk+3BxhmrLX53I8s1hvtOjXEHwasAINoARFygS5wiHunUdYMP69io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759219793; c=relaxed/simple;
	bh=azJY8O0slpVjKsHUzJXLXgcQHJ5oPURWdIb+recva68=;
	h=To:Subject:From:Message-Id:Date; b=d7kgBJHsrE5n+UEfIYE7l1yqpRPzyEZobGq8R0dZKzjL+9M2DM6INd15+juywLi1I2/aBeBacdCBS88tpGj31JHDQRawTf/HL4o9k6mzvNhk9GEVVKabUlKuLJfSaGMnSzj0aNRi81dlwGxdFrzkU8IH50WxyE5EKwe1/y37NuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BO5u08Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BO5u08Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6414C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759219793;
	bh=azJY8O0slpVjKsHUzJXLXgcQHJ5oPURWdIb+recva68=;
	h=To:Subject:From:Date:From;
	b=BO5u08Hxt2udPjh95MY6rDwc8x+zciwcSBHPXTgr2JPcrCvFLe1AWBzWS9um+1nbX
	 dQoc4IFsWEzzUhqYHfb6S2g85hlb/mjnqkedMYHc0gP4czY2RFjBaAyOo4RL4CO36w
	 zl6p+NzxMJ6ct92aTuh0GEvBTvtHZXfc1P3Vif/E6KpH+28QRQW5gflgQc5npwF91v
	 SzONi/AMQgOXSOWac0TLdDIicCtW1UU9CLR4b47KAO9d07jRI+OQrTdv/7Dg52WUOi
	 phjKaUa0B6xI/y8NuKlATr4r+dlsk8N88FLYXOJDf452qDPJMDo1nmQ/CG9teDpyDN
	 gyHkF0SwW5I8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1DCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921979358.18746.4252084616619520155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53a8c52448fae21632ef39771d0c084467b84bc50cea99b87b52c0b3ec6dec8
Date: Tue, 30 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759219793
