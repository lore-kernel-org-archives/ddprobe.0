Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5396A355803
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791001234; cv=none; b=dxdnZDbVr0boRrVULu8OG/FWQiO0Lg8/bwVYsviawDZNtFR2hx2hXtQTIyLVqHZinpl9gp+W6uzTrpzxVaG2axkutvVY/eQPMRpXeJFpPknuTfiZqlqMavslS90Vp167c6215b6ZWwVU9FvyQg2b2DILB3W7dQ6rU8jEbxiFCE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791001234; c=relaxed/simple;
	bh=IbdaGvNTzculs7wSzu4PQNcsKY/TzWL+lUWIx1M3zos=;
	h=To:Subject:From:Message-Id:Date; b=uqdmOuBwqnHGT+P3bjSDZL/JuFarwTo6t8/h974QqgX3pcvoErdZ7WbSJPrBDv3A5O8DlN0apSphy3+qZPYvCYIsByxjCZKsw0zbfTOqrxKhSe+ApJWzKwIISHcO8I+nrATsVn0mhdXIzWhTnVRphXT4bIAYGcODX2l7M/PNiV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK7gQaDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK7gQaDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC35AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791001233;
	bh=IbdaGvNTzculs7wSzu4PQNcsKY/TzWL+lUWIx1M3zos=;
	h=To:Subject:From:Date:From;
	b=UK7gQaDgkMaDCIsnCebWofk67HLCtpe4ok2D5xAfnBu0iy0gS/drI2+pSYq49dS7c
	 kx3T0m2FScnwmYkdEl6pfitt9rn8EFdFDWTWeTVP+KhRl5nsEhXPO2CZ0HwIpsv3vC
	 asAbnDWhxPglqoS4+GbJMHg6GQjtbyBSHat6ZZsQLQfp5Hwczu4gaBzEgQ7NUqNq1e
	 x38FvleDosVdKodK5fM65ZqjaS74BZubOxtQAYVyClHeG8SZ1p0rVVF7gOhgyMB+f6
	 JZHC0az32tGbhjtIVwR45ywc9INI/C6LVdKAsSN6DRYb/b1kV8DyA6uJH8E55+jrAR
	 WoK9HoAsRkQcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C99CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100123368.25740.1059457310438835127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b643597eb694bb6b2d291f0b82824b973a9ac2525488f7b019130b6a7d3838b3
Date: Sat, 03 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791001233
