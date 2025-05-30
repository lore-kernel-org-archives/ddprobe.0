Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FA5205E16
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748645394; cv=none; b=j8C7Zxo0GRg3IuuzB4RHjOTH/fym9Qi5azRKXJXwyll6QHG+aREDp3ToFO6v/hpRmdWPA3AGhz6JJv2DhHEpXaHATwBLLjYNhMxO2yAJUoSh0jpWncmAiW6Fb9aoDphdFYGftacNHB9Twh44zhPkMS/cygxEEFGMqjlHhy+SSrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748645394; c=relaxed/simple;
	bh=LQZ7B8rfS7DUQMY58m1SkTcKHkGIhbVCPcIIzHU8IFM=;
	h=To:Subject:From:Message-Id:Date; b=oWJ/bj3bQjQQ7/KQVAvkcROHdgSjDSv/bvIhV9I3FdAKWNw7exyDyLW00cUEijPJRctJm/V0DvKVwOG6kRytH3VaJnOELJrrfvU8aaujfTc2w0iBcaMRXKaxFm4GQq8s7nNpQI6smIxknzltTAFkRupp7ekplL9cDd65kITPPJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty1zCNvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty1zCNvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A298BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748645393;
	bh=LQZ7B8rfS7DUQMY58m1SkTcKHkGIhbVCPcIIzHU8IFM=;
	h=To:Subject:From:Date:From;
	b=ty1zCNvKAj62z24nF9k5A7u4tCmC8Mn7yZNMb2Qg6GRNcXoYWW9EL8sejMsOztPVW
	 iyKs0Ldz/JTbH7UuiwH9IRbNljYExz8viFgaD1Kh8QOODvnuayu0k+Xt6yYaz9dtgA
	 3v4L4NS37XgwLrxAl7UUip+E3JB4WQtaMmCSxL9ZyvkCRyqAg3mK4s2KDU4rorleqU
	 zEm7tHJ7e0RGHjlQPOtirqKMNExm3Kqz7wycs8C0NPV2VSXYdx67zfYoWNG4lCeKTS
	 md5jdOSIry5V/Ux2fxwbQ4yw+uHsLs1gox1bK1HcwOxg6cOyOAJI7T4arOVu2wq06J
	 trGZIHls3wPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90575C5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864539358.27071.6684452774800833899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfea087c5f6764d867883c8af30a0d21fcddb3594a98b4c090fd924adb354d22
Date: Fri, 30 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748645393
