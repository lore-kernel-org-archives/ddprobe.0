Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22585221D89
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781851594; cv=none; b=qfIoDb4/uBNLkprG3UJ2b1xyhHi7EXCJQQVbwtubcAdvsKr7nHPc/JtpOHlZuymeu1aGQrH8xdYTMedYuNO1oCN0M7gZXSG1U9n/wNW/AakDLg4wzA4TH0fAcQsqSxZJrZMfqmbXwG9olpBlmZGOkmISOy7utn7KIsMlGDLk1Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781851594; c=relaxed/simple;
	bh=TPPbs4Qj40d3PO6fxuGTzr1xHaPrjOz7G7gRhMgOQfM=;
	h=To:Subject:From:Message-Id:Date; b=MCYAxB18ogMMdFOEV8mQfDE6gykhllms2OzCIPBIP7jtN2hytYeIDPB6E8dSgKEx0rdQpjiPs5Zzljlpxq1SEpl/Nj20Ph3OqttqfWzU9I7me7wIBRaMsGCmV1LxpO5IjQjxfJDoFVpvE3JRWYjHpEXMaTADcfCBfzIqMvILdEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXzeYM3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXzeYM3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EE6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781851593;
	bh=TPPbs4Qj40d3PO6fxuGTzr1xHaPrjOz7G7gRhMgOQfM=;
	h=To:Subject:From:Date:From;
	b=BXzeYM3YL6mzFoBBBKY94Ft/p4tu4mcETTSE8lOdagThpy1O+AGpXZkSdKBS3QYVH
	 XVkzt5ouRhpNrutpgv2/01oKPa1FaTC8HZJnSPbWsnY8LcksFQA5y8pSLH2TjtqxdZ
	 TcdRcltgHHzIs1cOPn/eJ7Ppz/MAPNy0CFMiy1HWKrjEki1Wq3YuDuCBt1C1GegRAe
	 jgtjxxAAsjv+UUqf+pORyDd0LkI4HMGe0apdxU1KU4GNwZcIMUS7hATC9K4+RYg/IH
	 4iyoF/ALKUvu7HD9rR9wrU8d7LzWA6LLENEZUSTwVdOhpTK8Y4C49h/YVOxwdYSWkE
	 +2wCaUJDcju+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1FCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185159368.9333.7509164466176568812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64271b50e99348e82510003019f518b5a84c4537683e4b0a7886285d324cfb1b
Date: Fri, 19 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781851593
