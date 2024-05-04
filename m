Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535EC6BB5D
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714853543; cv=none; b=GWxQUM8V0rEIAntcNAuNiuh2EAXJh9taOk6Uvycno+Xo4vlOlTcPRMBSNX+ZLo4AdgpUWCPVrzmyvMKA+EdUsqrhZnCcPJP9D0Xnyu1jiGoTH7qqCtacFcl2Zv4DVgCSIIKqJgfgrQrEgnYFglskgX2MRVFo8JBA3xqd4o8c4HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714853543; c=relaxed/simple;
	bh=jxYZG3ccz0wzfR+goHLbjUgjPQtwl3Gdia14ReQROQM=;
	h=To:Subject:From:Message-Id:Date; b=SOs9b6O4nl+K0hKuJmTY9qaRXoPzylI2Rn6qimHT0ZrBL93XxyzFnQD5N9Jd2T3CGoSMRhnE0IHAc+ySgpYpNLbDXrxTKXbKJG4OMd+nBeVG8mG56MBQoeQjLApPMnxjBdyYhRbUeIQgTB0eCvF/QQUJnvi/dwr3VR08zYbhQ+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfuMbbkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfuMbbkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F0C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714853542;
	bh=jxYZG3ccz0wzfR+goHLbjUgjPQtwl3Gdia14ReQROQM=;
	h=To:Subject:From:Date:From;
	b=sfuMbbkH/DExaCo1URJ3V/BLY042DPegX9jsp1TN83dQXvsVHnPwGIcNp5QY8Jgt8
	 ey5JY1t4fBZSonUEdNQpmannaqePxak58ZBzJlbIaRGY843p40waLLhyZ9ouogVfz+
	 RoQltE0JZ3aoZKBGCsUTtADPBp2bjdHFX51AftN6c9aSqmS/n9kqh13/AcDq2SDcg7
	 nDD5ZreL5lZ7NVldUIU6X1JEmB11GYLpOSCAetpdf7Hpf6V6j9LbAY+HPMPHREFVWm
	 Tq1rSb5aIxQtMoIPRj0TyKBZXC1h9+WEpqCMpINlLx4T6Yyj/FtSm+T1lric/zpmP8
	 s2hC1RLg+6g7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A7FC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485354276.27363.202569274410288070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b3f4c12cf3fea0691122bb9f2b087cefe0fcf7576a8cf287409eecae2f75bb
Date: Sat, 04 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714853542
