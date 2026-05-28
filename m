Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAA320CD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779946354; cv=none; b=nlRhNvgQDQ7kdZZCerwgF4WgxzxeUBPu30Tn79o2Msr5uLFgrJ/4FeAt7d7fsVS6jDWJa1BaRI+i44LJiIBFEHuV1kArZkVlh8feso3NGBT4w2eC62xW9sQAw3Hfs883hYWaA8GZQ0+OdxZXa1drmwgtEIS6XJ9si2l7GkBae/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779946354; c=relaxed/simple;
	bh=yvVVKdj8diqklTCL21Beg08p63Zv6SHJIV5biUPvg3Y=;
	h=To:Subject:From:Message-Id:Date; b=OmMwwt10g3tm9ED2cxME0veZ4Nhck2m2EtKUtAbp/ACyUTo3RgWr8SpXD90pW6FM2EwBCZ6P6Pnhwq6dE8n75JHvUUIkKkpKOVVSp1ISl/cfE7Oglt7PM5Wus2my/37iBxhEbj9yoWO4gMSNyJyVG7SnPH3Fw6DMswjKIfB4gnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWV6VnUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWV6VnUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2777C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779946353;
	bh=yvVVKdj8diqklTCL21Beg08p63Zv6SHJIV5biUPvg3Y=;
	h=To:Subject:From:Date:From;
	b=WWV6VnUneAQDm6Mcdm/R9DrytQ+9T10S5YmqZnVDT5buepiq9S82EfVoudcdBnrRf
	 h2/grrDA0AAH1OjP/yPbe3k2KNobD60P36mWxEYwKemotvVHqsGWx8W5TpA6kMtrJ/
	 MUAA+7QZN5+skNeyr5/OIF7Q+m/6d0E0dfSfQQb/dmBDX83mHsw6ZLSdToPR5IZJhl
	 8ge6Hjgi+GG2zhgbsQ7+URYl8oRJgbnNeKeovdIeE56kLnI+gUhXKMgb8gotRmmr+a
	 MKGav6wZBEzg95Sqm7W12u7OKi3OoeBFR20DWbUrqbou1HBt2rvgBHKHjDgRVA2Cik
	 oC5B6TM/weh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCEECD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994635370.5073.13336802446210448557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8ee73546c7a4be1e2ef7e6690e11e5e2af0b58c6fc16c3ed4740c030d3bf14
Date: Thu, 28 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779946353
