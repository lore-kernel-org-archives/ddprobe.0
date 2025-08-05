Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199A191
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754366994; cv=none; b=E/STvJ4FN+QT9GhaDAK5OQ4JgaNo8Mpex0DhA2udW79+jVuzhsJQe2bMWjvL9ySJFpYM7s4IWCoe69mazjgsQsS5vA0ijkagSBzgkEvU1am3bwKTNfdJw7mtuvIn+zVFnWQD58K+tgXrMg7txP4AAupU/ELsCMLVfsmw2LGSy38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754366994; c=relaxed/simple;
	bh=QO0ISbSqxoS8WuD5PDpbDX7NXNQHwcpIROwFEUUBHGQ=;
	h=To:Subject:From:Message-Id:Date; b=JHncz+MSJxBrSL0JFfauSis0vN7ZJWlQ/DIFxR6LkPUqvlRF11zZgl9kyFKuuCCZdQuVgNB6CFQalAInhK9dBUyULd+AXAwqbI/pz85bAzdjJmRhuQNnDLNGhW3HhZd6wE4Y8Oda6Iaz+xn2FMY/ZK5esbTgz5DvEew2GRPq+10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeDOxnYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeDOxnYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F08C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754366993;
	bh=QO0ISbSqxoS8WuD5PDpbDX7NXNQHwcpIROwFEUUBHGQ=;
	h=To:Subject:From:Date:From;
	b=XeDOxnYMb89RdzK/pq/rEsIUzwgSsh0M2MIE8M7rRiBnQmwh+Wu86Us8+9NaZKEhr
	 FPZeotyUgX2ENGukwKuLlVVZlQMpl87V++Xuj7/LAoUzX7C8U7HMy2m46FI02151Zf
	 E2dM1izdtwAuH6RXGtNx5yoZrR968XfuiKfTbhI1YO+JOqBUuGi6rc5j/Fmc2kUQ0g
	 R8qJJk4Z4S9mdobKN4WFTMPVJxw3D2Xz1Opd0LcxVlPir3rSZvhnCcb1sZ439nPC6V
	 mpm+i4oltngZ7yXOXGwGAnPCD1W3d0G2ISJrVrqSgCduhzyjf31YxhKtOGbhse+Gi3
	 dYFtzFG6nw2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FBC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436699357.27275.18266843477713660798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b6ef475b5edeb9d722e6041f3753cbbc3b7e767c4fd3890cedf0076f1cf76d
Date: Tue, 05 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754366993
