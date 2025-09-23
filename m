Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC222256B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758641394; cv=none; b=CPIfp+R6ejxMmM3enjKACMO97Rvjg7XJ7fm5Vf0+8MwGdJic07lZeV+yQwcpq8nVMqRLF1cgUk4vzcheamFMwtOA0lCDfG1HBRYzYeZoFaUY/1DG4dfBXFVs7LcltNcCf3toqJ4SHiM7325Lh27ajO1DjyJO1yDKaSjA3clbtAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758641394; c=relaxed/simple;
	bh=vbiKL4TBw45hny3JHhIRwUgSrVOfhyZXl8zsxBkCy+g=;
	h=To:Subject:From:Message-Id:Date; b=Uk+iUOFKw/Dax8glbcNLvjDdSNb/b7+Zu8q0PEl9E7yJC0rxkZ2OgYiBvaq3osaQDkRwtK7rFewcUpBHOVYHrFEyNcv+XIU1get3Q2943LarKxtYPGv7WTRuR4/Txp/3nCX2IbyMWGilHQB1YVg9RmUvY5iOTAlgO73YmBAEnV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFINw+MZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFINw+MZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FBAC113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758641393;
	bh=vbiKL4TBw45hny3JHhIRwUgSrVOfhyZXl8zsxBkCy+g=;
	h=To:Subject:From:Date:From;
	b=WFINw+MZEcM6wv2y/xQY0Ib6x3923ryUSvNkyRskF+B1X6HyM/YiZgvAj84ZHKozU
	 rqiq6Fd4AGezMA7tBwS0lKkjsPA2KRYVYwexRysHwEix7zDMETbNLVY8Zi0i5XX/UE
	 vWS1F9zzk0ND8eIokThEYlGYF0nIz71kgHQlqkhmmTO+tQAMXjEh++/yMR6ry8l8ON
	 heH9zqGcX8LKKq5GNKLnUBEIUOjmliomkp1kyXsczU/T7Zao9pNKOzrgDKuitMoL/L
	 b6Dtswe91YbmekMzWbcAoe/YMvZyJcHB31A3sKjUIDKWDstDFAoA7TC8gaSC2Gj2tE
	 tWZeiSACpBZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A01CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864139361.10155.14793558442287575641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971312cd19df15a78c254e107120a41cf9e5a5db84a78522a14983ed50b1aefc
Date: Tue, 23 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758641393
