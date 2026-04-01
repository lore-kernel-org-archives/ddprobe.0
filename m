Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7A61D5151
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775004294; cv=none; b=OfSvtcC8Hv4BXyQzqeiu2TBro0VMTd45xkqMDseMdI3zlq/UXDtYUxIz3/8/IngHFMvKExkOtiTDIlvc5pMDWZMcDWW+DEsU3DyfIggmHrPXLHFkGj1iPdmtmdox1udwj7BEj8em9b6xGMwUSN0bQN13whM7jZwfepHcbUzJ00o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775004294; c=relaxed/simple;
	bh=ZuMRSW4jY6acysl8ijjI58GyrBJSMH4CSxIuE8ZTGcQ=;
	h=To:Subject:From:Message-Id:Date; b=I4KctFgYa2ffglp0eqxQRSWA1sX9WEctffd6fmhZlSJsmO6+rhAdKHqhvgmYYHtPRgESHrfDgm379DB3O/g/3aUUED82B/BkZVhQBOA7NgVjJWlk3KUqx6Ki6h/n3jyX0Yqdj2LeS0Hv5fxIfom+blTI/k+P8ra1AcmMZLgSUJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqgqDkCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqgqDkCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2262C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775004293;
	bh=ZuMRSW4jY6acysl8ijjI58GyrBJSMH4CSxIuE8ZTGcQ=;
	h=To:Subject:From:Date:From;
	b=eqgqDkCNJeqc7A39N9/yVU3a0wzCMSMleqyXlFOF/dIA/3YjGt3AkM6MtXMTsl17Q
	 tvK3Sy54PMIQBqC4dkAI9QIBA8akISOYDaCi2XjQ5dsFJv0EzcXkzXq4PP+L3tfJD1
	 ETOcnYm/BsOmKwXCPzmr7T2mjBjIzIdSqSwToBBJaHFVHkJ+3f6xWqbpM/50vrvYv9
	 fLT9lo6csPKML3AmAn2DNO+1SL4uKu7jZOGS55zVAiZevtwkoISEtlOGrIQfrb9ZOP
	 ynzuf84fKTygKO2aSlLVVGEWS32ba4ERRhyCbl3y6SaANjHnsJIdjrCMiTerKr6Uml
	 OVsgpk8T2aY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F510F9312
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500429359.5091.17033998051201189662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cab3d419825fd3a65f487ad27b48cd4e1f102e9e137650b6604005851ee715
Date: Wed, 01 Apr 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775004293
