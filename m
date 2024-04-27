Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA53C0D
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714222943; cv=none; b=u0kOqKFEQOMGwvL0oO2HJiIIrPXDgx47N2dPqXICRGwzHyyFXTfeIJxMRCmlfhObihe9kel6eQPjbSRcVYgQwNak6UYwooHRgw6nbEPROjDHIe/wLzOo97ke7aCK6orj0hGaQQYTvFcscDrDRjk9uFT3OdsHdQdk5QrkeTs3jR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714222943; c=relaxed/simple;
	bh=vItTMltD8E2LvM3giMN+pArfWmENTlqMHxm1TI77zgU=;
	h=To:Subject:From:Message-Id:Date; b=juy0a2gFxD7BDympYITZkzDSaolH8fvKy0FHtY4ZdrOhNsMeYE+CigfV8UlipdDkykcsHlubTrY6mhbaBj2tz3WTrcF34R4nUX4ozynmxCt8v2Hn+UIz4yrFKeO7cecGjsvKhIG0yNR1H2MEQvP0qZqDmDgV9cJnKSwRlXZz+/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO3Gx1nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO3Gx1nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD24AC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714222942;
	bh=vItTMltD8E2LvM3giMN+pArfWmENTlqMHxm1TI77zgU=;
	h=To:Subject:From:Date:From;
	b=RO3Gx1nKN3zUd+hLijObtW5gGHsxXRD2F9aACD72t4Pj67ABZRjemc/PLGUME/Z5E
	 6MnsxUFqJpnKJMKr85egRfQZVF0k7/IFA2igjgF8AtkAaF57yag62O/AbJoXcxX28I
	 HTwRvVuWrpDuzTgokoXP5GxAaAZIPw0VQ3WtKSNA4t6Z671FWCeZw7fSun2bQXxk1M
	 IxPPvbk3I3SD04HH+VJEUdUX+4P3QFOk0Xk+XJDpDA9yVKXJ8er0LmyuHvndjHqW4i
	 osrqKEd6InXZkJixkgKS3ZiUxgRmRn96g10vrifF6qYecFi1P+NAfrrdts0HjDGhd2
	 U779KJExrH7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D3FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422294280.23927.1160356386914737032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60fdbeafd62b08de3d5bc8026b5794571c17c3f7e9f4fa6773bdbe2444fd54c
Date: Sat, 27 Apr 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714222942
