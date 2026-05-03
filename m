Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D004D8CE
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777772854; cv=none; b=oMzD9mSEUmDdT25UgJ0IR2V5tazGiPMejcpkQk/doxmsWR1vKUv/aGFi1i2ApiutHPiQMmXF8sKqcSzzMCxI3vu1HHde0qztwwPeF5+OxsuWXZl2S7e2VyWBvm45z+qgNAaJxK4c+xTfRAAR34djR0uFhy6Q4vusEPYDYwsvDOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777772854; c=relaxed/simple;
	bh=E9UtqAO7vYaij32blq+jnoVhc2hRgYXLP5/l5Jqsnhg=;
	h=To:Subject:From:Message-Id:Date; b=fT8oEM3g7EhfqWx/dV2kuNeQAMgEJYNNBU1wZwTNBV51RGWDhHtiewXhe3O3YhoNSY0JFLC3kHhap8wL7L4bATsN8ND5ulycbKVK3vYIedR4qS2rcaGcd9eJvI7TbEO/MOyUkbm37PHfSKkU/VDqVKi4vNYU2Ai+x1EL0Taz6eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFzH/uxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFzH/uxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E61C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777772853;
	bh=E9UtqAO7vYaij32blq+jnoVhc2hRgYXLP5/l5Jqsnhg=;
	h=To:Subject:From:Date:From;
	b=RFzH/uxZHk4KNF8LRw2eCv6B1DJLdbWHuZh/gmg2WJOjwMEiYVUOKg0w6wNfptAA/
	 Vyre18EePUcUJtYs3E3brx/S6NSiKPnK7mDYIHKVvAb3v8YIR6NUbT6LU0fjwnMejv
	 vlGzATc6h6JMcfwq1VIf9BJXRpy9OvhXLtyL9Vm4tPROLvUZZSCaKuiEIFIy8bRpZt
	 ZeOzDUfKWE1pFDus+F78TMsmh/yQCBlTTZZA5nNDRtlBe2YNgYsrbm602mKjcbJm17
	 3DA1C7/+9fi7p9Yt8mDDqgu5fKfurQgQoB3oZi6QQ+80TlRDIRwMxQ+kz1ni9R1gY3
	 XU1ynGWMX2eQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CFCD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777285369.1613.6599219075618134994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d79423ee6d376e801d8e26788996e42fb19e5aa4539fb3341debd1e3064ab3
Date: Sun, 03 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777772853
