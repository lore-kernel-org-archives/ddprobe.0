Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6030170F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778884834; cv=none; b=T3t6XnCjWUyHs6NoDX7YP/jke7/z3555dkq5GbtFNv6h5nepvQRuESy+hOqoZraeVJZrDRWlOnHg/ohWX1N+zftWu9jc/fxxcHhAVzdWVP22piAyripMQrpboyn/M7Un3/YkZkXwF4DC8uGsYUGQJ26lb62s+yCRLhqHmOSfr/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778884834; c=relaxed/simple;
	bh=oCGfJa4OE6H/AoS2IH3Km5PDG4iMkrUwSYd6Dcs6UbU=;
	h=To:Subject:From:Message-Id:Date; b=pl2j7Tcfa60M4A3UgFEcdsL7Fy3fAsS1wZ1HoxljsNz4UwXXTWQO4022S2A6nf76EkZahp0p9kFCJRWCIh5WoMZc1rb+qIUo+/QMROaqvqNdTXe7kY+/iattrG0FUZwvl1jaZ0Q70mGoSwSuO7Fv83cuqomKVgs8w/04GNvDTqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvMg4a5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvMg4a5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD3AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778884833;
	bh=oCGfJa4OE6H/AoS2IH3Km5PDG4iMkrUwSYd6Dcs6UbU=;
	h=To:Subject:From:Date:From;
	b=qvMg4a5RGiPO/VvRV/xLNdUXm0hD9n7+yOODSK35o1gLD7U2shbzKo7Z4fStUecnt
	 Q7a8UJXJVmDtURgZBRixmh0r5cTJLop1BVD9JCvKasZOEjrSsA4f7zW4p+ZIqXrA4K
	 pwYegZoo1axjgDgV+4J4JvmWp3BkRqwjPF1fF6ihRM6fZoFN5NtEKTWwVs++XLKB6h
	 heS9R2LPvz93TI52VER5cXx92WSx0OT9UeOnv0+pETUJWbfwH+vfCpAsm2fWcRZFjX
	 hExdQ4L6E0GlzgautxRCkj/FcuCPSfcQCyIIjgwX4LHyMIIzfxKSQKwmvOdpJXaI9b
	 uh/LOEY7udwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0192CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888483369.28262.4044720033398512774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2304853c2ce30a8758e1d1636938e81a2f4c329335fd3a68347755ec1dbf9cb6
Date: Fri, 15 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778884833
