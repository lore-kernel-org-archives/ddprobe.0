Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD9157A67
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732835754; cv=none; b=C0z6Z8v9AlXwKFhwrueHmLqJ32Uvk82UsJBdU7m7FJoCG6k9pJJ1rfnOTQULZF60Wto2sWE3zJsAixsLCEV/E0WEZc35avwzgYe4j+GPXaUiYC8Aj45NcsGrqPF/gVbIXZa2Xo5p8nRCMsUPdahuIICbBomo5K1dDfWUxOKtPfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732835754; c=relaxed/simple;
	bh=RfJyxMtVi2Y22HWbN/jxH4vVTWGRYSwFAjLuVtF9vA4=;
	h=To:Subject:From:Message-Id:Date; b=m43tX/BQlhjcNYKEE6tx+o4zfYdjyI6qDEntCrIpmiPzTRHSvmeKptsTJvfg0Jmd3o8pgccctBFQLNiAbtYosWeVX7Zg9q9e5LWcLtpbX9bvXukBJwd9fD7gjt6HfmtTX5kTdzw0mXkDRVtMnpfC/8gxeZpWZulct8mQg32zKGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxKtYX39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxKtYX39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC473C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732835753;
	bh=RfJyxMtVi2Y22HWbN/jxH4vVTWGRYSwFAjLuVtF9vA4=;
	h=To:Subject:From:Date:From;
	b=dxKtYX39Ggz0UxAW8Sy8Ek+NH6+Jr9xT/FbeQsIao0RHZKFpUOV7knslgNEDzJvCh
	 5b8A7Y9idUQumHBF+bivD+A9/7HWZAF1cnwwuvpoiSVpu5MUafBfgWaUYJRJ64wH0x
	 GA7SlJqHMP/UfionnTspRVOhlDECm3p1F1/QQGK0a7HArffhgWvIP/x3N3tmAZqa/2
	 ahp47/s+Mc+WKvEv3G+ltryBJLKP1BFQCbHtDBHiWQcJsaPM7AUflwbS84wR0HGsAa
	 vwfjfYVmLIosHqZJ30o2Tz3d7KoK2xDPhaegZYUowfJqIH1YwECAtj4S+JXU/DpR7p
	 ue5C8TDoe2y4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD90D70DFA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283575365.18850.9527437825357863323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58af7f4d0337294422491d3fcfdea6fba045a3543c86530fdf7d5f08cfbff2e3
Date: Thu, 28 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732835753
