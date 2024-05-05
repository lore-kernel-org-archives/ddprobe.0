Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6496D3D76
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714926143; cv=none; b=OkWVU9Xs1vArBktC0Q87MEzn5s7u9hy9kz/e+6AM8gO5ptmnX7yVC80JFlj0D3KqBnpwYfsnITWw6NMSwMt6Ay0jHmckJOEyrShARPqF1m8DGTpvWrUAMN2g0nlH6J6puDRlvVEYA18g3bNUdraoK0AjQzLtDJm52TaPAQhp38g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714926143; c=relaxed/simple;
	bh=CsyOv9KH2iRW5UFdQsFXgMXTfRBmrbe4e3qulItyOM8=;
	h=To:Subject:From:Message-Id:Date; b=DEMktQZtPYDa0yQ4hbahN0cidkpDatyb/mqJw/9xexTuiYmDE+Js5WSwOw0x2AS4jV5TOuwrmX9hbu2uKCJbsFc6dId2Mje9qbdDcwwli48Jvg2/eBVXjVm8mmXH5Rd7azysUCHU0L7Vyfa13xfA61VX6DWPfZcj7+jSjTSzw04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VulPqBOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VulPqBOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB711C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714926142;
	bh=CsyOv9KH2iRW5UFdQsFXgMXTfRBmrbe4e3qulItyOM8=;
	h=To:Subject:From:Date:From;
	b=VulPqBOqKPesF6x4E2aOsvqJCbLKa3Q+Y2pHB9APZ76vhIF7XwmqhboaN900yLO8Q
	 b1vwU+ngoGS9mfeXfbIXqTtZaekfRtw0u0knsGHYGdPBsyG14zgVqiO8FPuhjhwwiJ
	 5V1/EjDvHFa/eZczrsPbx30X8/hoJqg7Oh1fp9A5nmusKic//KDiaEla5GeXegD3Xj
	 VeteD3XXnWbs9p+6KcK5zhr+N9XE8YQT3Hs4oq1dEvZWieXF0BUpKsvhXxGSsj6IYU
	 zCmSyHZT1f0npLFbwwH3NtS2/JzVvK0Un4FUjDfH7bWD027FKkiRIjj2PAWZrCSGqH
	 i+B1xBOM0vmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54D2C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492614278.16840.16133428992253610909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ae591c28daad1138d0beb83397bca8cd52dabda6eb6907e40d3a1283e29f7a
Date: Sun, 05 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714926142
