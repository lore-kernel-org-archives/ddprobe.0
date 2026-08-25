Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5323C3126AD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787667634; cv=none; b=WuMcw1XQPNnAQTV+CWthIdpoksT8+uExl0ruZYkPIsG+95coY6Gqx8ysflKoVkFXaIUYJbsXTQPSSwzeX54jvp4bBR2e/jtkfZaboSYMIrkxTsMSB146UX9XJ9117DLdGwFGYQ0+oQgR5j22HO4xaoUamEAvH8CPkm52jjva6cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787667634; c=relaxed/simple;
	bh=lguvmbqOPJPjUESkaiCTLPDrU/UaZsaRlzxOeFXspz8=;
	h=To:Subject:From:Message-Id:Date; b=jRgqrj8fe6p+/USk3Hwb3RxnyZT66KpPDqWY4KZyUwIc8zp7/tsqm2fjuBWDiWf5nqxlVgrHvkqqoRgpsGyzAR8+wLm1WQAOkOLXpA6MAz2sMt+ba9n0w+Kluakefife9EudbmYMaOboIIfet7ZB4Fi7ilt4R9z4+LPxjGmHbTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lItyjRsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lItyjRsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E64C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787667633;
	bh=lguvmbqOPJPjUESkaiCTLPDrU/UaZsaRlzxOeFXspz8=;
	h=To:Subject:From:Date:From;
	b=lItyjRsxaUNAK3NDHO1Fy+xju/91dTP6gvXy6+qaLTXCuIegb/69RLPUBhDlrpS9K
	 PgKocUO7oNDB8OClceSKHvSpKy0SFVubIM2XCg1tZcRRxA+gmm4RYj2nA5UoaHEKJi
	 PnnQ3p/lIwBjZfoJR8ZVbJqCsMj3dCZdaK/x/AcHLnnQcBM9FpzCtSHtyaK4nheega
	 fDmhW7dPIoDPqJOkV2XEOf6sdc16D+GbZ9T47p/QRy9998xPANf5pyzW97DPOYoy6L
	 xHfzu1gwLJT/t5aQX0AB0weZhaSfMqsuzC3Lnf9prSboBUo8BG26K5UFdedXuYdXng
	 g/9wrb8JNWHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2ECC61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766763369.19664.17669694623452532597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fcfe17e78973e0801615995fa3a359cf9b7f9397c9cbd3034145ad015ef220
Date: Tue, 25 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787667633
