Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377CAEEB1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749980394; cv=none; b=sreZvUUFqyFhjqEh1ofdXkSpcMrDeQFruJXdzXZMW8j8b/hpLRqxFYDFRkWgxa8OD/M82xH27RESHIgTThm20RRG7vFfmSrdSiAZJSF4Y4krLAEspeD5Dl64nXxeLptBGvULEom2vWxeDArRtQwDO02IpoQd0ZGK7Dr1M2WPjn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749980394; c=relaxed/simple;
	bh=gTeotrd2Ln7DBxPULnoTMbiYM8fJE4zaRXJUyyUKqRw=;
	h=To:Subject:From:Message-Id:Date; b=ZEjIMAyS88oli3BCSiKz5BVflP97jqeZr7eJGLO6pLijsMcO5pQICqK11C8CenGBITyn/k7sjdyr8oSLAIAs3760zvl7oghe8ZwkmTOfa+d97Tm9wbGcEOVPrVTqULH06ATxKg1Whft8b82g263azPedBvCYDisf0+fHXCTJ0ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7aHiC/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7aHiC/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749980393;
	bh=gTeotrd2Ln7DBxPULnoTMbiYM8fJE4zaRXJUyyUKqRw=;
	h=To:Subject:From:Date:From;
	b=F7aHiC/RQHqpttGx0HTaDuoseZWmo1SkXQVtdXnwPVWL1GpRcTHCAr4UHjS/CS5D4
	 4vCVwOrx5lWyWGgPt44DZan4frx5RR1MTTMbQ7Yw6ifIVetrMv38ali4DWvdPbHluv
	 8Gy9VxJcdm4mojLK7HUqsfBFDf5BNBXGNdXTSvChLw9w8+U1askdCQ9u9sqfcfcCRV
	 aPqIDWMcNOZlWKf3rOL4c4wpZKmHruRHEsW7WyBtfF58drK/rpjKweNW+6zf1gUvup
	 +86Ehz6wAaqYcwFmSuLiYQGaQLTi3MvrioIMuctdONT0Qnt+oJqD44SUVB0o46VRwN
	 iuhHgveT0hoTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B03C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998039358.28863.4406877390800845022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba064b1e269f696ec5e21f5c9e8c9b70f7656509a51383eba65480cf84dc511
Date: Sun, 15 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749980393
