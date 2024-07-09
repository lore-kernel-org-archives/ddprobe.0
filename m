Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A9111717
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720489583; cv=none; b=aDxMBzgeVsyHVpsQ/FTgsJ5I/W9dSE0Q0kj8Xud9ILv2+3lvmwV7AuHsR7QYyVim9kzN7/u+FVuoIiFVMSBZS1XDAWntP6uS91S0FHsxQEIpVdXOwIilqOcrOCew9rgA0g3Nlsz+2BMc//fNfNVGYu3f2PnSqrdFbAMCFoixyYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720489583; c=relaxed/simple;
	bh=vSx8rskgRRDCOAReDhrJ5laielIgFeEhY+JGD1rBrL0=;
	h=To:Subject:From:Message-Id:Date; b=uyg3vvlYrNkmS/pDIZTKMxY2JM2Ptx7a6i+SyniCFgtAm1gF5AE9161N4HOtKvWk29JGw6fgsgnebXf1rf0hR3q7lgbIfTQMYeWvi35uoMiZh6WdWQXzEaWCdjqnZD7dswh+l4dQTKTt5CUqB3HNjUKnQS1S6SdILPuWsu94EY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEnD2w7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEnD2w7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEF6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720489582;
	bh=vSx8rskgRRDCOAReDhrJ5laielIgFeEhY+JGD1rBrL0=;
	h=To:Subject:From:Date:From;
	b=HEnD2w7W2DNZONMio94VBnthRHQAB7T9PtQGoCyX5jkbVYWNPEHwVqATwNP1YFXct
	 TBVM1gCUGSxP3Nz5ULR/hBafzJxSr1gaECRAAIl3q1uWkdVtdcdFoUhhAy6sJ4bGN5
	 4XlbLQfEeAKBJNooDPWy2xG508LsG4asOZBrNVlbHP031Bg3DIiFv39+vo/905FNRW
	 BOiRMWVuS6Bhv26WeW+60uXp1mYbnMWOvdHmGmB9iD4aLEW/7ApSLl5afb1Hrq2siO
	 V1uZriZDzZ+BXX2XPT/X/lezjY8Qjvw5PDFiC3xFKQrCBwG8J17kE4e/tDySwBfHQY
	 bBlDuY4eW5Lsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8E3C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048958282.16799.15737058555950272766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a4daf52517ac8acb2b0f718346f37bb2737b72a87535be172551279507f2de
Date: Tue, 09 Jul 2024 01:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720489582
