Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C882BC2EA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760917193; cv=none; b=EqKMo9ukMAkqsVpXF58Ca/Vtc56xKUruuSffIqdYX8USKT5A9SQRPKqHyR/Ft2MYDBE0YkL2VAHrx0gOjXrY2gwDuiEH+qzPIwOuhVnWVaXwmrjk0PwXZtx3sRDyHHX3b1iFadOKCXssyWUeTdf0yV4YJWWq6cTjK5xxa4VufDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760917193; c=relaxed/simple;
	bh=L1c79BzZmJfWIJABYxLH5B+bcqpraDnCXG6JTALYgD0=;
	h=To:Subject:From:Message-Id:Date; b=VsVbSSvnhPLsqYocs4ezFSmAoZy6m10IeFXRVO5dXs9JC/+PF6Yh2WOOmjymo6ON/wnmb7Qe5H72CECZSjtFER9TlEi5H22jkhHiQMZHm87eJuNoSSPqQL5w2yPbCRl59XYRSE7kzW+5IloUCeIwuYNZHZd25931mhpSlzndN80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuFtSgEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuFtSgEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760917193;
	bh=L1c79BzZmJfWIJABYxLH5B+bcqpraDnCXG6JTALYgD0=;
	h=To:Subject:From:Date:From;
	b=TuFtSgEFfYSv3Hd/DCVQ6Fmn353QeJfnRPfBeM5Z/WgSu+kDEoILS1ki92mVEswiH
	 ZIoux4ZBzQ1mDIC2XhvHUZzbr9ZUla3ZLYXfoMKsJw6pHNVFCQIOY/yZ1PFnBhLC5s
	 eevwrxzaOcQea2Kvu+7BJIXLwauLO5I+b0Ffbk7VacXUVcC5fmdN9ppIuxNO/2gBXJ
	 jRz2T6q2KpoAXpXCE3jDP5R9xwqTM7Crw9Kt6MmCkdwhVRB7492ZfPTjFZyDkDoVV8
	 1jCz3NIiC0BhcI2dOtN53bbV+VwzBH3DP7LoaNjI3KbDcuHLimlvlmjTIDcDqsyTcf
	 x+nLdV/qzi6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091719357.14054.10518415286737231101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f33e45300c3969494f134a88c7d08be99835fe06a43a3b285c32049094f080
Date: Sun, 19 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760917193
