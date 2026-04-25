Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E04E16F288
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777102054; cv=none; b=InNVvcMt+HkqN0oNT5n+7f4OkfcXrHzLTt7arlnaQGHvLPLyEYdxqyqIIdsxoCF8GB0XHbUO+goiNVOVjKFKKvxgfG23R7oeAjL3Nnz2y6VA7Z8dmZpkQVCgwDf6HRrV/MUJxpS3G8KxQvCPq5R1PKXX3eXut45upIDFQ37degs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777102054; c=relaxed/simple;
	bh=CPHuZtFSITOHgWJeb740d66g3Wb788PWcNC8sfIoaZY=;
	h=To:Subject:From:Message-Id:Date; b=dS6MJuLR6wo9NEc6V1QlvO9bDEf1aqziMCMwpxbIuLo5+QqHUFEkXGgvZOZn09c11sfiTrXXptdjAEzv17OiylPmCJGkr4ph7O1LVFE+nPBwl6Zh55MrJi4DUTEyxuNfAp4AN8C6X1y3jEPvrrKpWt2OZXDeuenIpgXE7PZ1iaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unZsmYOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unZsmYOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BACC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777102053;
	bh=CPHuZtFSITOHgWJeb740d66g3Wb788PWcNC8sfIoaZY=;
	h=To:Subject:From:Date:From;
	b=unZsmYOhpY93R30+6BnjwWDrGnGKUSH/Umqha9uP46ovfl2uCRVMUHgfdbUDbo0QN
	 XsMD7wtoilo3gU9H8tTm7IRc5FsiU9CAV45uo4KmnVjs+E5NQTXndCAwUE84d6ReXH
	 yAg2uwFsC8br/EfQhfrlhkWMPDnaHwRPaBWh6v2ipcaWyCgVPx+dHi7fH58e/SOPnI
	 ofu7MMfxV3AaWxtjNOXgb0SwlLg6frniBwXW4HTVFRuStAI0uDzoAK4o3ZF8VRF9qN
	 NK5ScLyK3rz0BHnh4wfOiWilZzV1wHE6Kdr3G2aO1W26Js02SWER2deVTPl1Ggl4UT
	 nso8z5U/TDLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED73FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710205368.16164.2494545723117829214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06e1f0684f9bdb3bf1fed89675d9866723a57e66e63ada2190bb5f05d07947b
Date: Sat, 25 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777102053
