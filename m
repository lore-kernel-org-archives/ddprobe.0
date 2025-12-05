Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE34284B4F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764912174; cv=none; b=FIGzHLQh+MQM6eodUQ5B2Db+h09LVjSXPIf8tpjdH/nrJe1GTnZD3yDm++iaUK8mJALbp7aaBweaPe/jzhUXbijZHPvQL8NJlK8t0WqgIUqMMHqHv6gHDQu4Q1Mg0IuCziJVsyRUs9guh48NJL3tMYLqEIXn4kQQgsKnOuNa7eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764912174; c=relaxed/simple;
	bh=gptaSFHS7RTRNRoD2aVa06eWPoKl2MyxbAd1y+XdVW0=;
	h=To:Subject:From:Message-Id:Date; b=BDeIIxI/kEk1oucYJsGFVHWgJUUpP0MsjiyPQbzZ2WTsyoBVuCDtk5EovJhyd/xwY4fEeMAlzLhxyNO+4DSr9Zss5BqYgADrN3yuktfeX4zb3PVD6CCnokD2MUUECuVzdKgPhqLfXKrVCGigzB09uYc0/UYU3YHd4tfLu96tqcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3N3mtSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3N3mtSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F58AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764912173;
	bh=gptaSFHS7RTRNRoD2aVa06eWPoKl2MyxbAd1y+XdVW0=;
	h=To:Subject:From:Date:From;
	b=E3N3mtSEFDd1EG6ZIBcpCTNlWyOE8X8cZWORxlydYNbvr8vSWEkuT/AFqzgM8w+UF
	 uS+jHwYp+DEGGYg+02lUdz4MPo/NO43d1sIZk5H2rWBTkA7XsjMblqXOXOI0T0/Izv
	 kwfqYVsNVuaTBAOrYsfoZM/Tg39AuKFHBQ6VIkfAjNd+/2YGxQ1BRmrV6AmaT9Ujme
	 ghVMDMMCPogM5kkSRybNc8mdSKZji5xsAWTPfNBAGbxFFwSKlhbjJDnPqw4q74tiaY
	 7s5jJrPFnw8evE78VHSlVYLlQiSNdGXpJmD5PTDNHadUrAARsPPWtMN/uhjFQnbCTo
	 IwCtbgyKbIbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90381D2CDE3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491217358.30915.1970317154496357330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc788f6b5ea9bc2c072d6196a70954add07e2f6b7209438c7c757f7d0f3631b
Date: Fri, 05 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764912173
