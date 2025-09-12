Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B532DEA64
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679594; cv=none; b=dligIP/Cw3KRoa+F1nncQs94eqWybX+ZV7ytnoWMvWQwvsybbctJPiI4smGBhd9p485hbbGL0StcJmsj+8G8KAIHPzUOobmOoHG5VI0YWIOSzw7/m0uN0auYeH4TlOuMR3TvgVYdGpEwGWKeRZA4UJbNH2zj92uUG01Zac3E8Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679594; c=relaxed/simple;
	bh=OpM4nte0GAax8XE21c+sPC+I8EUh41gBgrP6JEAjaTg=;
	h=To:Subject:From:Message-Id:Date; b=lhcJdwaY5OPLHlOfwIptLJDZ76aGoIq4DZR9uJF3ZV+q5f04flALlACz2fq5Lj61lynulkNPDdCQuTsyK69/Q2fGfisLu4Pe0uAOg+R7ZoRs4ou7SdO3x1ADOXKLCnf4u11Gc91VJGhkSHbh7H82fTrwnwaRukFZGe8W84YtC1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI93mN87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI93mN87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C792C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757679593;
	bh=OpM4nte0GAax8XE21c+sPC+I8EUh41gBgrP6JEAjaTg=;
	h=To:Subject:From:Date:From;
	b=OI93mN877iLUQqcARmcwtq7UV7T1FZ370JjfJCyaqViECE9qAeHwMpaFwmi/3JIYa
	 Jb53c/2yCYaxBBIWcbEk/h5ouskl39QfMYR+k324A5nHw3W7ZDNfxSZHH6IyfgclcA
	 vvD2V3FFIAyKHWVZH8/mIQ6OPoBEN1Blak5zMc8blUdyvq+V2mZGGWgHGJ8NE+u4Hq
	 FE5BLs6mXEAJuFby/FAm7dEuRgYDDPlXwA86AqrwZCW96zqfcaQ7jTEu7YkmqdSsIN
	 LVUPAw8aaGCRiz1XFx3oMfXH/WL7xHSDfGKZNRGSKiHsEhPDOAT4lmjPsbkQ7r4MWv
	 DbZyNonH/P8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EBCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767959357.24788.18008838313944790383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da1e38758c1894b7bf544b37dd06918cf56dfc369d9825d198f5acf8a8c19c6
Date: Fri, 12 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757679593
