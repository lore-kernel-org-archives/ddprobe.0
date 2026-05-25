Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C633D4EE
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779711754; cv=none; b=i4Y+eU38X/pcKXWax9IJUrwkEwO4NBks22JNZ7kzDJPxPsFRfLjUZIGmZWdPlMUCMLPTFVprQcvQqZE3zFJ/5j3nm+3pKyHDTIw/1CWWjYOjj9tHyHjkWKiicBIMNAAlqhw6V3ju6HoAdcx20mc8PmyUDxDracDOb7cxmh9KSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779711754; c=relaxed/simple;
	bh=g+gqBL69dUCvTgMfmFmvRdMcJDI6Qiar4kLZzG8z28o=;
	h=To:Subject:From:Message-Id:Date; b=UC6IjPimZ1D3dAmLekngg+vIMPvN5yiuJtsaHRjUDSMEDEQIK79bXlQaVAWyMZMr8pYKLXXMkWR/pZf+nlIwlAZehv4zLVfE56+NmJ7pSMAWALo8rOQ2lRW9hDvF23Fw6esrKrNjlITdpaL/XziK61uwooZDVs6yPm9cXi8UPNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmh3+JKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmh3+JKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A13C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779711753;
	bh=g+gqBL69dUCvTgMfmFmvRdMcJDI6Qiar4kLZzG8z28o=;
	h=To:Subject:From:Date:From;
	b=mmh3+JKflU4DWcCAHcnwgmG3wOtWiP3Frxdug0HqX6V9T5hsmCMaYE+yIxKl36VeL
	 ki5oiU0mp2/jmDx+TlXRsNpjI3BJ9NibfLb+mioWZ2Nhkvr5OVuMMTXZin/s8zGukk
	 zYKbrUlEqVgSHFTNvAZlJLe6GYJZ1jgqqSmZojPuYO3C3dOpzGqy4GhqPfVQSLB11X
	 3FIbUPqccpp0ddGckBLmzVruNg1xbXfGUExZxE8uAovBdh5JMmxeSwvn1EA5rUzT7l
	 HAmBpfDn5uJXGKSbFzqJUWSsascX4UTajMoZmO3andF5fyQ2uygs8/G7InP5F5DXSV
	 2y1kTrZ0Su+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CDCD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971175369.1599.3405023093303883506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fcdca4eef4f8ba48d9e38eb84fdd94f1764c14e03cc07f1351e008c5d21c22
Date: Mon, 25 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779711753
