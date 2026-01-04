Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E6923EA95
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767566034; cv=none; b=fPRX+Ka4/px76ubyGLGRJ5AH2xw+T0i2NcvtFrQ/n4CIHD2HOACngXw9AHj8YkK1WwplywbmAyDdpgcv8qha/k0XqZAlwgIroQKxImBeaXzW0NdezFmPFiXcFR7DBVdlwGuBmd9Dy7HSWJPcMkvHf/HcOGymEnsFzWgEA9qDxM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767566034; c=relaxed/simple;
	bh=l0QarlySfzVJPxOHaZ7hddORc06Qw4ge3R6Y83oHXFY=;
	h=To:Subject:From:Message-Id:Date; b=jt4Wvt9yJc35twobNwfLBygeVvwTVsM0JY2J5K/im27oBJbBkxotJhdBdelbX/MgQ9Tw0hEVfGiwULwu3je6OYJJh3F7ENPfCmXhqM2F1wCpxzolCBMQBz02ZgujhSyNynf3BLoR6fTp5xbWq7Hb/azHqVni6pe9H9UN8pHIX08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCY6J3pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCY6J3pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4660C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767566033;
	bh=l0QarlySfzVJPxOHaZ7hddORc06Qw4ge3R6Y83oHXFY=;
	h=To:Subject:From:Date:From;
	b=kCY6J3pDUHRgJY/2PQSASrthjjn2SHZ3f1cDcdo7+2gEVsNhoDudphX4SSV7Mm0w/
	 /GPM7NYsIuKvx55y5Ujsup21eWQys2RjnWRy6CeS3fHKWlyBRQXG5t3rFrOpijGoJO
	 UasPTtauGZ04pThbDDsT5AknIDELG11kvSJWsmGxJUlETUFsbKU4zlANfwWS+kikDM
	 aG6Yof/MfEdFdXZBpMHe62LyEi/UycEH/lDqfR7mdlUyxG0xQQ4E7wlrloaoc+m/DW
	 atyQs6fFGoRX8edsZYm2NbBQJgUjtkwTn1LganMFOEeUEIMx5s3DVflO/zbFssRbad
	 vBa9F0Nu9b3xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91333C2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756603357.5748.9546764277275787392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070d0dc723082f5c79160ac68e67875b7e3dd3e0197a703aab4858b184f578e3
Date: Sun, 04 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767566033
