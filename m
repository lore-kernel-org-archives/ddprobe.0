Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156AD1DC997
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734769554; cv=none; b=fEUlyL//kXcrMyxMHd2oKWgs836/wTcW82bdeJVV6XrQztYs+KHVGXHtrlAowOgAIecprZCfXAOHFrrzf9RCqdjPG11bargU6Q7sEe6SQd8MRxuESSXAzLw1LF2RJuLfIC9FTy8+2On7UftM+MXCHZOlnW7LF1odmzUS2bTJY+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734769554; c=relaxed/simple;
	bh=mAB3jEp8/2d2S2i9/ulVBD79JkGuc3oN5nwD84i/lBw=;
	h=To:Subject:From:Message-Id:Date; b=XVCjDnlB77/5rdUmJL2qD0Rdks4zyF/DMqSWgQt/cfFcpBMftQX3lqkpDsPAzAEGavdarcYb1AAS0BBRd9FB8XxrEFIdbMO9Cb0b8a6tS8L2/UzsUZoYZkV/8VsM2eJ47USGzImW6CY5sKzh2LdmVqzCSWEA6KtUaGzA9Vy+6yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Q8lHEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6Q8lHEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD448C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734769553;
	bh=mAB3jEp8/2d2S2i9/ulVBD79JkGuc3oN5nwD84i/lBw=;
	h=To:Subject:From:Date:From;
	b=M6Q8lHEF80tnLthFp93q22llX4p8GD9w0tLix9hOXfVw9rcQdC2RpJwnbo1kBv0X2
	 4T9rM0u/fnINI/vRpNHCKVtPZmMPXAFeDq/i4ZOBIRXOiDbMNN9xTPqdUqzD2qVGbc
	 w+auSsiJ9dp1Ffn8ksp1JQ8kpaqo04C7bEJGHPO6MfsK5shbOHB4DzBGnU9tbDHXRW
	 ruNi/58RS2mC4YYC4XH5wmLvOizaJmeDrhibPjZ3Ym0cxaaOnCmk51sw4gKe9p3Y11
	 2nRMsKfofVNx4kXJoyK979fmmEHdB//+OhOh9psnpWuKL/erVtGqDLyoNdLaaCMOs5
	 R8JD8Mme56KPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB4E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476955360.1103.445134077891200000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0225518ae53c611a21b22c3cfcdc69e8a6cfd79916ddae14a707297c5e04afcb
Date: Sat, 21 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734769553
