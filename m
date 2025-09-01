Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86A1B3930
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756687794; cv=none; b=g92IkfxjFUaUqAV9mp6mtvHBjBXXN5WmaubFiUtMoWDem6prxPIRAg8EZSNZL615DiBsYIZwTaHr8U2cohMbtkhPwLS7DcIBcP5hYAhNucgms8DzxLdVnHnYDACDPP2peZR26FQ+8OXlMPvNN+ld0yzCaN67Rt/6dw2AwXf7NfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756687794; c=relaxed/simple;
	bh=y8Uiy/fRMRjepCmoOh4wlj9IfadaBWDHBu4UDb9t0Uo=;
	h=To:Subject:From:Message-Id:Date; b=dnW0hLHKsdLYx7ThDScg18LMutpSAJfXCf0u7KlHLyxuB/ETxUVYSf45sFPMnUNgolOlLaY+XDFaRVv+zpm01XyDS/Ie6zyaC1RU3VbDRjCQu9DtZIHvVN71i3mkTohXTmpx3ZT+zG7HrMsHgyHZOn2ftSLrSxQuInnhB6SmavY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFMb31s+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFMb31s+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80FFC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756687793;
	bh=y8Uiy/fRMRjepCmoOh4wlj9IfadaBWDHBu4UDb9t0Uo=;
	h=To:Subject:From:Date:From;
	b=iFMb31s+GFXQLKwgdm3sSYulzd/+K43N41Xf2TJfKFtWsyOn+a/rAb1efLcAeF29Z
	 v83s8dmIXTUibhcTUK8u4S3i+ukjyuIIdDjkpHKTztcyh5V7nn4GbN7VQNxukyF85E
	 WJvK8A1n70EyqcYSa25KPIqXwIP8lW9k7HR7t+lUd2Loip+G6G5uCl7sIDtvS8LHfL
	 G7r2/qG2WsijnoY+EZDRAuHnBvseSBcsorCiwfDfCSZuB2yPXuQoyym5V+RfTNXXPh
	 q7LlFQ9XwxnAngF83c/5vGJ/u6rYKudptboH0H1aktOUck4DZX1Bs4777Ha4TTwqMV
	 GZXBzK8PcBTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E954CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668779357.10819.10839572937815780621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53ceb79e5fc6007e9530374fc12b8492a44cf673637ca18d75eef6daa55149c
Date: Mon, 01 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756687793
