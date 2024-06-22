Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B26D12B83
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719092543; cv=none; b=Kgc79qIo+FYnsMDP7Fh50mmQaF6X2uybtCDuY1ksobx3e+xUrdOsT62T93f40tHkFNxR37RRPTCUrdyCPWiWWh7nkY7MoBK2pVcI6sczuDCgrc9smBHzYcWnUeeIvYfLdZ/pxOi/D6cWyBekEDuUOdJw3f9KHMEcFW6fe99GxbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719092543; c=relaxed/simple;
	bh=rcQ/yw5Fvs/Y5azB+GonuDlLjqngIzqcf5XR+JkZQ6c=;
	h=To:Subject:From:Message-Id:Date; b=ad/CeqbqhVuia3pVrmXEKU6ovsK5atRxlRPOLRPJyL98dy85EmygEweRtT90C85xFEIobZRu7X+SRWGRcNz1TtC2aTv6+w6X360VsXqNSw1bRyqDBksR7Bdv9q1pUpa1hmVIaTC3/FUmRZ28egBB/WcS3Mbktry2+KUdyKL7GAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM4XDtzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM4XDtzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A75C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719092542;
	bh=rcQ/yw5Fvs/Y5azB+GonuDlLjqngIzqcf5XR+JkZQ6c=;
	h=To:Subject:From:Date:From;
	b=AM4XDtzRbIVJPFyum0kY+1k6wsEdZHGKRqQXGGCdzHMf9Q7iRHQgUDS7qLwj+ZEE1
	 tqciqe6pDwboaLv5mZ0qTogK+PqklDnf5FX0v65hhUV4VOhJkBSV5Hec4oMBC1dWfO
	 NAnWb/vV1IX9Pw9Sb2Jwmy+mssQPkCRJoVuv9r/404377pRThg3L9agvTIC3ua/+z+
	 W0yT7j/ScdStSW/VNnIEjd5b367OPbCu8q0xULq1jVIQsgp2s61ufEle2Zgeh51xZe
	 ho/7Xj9E/kdGVlvhX9WmlH50hzD9UmIqcBp/bV+spV5L2DCSmw9/VkDQwdTLqnGwo+
	 BI2VGaqK96CBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3E4C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909254281.22577.1281114132434428450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb43106274152c8a2617aa468604024a18b9be6c7dea9afcc29a8a461f63d610
Date: Sat, 22 Jun 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719092542
