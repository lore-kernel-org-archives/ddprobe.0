Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED3018E1D
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127163; cv=none; b=lUXO2i+HfJFgBHRwYFOxqiHvo3f9juupQf75q5QyNRQOdxHf2KtgMXGeij2GKyvLF2XHGlLGOdJcqRxbg1Jwkchn3t4DHiRLKY1syeNHJb1K+4XZSGlTJiwp63CQ47ta7mQfRQ5zNlejCkPKQeBuDVBLDnDmxr4nqBFw0e9E0NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127163; c=relaxed/simple;
	bh=xGbOc3+58aM4xlbAgTgdsUQett2iLLCysESirkLzZi8=;
	h=To:Subject:From:Message-Id:Date; b=amoinEvKAUqWaX2O1LuzI5NLbdFN6fEYecpC49gOahp57N5kyt/9phPB9AUsmwRpDM190dCQNgpNfT8cZAvaVcCxYmhFderX/a0E0uo05EENAMjcsz/4wcOXq91Ux5r2VMgzIB6oUSapRhrPR7x+Do2TKehtpa3Ls5WEk1TFwh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHXI0v51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHXI0v51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD70AC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713127162;
	bh=xGbOc3+58aM4xlbAgTgdsUQett2iLLCysESirkLzZi8=;
	h=To:Subject:From:Date:From;
	b=vHXI0v51A9+O77X0v6U80EcU2AgkRET5j54IF4XBa3/lMdX9lkwq1uXPCS9wRCPgf
	 yohRWgpI8az+ndIHKKlSdXNrIjeGE1hExwgdHEg/KDDfSw8O1JxJRRpi/lmYqys1HB
	 R3tgeaRAvyWPUUredakTU5F3rBzpdmsBa3CMxn7e+g6ihpnhHE2j/VG/CW1GK6G/j/
	 TSGcPNc/s3Z59YGA9GLGLEJan78sPIx7IrZFe9B7sO2onVR99Z1YN3JDJjAPC8/AO3
	 VpLww0kvF94RE6joGjR310OjRtOYFS2BEuyVx5jGEwyZloE2PL/Y2jNyBeT7z3lfgP
	 hVLjPgGuBRAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5775C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312716277.14869.7945272241547513709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d95476d2848817490762a64bebd1106d798decdfdc62b8865cd0b71bf58afb
Date: Sun, 14 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713127162
