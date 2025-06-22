Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1DF81E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750601994; cv=none; b=jzgoImN15jy26coipPNgURfZlq0DdhLTZGJD4iWVePrWSuELHJdFAUfhR6aJiFHAQr3HvK81Y07QGDwvCNVwaNpMqUFhmMOPxVacxwPi56doF5P9CGfXe1cCH5Ue4e+G/9V6+hC4BdWvTp1spcj0XFUnMs+08iQWCrpzq747xuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750601994; c=relaxed/simple;
	bh=6YQQrPo1W1gVNez78Bv+LQ7hEoKmdrEV3XfNbqMcMIA=;
	h=To:Subject:From:Message-Id:Date; b=mhXghVT8+WcY9dRRHoUz2kMbyD1kGD512rK7WaQybFdKQDL1JBm8xzmszd/JjaWltoC4nf1RtmdK/z34oHPWh/mmxlCQoVe+PcXDaQYzKa7GUe+595pG2HU5Yok2ueBV4nzv07KY6p9Pj86WFqhXr1V4gd8zKQv4Lhb67/tT5QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox++1h1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox++1h1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750601993;
	bh=6YQQrPo1W1gVNez78Bv+LQ7hEoKmdrEV3XfNbqMcMIA=;
	h=To:Subject:From:Date:From;
	b=ox++1h1DxHL1P9b8QNk4bnJpCtNnAk5ANNX6nDNcCHbxptGGPJb6s3rFTG2YLQf7+
	 bb72qrIwokAftj53BC4jbvUkwZiq/xPqSDx5tHgSr6d6+u/KDFSHHoX1ycNmoeYDOB
	 QS/k3UadRXBlHWWwP1ilOo6fiobQcBPIC0aTyoEDSQq870VP54xat4pN/14h0dx++d
	 UijNDCpDfJKWGmJOMbi4B0bTvABmpbbJxi4wZ/Ln4jlI3qhPSKQSszt0hWtyn9RIK2
	 LdOxRVQlly8beBALo8z+4WsNXmDbXi3nN3Y/jyHCBQQxlgc3om4cnV8CuA3Rb1Livn
	 JVOFWbsgvG2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060199357.30771.4129938788196205174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8fc6d0a2be1f19a24d46b19a5f43c5f50e6abcf3bcd07db2c5da3fb6c121ce
Date: Sun, 22 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750601993
