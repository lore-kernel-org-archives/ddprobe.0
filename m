Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4DD3F5BE3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779804154; cv=none; b=CN6AKs/BxgBhuoqDUdfLDbRQLLyLVtMfoNHPTD5V5XItiL57d7BdmFvmXj9v11ubdj+UCQPx6fn6Ujn3K69DxiSvXxSdm1utfg9zA8vX35gmsqmIaGpcq1tK8WudjUw2+ch2CPrRxMmAxLFpIsLxqywWjvpE99NC8DvMLCuxpNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779804154; c=relaxed/simple;
	bh=qGRPIw7nBUQ1RIA47TP2CHmBtKmKOkLaAca5Lje/mXw=;
	h=To:Subject:From:Message-Id:Date; b=EjCGK/CPk5Yt6LTvRNL7YhlFPo77+BtJ0E1czCC3BsWu5/kOqqOXBx0C41I7MT/kCSG7IzwluJwnJKU7NCd6Fct3V8m2MAxYrXzTeYjsm7sfCg0mDCLNt8A/3beNiDD0sIC+/vmaj/cbjcA45HqOPdk9rjHuP1PEwzdfm7cTirs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgQhZVlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgQhZVlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00851C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779804154;
	bh=qGRPIw7nBUQ1RIA47TP2CHmBtKmKOkLaAca5Lje/mXw=;
	h=To:Subject:From:Date:From;
	b=TgQhZVlFR6VbfmXrnv1sd1KB3QK/N5qhuPtjZc8FidEBmuy9kEjCO7Gr42IdF0ZjV
	 Dvpn2pgMFObAs3XuZ66/xUtqxNvw1oBKHj79SEHdkCP74lgHkX/EEXyDVdI9ORqfY6
	 tcDM9XhG3Ywh0E13q/PSNH+pfUfDFuoRvTSv1n9ybu0kBue62kSxhVr4yZ6GtYyRML
	 kTnWE7iSo9RifxEvyQ7uFn84f/JFLby0Qy39xHFH518n/MsIdwuNCxFwXiKvl2xEA9
	 QqosHY4AwM6P0WqSrzQvKLkZiTi9OJWsOvgkaTdj9ibJkbHD5MwtL7CXiE5zV66t3f
	 pMa53hVOveuRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE348CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980415374.5375.18431350038723454704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331614d8e7538075afe4d059066526b50375b884a944b74aecc427b959c5f9ec
Date: Tue, 26 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779804153
