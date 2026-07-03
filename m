Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C39235677C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783058914; cv=none; b=jA1bGGEekI+rkdXt06KqGq3JM6o7WPvmn9/O2ov/RAMoqmEqNhII6Qd5AwnVbaB89bQ9Y1UvJ0v17jv3UqDbZA8mRPSdP4m8CdVALHdIqXWKMuoD7e9PDTbgoS2hPzJqW0PkwxIu8MBoemzc7LA39v1NYnMlKt5Fy16hSNhDNcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783058914; c=relaxed/simple;
	bh=l+Id4g9s+//vY+DllZjyG0X238l0m5NL2kDlKIV6LCM=;
	h=To:Subject:From:Message-Id:Date; b=QarVU2bZFduIXnCvDNHCmTV/J5/Z2onWalHNMBTG8Rpvh8kQbn+ZTwArYoO7q+2Sc8gBFjf4ucaFUFTR1iWtVv8i4kJE584KUZQ3cvlx0j3udbOC2MSxRVhh0JQM2bG1tX7/eJ7JaW1Pmk/+rPjoBjkRDSXhai5PQ3QdQMhL10Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4hfRGXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4hfRGXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83C6C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783058913;
	bh=l+Id4g9s+//vY+DllZjyG0X238l0m5NL2kDlKIV6LCM=;
	h=To:Subject:From:Date:From;
	b=h4hfRGXP8BX5saBCyVU0+93W7y2o7Vco7DyCw8iV7FW9EOgXQzJeGaIFMx0JmslTF
	 KwxUbs87pu3OiXW+0qIuIp9L2U4eO0sM/r4DN7Elt/gokJGS0K/Vnu2GRfudscNRH+
	 kpoNj74hCb4O3B+XQ49jmZ6E1N99svjWJfYHjWyDLMwynAhiCzMuh6Hj6LH8+IeIKG
	 exAL12FZjIQXQjDwQ8g61n2lnLOwF8bkhrhEhf0y7brumqRW8zI6eq29aKdz5zyYOy
	 rv+nx9+ELmXBiJx4QguMGj/U4Am7Ca2CutJOyyilrEsy9rCEWb87eDtIQDCGT1IIQM
	 mbwzPLnTgEUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6794C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305891371.22264.798901401495854669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32adb897b3804dcc1fb7c420029305e1a195120837bd79e5956674fca3fa69aa
Date: Fri, 03 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783058913
