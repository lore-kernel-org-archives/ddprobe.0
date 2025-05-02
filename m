Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45398F9CB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746227394; cv=none; b=NceoilsRkHUh6+2EyF61aohbzhtGQNc8R+WD7hATAuZFgLUYZaPstmN6A2kToFC6kLG2v6oPbsKZi5FJoVigXg1RCPewxy2B3m3qZ/NKBwloKfosJJdZiPC5I+R4W+FF6pGdWyry/xs4fafB20mU25HkR2sZ0DMH4Ab1GD2AxPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746227394; c=relaxed/simple;
	bh=Z2rPnJUPWKxbkd3Swv7WgYap08m7yZUN/9giFkQO2Uo=;
	h=To:Subject:From:Message-Id:Date; b=VCsiLEcL4A9sbBcVf/JgPvQejqjk0bKJTvquTmVuIVVUYcQYX17xWNtXv5gynx9he4Sbj0t53JOPkN9DPv+AVh5Qt8+YH29Qc6/CPsNBaLWmw8SqP5Opgx3Eqn20+y729T927obMzB3l3I+I+YsDyzldlyurXLjAkK/Np9PUm80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu/F0JUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu/F0JUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746227393;
	bh=Z2rPnJUPWKxbkd3Swv7WgYap08m7yZUN/9giFkQO2Uo=;
	h=To:Subject:From:Date:From;
	b=bu/F0JUUFxgC+t+3h2pMV/2HsnAaFdB/6rsHFxfIbIjpttC/Q+EVYmI9UBu2Lvhbb
	 GnMlYBSslQfa1WqSqybwJvNnbw360nLRJdybnx2KpHnVYV09481GjFe5EZCILovsY+
	 cA+Hk2H9DtFJwnLHFI+O+DX/1B2znCbt0ipEz83HWKhOfEDbs/O3t4FDfEfYqOnMrx
	 ZpYp+Go9P5hnBRHS0BtLAtArefpxCrhukEryhDGFf7Ykf+lrUsCvZQQant2yaIP8PA
	 tBto6g3CXibMfAWdTKvhgApgK8knD/Tc7xTkaiAxA1DLkFC7xNwIeY8WPBoQwixZbv
	 JbSMeBddmxfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B05C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622739357.2770.17693690459594676097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8098b80087e0854fb20b320bd4b6eb99187ab48cb0b1c3d76c1b776d05592784
Date: Fri, 02 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746227393
