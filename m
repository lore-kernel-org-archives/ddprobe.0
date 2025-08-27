Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D84119924D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259394; cv=none; b=VUbx3GsQ2/ciXkx+nus2EzRbTPQ2aj/m7ohSin2j8L5uRGWfStLS01AdmgGD9+nDqPNojhSqxk86U0V8NFwZ2uXdOPtnGg6CfAJgW464MZJ/yulRS15M5uQjbzs4q752KdBC6EK2LNkNhHF0nnD4qg5VAlKYliI6RcktdkthP2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259394; c=relaxed/simple;
	bh=FuJZLFRjUqwtC4/9Msz2SbgdLQMzilunaCusgFXRboY=;
	h=To:Subject:From:Message-Id:Date; b=P9stAdwrU4Tj+98jjU42PeWgPn8wosWfsd73ZEfWdMDiSPvUTRYPJTKmxgYkugUjYChF5sJN6Cd9Mi0XyPIHqGcZG6iStobXCOaGeXQkpZL2B2Dj/bUNYWJBblkMVeVjgc2KRfANpWMiUN78HU6iWo8bIOk7NizW67WGZZTV2pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyuFYGU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyuFYGU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4073C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756259393;
	bh=FuJZLFRjUqwtC4/9Msz2SbgdLQMzilunaCusgFXRboY=;
	h=To:Subject:From:Date:From;
	b=dyuFYGU+sWi76LG/mJhrUzIfsHc8Z3iNXD2jU+wLgO+4vOkTcShtBIXbYBGeJXtmE
	 DFD5+uPJY7w5IqxWlrLofzD0CUoryFbTGeU9Tiwi8nTkPzTrpsRSW72oW4gpJuEhkI
	 nFtMYglni77qBXLM2rG3SWxVUTCLT/RUwdkggo/vM3eoGAEkb+GX3FpJOfKF9Z3jwz
	 9TGybiI+sWJG/61SKW1gBaTuocnPvtNSUTwcIUJPY3dWJ/t0t8uO5x6E6zS5NYixtH
	 F5yuolBHsae1RX7m7zOUFHHJp9HwuC6DCwW2jfE0h8+SJBDfPBFluMQF5WtgEApvlt
	 0Outwb2DbIjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F60CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625939357.18922.2575591766252712522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a52676eb2a289b7f1cac74a39b1aa5a6b0a5285bd4b94a8ec48fcc917f1870
Date: Wed, 27 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756259393
