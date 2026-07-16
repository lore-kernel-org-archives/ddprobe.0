Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDE243F097
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784244514; cv=none; b=ZN7tUhdQMDrYDbRym12yqhzY2GqPzijYiwAKy9YzPq2HDLn3MEcoEzUOEc54pPAqGJV+HrBrLDInao0u2CZ1uAaMIv1im1n7CFTOQQcroCCvV3QC7/2xOTZHLCylYw0ZEmzUeNYyfukG8C25mgvFB/fKi3ZqScC/Hz8kNDDQxRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784244514; c=relaxed/simple;
	bh=5lZj+4T8bDZQjtzknnA3lNYadqSPFMMDgTggU1qXtzg=;
	h=To:Subject:From:Message-Id:Date; b=M1HdbUmDIbht4CnN2b8NIweoPiIakOxJrLV8XG7RIzwf9vl2gEvFL9KsP4MhHUOCJ4iLdFzOtr/Qgz6Sulqq2hn5lLBX00Bn3qwGHqubO83kYf9d4I11DFkWTLMPzBrSUBcQRqJDQROntRxw++7bNBQNYuqXIlFm/2NwhhK1hHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODKkRx3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODKkRx3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE88FC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784244513;
	bh=5lZj+4T8bDZQjtzknnA3lNYadqSPFMMDgTggU1qXtzg=;
	h=To:Subject:From:Date:From;
	b=ODKkRx3CiIaMAwRJT8GFLb0HslyJUh3g6H7fbW4d0F1mQ/dWEAaWUNzLcmr6Nz557
	 JKvyaqC1k1TRzITis3iTIfmhXL0N73scbn1EZ/PgT9Eq72picfBgw8ubQvmVqDCoqM
	 PBnw/1MiEr8SMNChUgehRCycU/HIeSbePlrKkJRabl88au1qBlHhl7tLv7oQyWEI1Q
	 tRpE11lHE6h/1+o1R7dhdzF1GO33CvyqBBkve04anpEl1xmDGWhJG5S/jdrquIk09a
	 CI+Ry7/WTL0Fbbh0AiowSlMiKPYzWTLvut8IS/M8Xkt6+ztTlDQxpaMKMrdrrcCkPO
	 kIRs1LMV7oSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD148C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424451368.10082.15667223150983531058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c66530f2300c32b618035c8ba4204608f98374f0c49ab37205d57da3c65f545
Date: Thu, 16 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784244513
