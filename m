Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1627779DBC
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708522697; cv=none; b=f9u4srQWkLUtHgN49HhziSTYi9PczVmFXcWohsUzuN2zq1t2j7DpPnM1Z74OLDAMFaQ/JvmB4aLqdJVgqCIh/QroXBXNErQrAa8cOe4djNVRUUAb9IzyUWvGk2MInruShIu2XadI0RSfxWhiCNTmzdJtnU51DxNiJz98IAwJnr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708522697; c=relaxed/simple;
	bh=iE92kTdiA24dYUkWekmcGDW23hBFS+fRTSDnW0ADaAU=;
	h=To:Subject:From:Message-Id:Date; b=JDtO0fIHRFfRMAPcS7ocOhSDp8p+tZsjVoD0d3WvnZbRS1Jj/1gD8Yp29zRFhhYQ72LMkQSSldGjjlzwhI7utCsY2R1fimms+BJrZNPQqJoBhVpTFjc/gagsJIQ6nWkiaxLWkVqhYINMlq7GjcGbekmpGBmYzbw9mLJgnvRyitw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTJQXYnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTJQXYnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6BEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708522696;
	bh=iE92kTdiA24dYUkWekmcGDW23hBFS+fRTSDnW0ADaAU=;
	h=To:Subject:From:Date:From;
	b=XTJQXYntU3vpTLbYqTEy6OJmv8lDzTm0vpxKSwxJ0GE8ChhvJyCPwRJQs+EXtgyHu
	 WbjFi/q3YvEwcMjfCEL9TbyXAV2QLxMVOA6fchTXvaiLmMpN3m3QsqLRXE/6aPWEHE
	 /ywJbaxyVU1igvQ8cPUWQD0x94juvsfo7f1fu8jQhGdV1umXCgkpjA0ttoeVuvywlC
	 3W6ky/rgRRFYkSGq1z87niALXtbeQlWVlJZrGXNqtMhnmE4Zm6mADk+xS69NIJYLs/
	 SCqYT0rM3jVAunn67CBKWR1Ui30YMXHdccXLWPT/LItG89lFQ9yk+06S/yKFgEWafv
	 ZRRFdFdXaMmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655B3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170852269640.4820.16337342422149162271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f635753d819299c1646086772770725009a2505a1d8b0b258878c6419e306
Date: Wed, 21 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708522696
