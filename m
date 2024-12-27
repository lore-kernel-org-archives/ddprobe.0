Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2998741C94
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735285554; cv=none; b=WFIije0YlCPbvrOZOXaex+8gGi4mTfHs7RMSJbsK5uYPSBNg3qva15x/WrW24P3Fchjlx3YjlCpsbJcz18PPXF2cK/obdPLpr0EKQULJwjpIS8nV6Sct/vRYDyVTST5qlw2XpSJFBz6R6v0DOxf9lRUd6O/kbPGqnMNXKF0aItc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735285554; c=relaxed/simple;
	bh=s/xb4Dbgkhbmwux7FG4dSdbbsRw7ZJV4dDEfx5Ji9fY=;
	h=To:Subject:From:Message-Id:Date; b=C8ob4QBdhHzb+UFllRHyN2IknFxnsvQhxvBtcQZlQ7pNRgMd3KeJIkiFAUZlNseoQwg+Jq1ZIjjXvfQjfrKNJWF86fMh9qjIUmHULWBoqY4a2Jf+SgYKGfFU/0R2Vrrib06I67fqhnpOirAXjQq1Wkj0uJp5IcC0umhRBQ1UPXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdDgPv+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdDgPv+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE5C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285553;
	bh=s/xb4Dbgkhbmwux7FG4dSdbbsRw7ZJV4dDEfx5Ji9fY=;
	h=To:Subject:From:Date:From;
	b=sdDgPv+y8smXZYSZDgEY7TuifMVt+MedFZcF5BRcTxjhkirs1FaZ13HiLpuQs/JeI
	 XQjIdnA2dGsEx3Dq9UboeeT4cPPmq72+aBJTk7QqhsSNChDdyjTaVDX6Wi53ok7P2n
	 SdPZD9T8ceoUYby4HqZR0h1tFC7Ey54HnfeuQ6JE6ifMMW2fYBMnsSAFswZULuGU78
	 DqTOT7rBbdezQ3Q22kPzOFZadePaS27427DrnhMaZp6KOzFoiAf1Oa/G7NzNyWJphj
	 F7aXqcJDPwSbxVQHoOM8XDdDjQl/yHH141Z4yJg2IPavtBDysmtCGkA0gIgCsvd2qL
	 /tJHL8oboPUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92890E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528555359.20143.14091203945950877556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48800e3b94890a9081d78f2e8257086fb6b98eab9625d5d4e82e6aea68ee5975
Date: Fri, 27 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735285553
