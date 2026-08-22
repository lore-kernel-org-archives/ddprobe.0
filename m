Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518242FD694
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787407234; cv=none; b=C9bNXZEE8KGYSAUw8ecYSPVfYNVyuNrEZkVKKotQDwoTJOxbJM5nhYKgmaobMvRE9/yA3RVPktsOZY+iuwKQjtGRfPn8qky8XNvBzirMY34H3e0nETFYGgfgYS/umFcQwIdlQqRXboJGhyyBdsWUYdEikdaYbkLDCJqwnMCE07U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787407234; c=relaxed/simple;
	bh=7JQ5eRrG9bAlN5Gz85GwKtCj3LkrNWdbQvkFYTO9ukI=;
	h=To:Subject:From:Message-Id:Date; b=Edo05+wDW2Ns5LCa5gJvP62fKdL2cU32n1JoPuQfKE2z5vmf8Wwrs4WQKf8MiWE8hNVXwtrfx/Zbvq1zM9752YqSAUPGGiXbRq+bRTODVbKzoMKX5cv+StasFbJmp5YiJu1rTcbCXNvhoF00TJLLpqUV9N/kh8NACGPNAYaW7O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMD24Nxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMD24Nxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3566C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787407233;
	bh=7JQ5eRrG9bAlN5Gz85GwKtCj3LkrNWdbQvkFYTO9ukI=;
	h=To:Subject:From:Date:From;
	b=OMD24Nxxmi6Hzo6TPdyzK7B1x//GmjN1aVq6vmGUExqBRMHW1/nYSbAewBLCMPFUZ
	 JFJY+a17p6UBdFqBH8FAD1z9F56xbMU43ja8jRAgFxT9TJDB6zYa0kUP/yfsc7IEP2
	 2r5LuNB10Q2zaqAWBI2q6fcywFWzXuPqbB6shJjtnZvdYnQY/7BoXBMxKM8+EfAKt1
	 Ftc5GKONlVvC2yHyxt1RBnC6OjmPVvaFg+Keh5S4BV6+bK4DFjrv0LzCoiBfpnKZ1H
	 qyecOj3T3GLhcf0EfQG6mLphr/MQEkUTj5DQvFmTNhoV3m/K5TDFR42jqUjqD1cZtN
	 Hp1NZueiulJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96D3C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740723373.2189.8336026158690143662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139075eeaee9375a245caa4a5737f2e885ae70a36e372d80bb9e8e6fe498cac7
Date: Sat, 22 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787407233
