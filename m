Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203F2263899
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764190374; cv=none; b=gKZFHwm5EvuCr4y5/5bi0Mb5P4vkxEUhzyf2OVrJvPceBSwgvCstxtdvVQV43up+0/QRG0b0MylDAq8UlFFZroGWRo0MPScwDh87KCt0ZqaSlOXg1C/FcLg4ETeQHOuk/q/n9z3oRcxf4mCpFZ4+zyNuSua8YIaRRl6ctumJ29Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764190374; c=relaxed/simple;
	bh=Z1rjCgCMqDFDr+6fxvsGKpQmtD7w9ridMIIcEKbl/xM=;
	h=To:Subject:From:Message-Id:Date; b=EzncqJ190nRzT1TSk/QFKHeYnck0QE+M9pHV2o+RyJU89K0stGG/MS6U4TeaEF9DsUIV7HFGctlIQrkf0Wkky8l1GQ96PUdD/i4ibNdmyOfI2RuDkDx8onkh0FpaS/6j7RMyZU8h10vOOPcpqcNdjCD4EYqfRMiIB5Jo19TgA6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cxa0mVj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cxa0mVj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5624C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764190373;
	bh=Z1rjCgCMqDFDr+6fxvsGKpQmtD7w9ridMIIcEKbl/xM=;
	h=To:Subject:From:Date:From;
	b=Cxa0mVj63y3W5QzE9O/SVZrj4FI12qWBFRcDdYOlNZ4MBaRFSPe39c51FSdVh6MbD
	 /FVcHvJ7OaXBLNXB3TrGQx0dNJjk9MCgqXZLQJuuAV9VPJmtHC0Lxvh8hZdRl9O4YR
	 VVv1b8aN5YlukbXaus3HAjBeFZWAAj0cn7YmNWtuTIFfXoD6C7G/akHcJHkwChtj+s
	 9ErfyCpVdr3LAHFj6vSJPojHqD3zEFpwY36QbUOYFm1YUCNAcWJAmuK3pEmhvpc+dV
	 hyt8rDl0FX2FOXYIeiLDqGK3pF527VvBhFbHCVA1Np4TNa0P/QZmOT79FredC3Csvd
	 zlbtIYNBhfAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A30D111A2
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419037359.29744.3561612719282707134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4363968f4b051464ccd0e5189789b2644668f5f9af42024e7980df3d9ff615f1
Date: Wed, 26 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764190373
