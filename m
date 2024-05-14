Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582A4181CE9
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715724743; cv=none; b=MCgkqKwq/wCG60jhRhNG2AwuZ9yYp9snnGr/6ReBscjCyAbpdC/F+kG5Im28q9mJ8Sf8ugtgugB0+Eax/o62LM6CawS/G0tzT56ETQBeBe/bQHKo9qwhcI6akzARgOndDQntKhOJlCH0u7xWXi1iqBbS4mi9FABI70KuT212E80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715724743; c=relaxed/simple;
	bh=Kw9SsjHhAXyy3RbvihNxTGifeihnjzLZ+Zi/BvSVk0E=;
	h=To:Subject:From:Message-Id:Date; b=dPWBJwZtbSikTU83S0DQt6hVM/C/QKcuhbGKPD8ySwwgp5/UBjYjcqbCQvtB4aLGK7POV19FYNBXyr0YuPm7LMYvqdOJcFQE5siFJKBHktjNRW2DUA3wV+Q0HfzIzdpa8m1VrzQqZUQKmzvdGoRRPgXiSvA1yXqi4zY8rxOHsog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxjuFCLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxjuFCLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7012C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715724742;
	bh=Kw9SsjHhAXyy3RbvihNxTGifeihnjzLZ+Zi/BvSVk0E=;
	h=To:Subject:From:Date:From;
	b=GxjuFCLEPJ28F7mzPJeHDKSY/HrDylSlq1zugCiOsSW3iPq7pVRdALi7z2ysP3GBb
	 b5ZvSOnV5TpA4NwoLHvfR/CDy6ox+Tt8PUckMCyZYR9AEGEQTUvtjhpMopLwbmWLXy
	 8jVOd/o3onw6PVdZyghhUjOcBMba4EtdbgI02HbxrppWyNqS7p3W5IGxj7VFQazEoX
	 pn8VNynFjBKoHcDVWfNPvcQz3yqZv5tpXYxeoHHJz7f8H5vwlRKmznfgbm7wFY/pi8
	 suYBrXEE2TsZm7MLSxE/Gqf02lWqMpqv2ePyNEWOrJQiHt96YOIuhZu/r3M1k158Zg
	 WpEeSMIce2SWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD067C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572474275.18210.2236855290012761212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc308548a631a6e048af8f0f28daa1d34d7eb60f6af894a78a5488cd50e0a8ba
Date: Tue, 14 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715724742
