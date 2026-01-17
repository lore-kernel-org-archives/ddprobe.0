Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF42C54652
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768675434; cv=none; b=mfmxKuK/2vx9zNeaH7DuKR6Xl8lrwHW3xtj0RfDamUwq6DyG6bjPWPH3NADat3MugXaqQn1OWsof8CK53uMZBym4TEEKzrokYoDjC/lo9/dmx4ClJ2d+lwSBSOskz1UThggDd3ldXP5rZENE4dp9VimvmT7sJcXTnfvf84RQtaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768675434; c=relaxed/simple;
	bh=aXYZoQEG2aVUBnFdfLbPoeku3qmNkjYP8sGWAUO/9bA=;
	h=To:Subject:From:Message-Id:Date; b=Yu+oTBWA3COr/ec4MgUPVwwv3mizf8+UBR3fed/hGZdfKhvcSPLxDhD990tZ0W8q+U8e0ohMWf3EwiI+8JLlmH+DAspxOvKyLDexfX5Fba3myV71ElGoTz+ZT7uQbHFNivg84q++P3xxdqVegkTU8iqdpqx3Bym3E31VgCF9V8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njhg3LaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njhg3LaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1291C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768675433;
	bh=aXYZoQEG2aVUBnFdfLbPoeku3qmNkjYP8sGWAUO/9bA=;
	h=To:Subject:From:Date:From;
	b=njhg3LaYoCdOTCFVmj+4ehHKTaOY72BMnTrAPrNJDZ7LdKzR4Tdeo0xH1IuzQN1Ya
	 BN8s5w9gXHQNw4PGxfrphY344N0yqz6fcMCOPskW9aJKwmEBbt5w+0VBfvfGHjWh9O
	 Fc1Vlicd1vdk2I9CcWWqNaw4tfQBwe1TORtELIytNHEE9Ucc2GCHIpeZOpiFVcuaDm
	 F/jZCDOqkxu5UFOPqqOsqhJ0OT79pTVcMxKSjBk1RVQxAXW9gS5awD5DQZLzA4rDbI
	 qFPN50KbwxuBGVEkJMZ5oxAIvnKv+xKo/ptqGCik4+JEvCNOD52riDXm8gyUbHpG5Z
	 Ni41DNJh2ZdXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F793C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867543357.23670.8626172761479192997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613409e83c3b884bdff62d0341dfe3f21a4d4532eddd09cbac96e2418fcb9cbc
Date: Sat, 17 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768675433
