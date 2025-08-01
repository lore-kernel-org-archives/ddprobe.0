Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7E018C332
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754078394; cv=none; b=fvpkdFuX7GYSGB/6p+wybjqKaVKg6YwZVSqsmTiVRKI97pTF02uvruL4HEyLcvJYCC6jLzAfCVVaUG/ZhC0Cj4beA35nsuPvo2hNTCW5QClrY0WirXSqEf9Cb/2qQA4cL2lGq38drwifmmTyTyfLA+1vgb1tSEIftEfmLbyBYGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754078394; c=relaxed/simple;
	bh=Pj7ClOITRKWSr6k6pP3argZ4XbOj23Y50043lIG0xSE=;
	h=To:Subject:From:Message-Id:Date; b=QlC/nCHm9pbtYp0jJ87ppKK7cgYrqwKWLkUEeKNQTL3YBgWriwgeakA7NoUcC3mAWIje13R1w49DTc6UKJONM/N+fa/XEIPNReIHTClPhqOnuHOd1fz/t9lWKvNi3B8js4cphMZekho8syc8xJ6ZaRGV/O6jqp3KQmFDWBcpGno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcUZhu+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcUZhu+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC6DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754078393;
	bh=Pj7ClOITRKWSr6k6pP3argZ4XbOj23Y50043lIG0xSE=;
	h=To:Subject:From:Date:From;
	b=OcUZhu+0lqYqqcMMGDvDb2IZxaNL/4DPcW8QdRhj8FRpHqR2hHQicriZrckQ1JWY2
	 +JQQ6JpLLtjI9TwF2ltUKfFfXtNqThhm1Fquv5tx7SPieifSxwojEEPV0QhSUkQyQn
	 Xjv0on2o3s/YK4bt21kLdYzpT6lSzky4XrsyFuQ6Q/Dlyqirwi19ziWZkfqJ0kcHtr
	 5fiSdTmxpJY4ZagH9bAQjb3UNcedWXFkwNkdfensuGJdtn9rZyHKBh+yP80b/W7fBy
	 FFGBeuwocDIPCpfpu9iDqqlNasjKK9WKJZ+v8PTHgJncH96AztoZC8kJB0tlr21pUC
	 NJ/qTYM2IlfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA9C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407839357.2836.15528215909549202774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bb03da297d07f5330fe0ce8d75a062ada5bceefea4181016ffe4665710eefc
Date: Fri, 01 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754078393
