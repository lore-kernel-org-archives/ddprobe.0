Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD71EA7CE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766733234; cv=none; b=C9XVye2KNlIAbATIKWBY8V47DeipLdiApnDByWLxq+LKtJI10wBrAooMtNJG+yAszB7W4uMU/plrFT/PArHX+xV3G9y+TLCjppr2pVkFHJX1zYBuclReGTEN5SZ2v4eg+oTY5J7Cat8a78sZKSI8Ke56sAnqlRCHzM1BKxhyy0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766733234; c=relaxed/simple;
	bh=ek9AZwAuT57ccG4X/JIu8mq7LH2bOJSU6002ZJyb+nc=;
	h=To:Subject:From:Message-Id:Date; b=eI7gnUn41wGmywSmo9eHWBlEtjve9J+fOChaABxbhtmz93ojF1C6Dt+RNk5B801JAnI/X0fJ0q6IOHchcpXHDSiDyvd4TwUbC7Uumg20YVSI7PXLJU5M0UplXYIwOIgPB7IOhE+eAbc6yxi/h840P03bGijzMnZiJMlBGmuPMdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFQ74l0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFQ74l0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9277C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766733233;
	bh=ek9AZwAuT57ccG4X/JIu8mq7LH2bOJSU6002ZJyb+nc=;
	h=To:Subject:From:Date:From;
	b=gFQ74l0a7+3Pi2apDyGNhJYhPp66d8sSW48Z8/5dQBN48WnU9XASnfkifUEyogdtl
	 cGTNY1AeXA0NrkrnJ4GRhEI7r8EyraD1DK/W8/c+Uq8RT85W7BcdF1Y20EdJcczHoj
	 axsQ8l+i7PdT8PljZg+poM32FrFORVQp4r7MeDwiejvBjKmCZ4HBXUasb4eK7vJURJ
	 33LlDJds5vbD2fGo/UjQYKy3O0Sy9qUcuVSZRGVBDz8cBrzgnEOJY6LqapjdcuhN33
	 IU0HpSWZ43t4+FjJWoiRj7HIaI6DEdXQ4+ZKWR2+RtBB/SQhrTFq/XFTK3nNu8Ewki
	 taVsK+963ix5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D0E8FDA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673323358.27727.15352530861358250947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61ab2cf3952c958574a373497f134221f87cc462a2460b47cd7f75a3e526ec7
Date: Fri, 26 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766733233
