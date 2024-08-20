Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B7649626
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724187954; cv=none; b=bDNZbyvHrNHO9jkEqDxsQ2cB8zVO8LuScnfQvAPTjk1ha9N0brwrB/x+tBBcqfO0bLRV7pVdBYYtFblxHJ9Soe/sGLxl5TGsISarj/l0y9pXMGqVIcL7+Li3ux1jdbsIx1jWUeZiwRm39zaEh8q2ldcH5RD563toO4ixPHCofEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724187954; c=relaxed/simple;
	bh=KIQ/O55L7a4iD2GhtaQpl3UkFoCexjDBOdMWH+fOxLc=;
	h=To:Subject:From:Message-Id:Date; b=Cysv+Fq4cHMj5YHwV2Vw6QV+pGsSw2L/4h16iLCgcknNBf7DENod64Y0AabLVUNkhKtfyqsuE7L3qYeZ1PQ5Ig1hPQGE2VwiuTdUMLjEumNrRwNJ2/Jn2GF2MmWb4v0BJ+8KalM2eVXlwpRPU0aI8uUGsYYhFneSr1Ddwbxxbd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTGx3WWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTGx3WWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B97C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724187953;
	bh=KIQ/O55L7a4iD2GhtaQpl3UkFoCexjDBOdMWH+fOxLc=;
	h=To:Subject:From:Date:From;
	b=nTGx3WWYP33Q5Rq1W+KQE9mGtReCCH2sKctzHrv+WrG9gXllMB0vg1xOam6Y6Qba3
	 ZKDzuO6naJDTtKYH0Um85v+RZd5m12RX9429cFvSC3vfc9WK1Vh5M6P39Anr9TD3h/
	 grqaDKGMi+Q42FSOHgPR/AT9/lLQ0SKuaETuC9lbP5aS7gD0FgpgTMvJgiu+oD0FTR
	 PC9jG+AaQc9fLnMFf1XSRZ8jT+KWXaERh1One1J5ltGpN329zaFlb+ZEqoC734tCKl
	 5TKPDV4Zx2KCBb+T3y8yyrHpa3Oocpj8PW/WSx9S1K1Z4mawDxcLeEqR96uyjVMot1
	 M/ZiPnfUoJDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0FC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418795360.24820.9324902194043482116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7357bd2f692ac7cdf9628b1cf66adb72a0d81bbdf1ff0528db67536c8a4a68b6
Date: Tue, 20 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724187953
