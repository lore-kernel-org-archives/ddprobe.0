Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037363FCB26
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778164654; cv=none; b=lsPHXW1SBZ7wO0YbjSVz/U/NRFYbU1YrOG27RxcklkqWNFGKk3ygq/C60JtGgmAontTseDO1I2GMFj/iBOqBxb7VLc7Zb4aBsqL46dGqAGOKMIhcqDsREwvr/R6TsHPnZBhB94lpGfofT7DlJJ220Vd7NA2U0gufSiK/9hbGAis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778164654; c=relaxed/simple;
	bh=+Ul5y97cYCgEv/J3J7XbnB+UsvX51dTUhFHqjxXwOtY=;
	h=To:Subject:From:Message-Id:Date; b=mrHeR4Y+/SHVEKQp7V+oOaOzSFIuM3mrEyMp8nYJ+3T9s5dCPJZ83xkNb/tYdZtkrXAmhS1JdcOTa+flJ2607WzZYu6FDgrhV+A2Ya61Aarx89X5fF0cr1dy9AfsKJPWXSwnXL0b7aZkXHNT+TWrhFvFiDjhsE+rEk4/7ApczUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hH8NR2td; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH8NR2td"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B939BC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778164653;
	bh=+Ul5y97cYCgEv/J3J7XbnB+UsvX51dTUhFHqjxXwOtY=;
	h=To:Subject:From:Date:From;
	b=hH8NR2td1BufcxHUxvGFKTjcCWc0B2yai0zGKsyJvJv7sfCIMSoAoPHl1ByubAK0O
	 lTsZo7+qam0FcDT/Pu7Mtd5pMF6du5xdOstg/dO6mV1hnuYFZ0iIj3EHDaQvCd3nSs
	 3T2dbfFo//+tz8yrLp8YD0J+t7Ta5DN5e/LsrYfaCLgQF9WjO5SArThiTjSJio8Zih
	 5PidD2uTy8/jofnyU+Y29YZhPp4Hes1IiA8/Hmw+B2QQinkxJ8MT5B5EUIRf5+Y9wW
	 S0TU7jtCpEEjSTu/6wFZuyGWHkYaHWrGkBL1w46LcVXSD67Q89g7N8pXIegPW2GGoU
	 1YKoL1umD+xjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B034DCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816465371.8456.16826112349368067430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ace067531231fc03cb32089b5380869e7e0f775ac153339e5e2f95f989ee9e
Date: Thu, 07 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778164653
