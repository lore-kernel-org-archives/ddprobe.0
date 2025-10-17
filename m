Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC122129F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760726394; cv=none; b=d2cBiy66SU6WDyJnauLV3MjbcfAMqtbJ9HOGsCdcRmAA1cSWcdIjzXRH+jUZ4GU/ws3jqN8BFHYS9u9ry4Ayvv8J2SPufVBkn2Ws+V7iMudWkTQ7yqNGhpkCrdVVG+AyDEszgvgNh0wqE3YYXnSsxm4zx5dF8DU6ESYTq90GbUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760726394; c=relaxed/simple;
	bh=0wAZ1VdjZlcsTSjllHPTpodYJyvzVhT3LBe+uy6Ur5Y=;
	h=To:Subject:From:Message-Id:Date; b=VhWmaAEFw2t0a9ghwjQXBnjYv+aQGljJjM1RjifzVjLkNuCzvBShO8/LTgB9eOfOPg5gHn1M9eAbtvK1M/ZElSi61QAwd+mZlyx3rMX4VYrBXsnlND/eTHiKJktvDtcMQaQPMiZTciJr/fMkZ/RNa6NYaLKtIvgDDpdDwJctVZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFD6/+F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFD6/+F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760726393;
	bh=0wAZ1VdjZlcsTSjllHPTpodYJyvzVhT3LBe+uy6Ur5Y=;
	h=To:Subject:From:Date:From;
	b=ZFD6/+F25PHwJUnnReSlL5x0WMdLoOgIx3eso1ZLUpIp+wTmTqAtkM1acMTFk3dX5
	 YJMSe0aHyfxlDPOipJaROLiVpUQTK39Ge8BGFObEq33J0n15to3rxMJg+dBqRTRwVl
	 CwbFixrTqMqf33opgqwPLPigI/cR/lWBfbP946LyQ2gMYnryRGK4dVIXDWRUSCQX42
	 jIzrdReS5mNaZgOjoytaYVjxabp8VfE04kj1WvqTEZ88QtNU0AwnKLPGl6UVEsenRY
	 Wpx0nYE7mtk3dDOKHSPGsZbqeNyAGbh3M4ylbpBPkjU+eCcxXs/OihuWZeYor3TdUU
	 RMATXxv3F39+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9392DCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072639359.7057.17892936269657141211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645acc71325d9a8caf1719dfcf253390f71c3dec6ef65e0f508f0438e42a7cb7
Date: Fri, 17 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760726393
