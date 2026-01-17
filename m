Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224DA500941
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768676634; cv=none; b=tmkcaqx8CDLqUhr9Kh5ygjP+C0TRW2wTQg4lB0AvN+6HxB8YGLUGHRrFbh1kvM4MhdHDeSI3w0t0w1+/3CD3X9VTZ1YNnndlKohVEU3XTHWMxiTJjPgqsUk783GLyqYGZWxpXdRwDwfU+WtZhmvvy5LHyzYP0Dt/efompdn2TBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768676634; c=relaxed/simple;
	bh=MvG9k1OjjHRKxPvuzs7hqCbvNtuG1/Spab1jDn3OCF4=;
	h=To:Subject:From:Message-Id:Date; b=rsepp0mm4jRfAlWvYORobDPEt3f9nP7cBbEkn/awnwAopMD3uBfIfXK22STWob4YoWaQLouhTjdntzJ8ZtMoSgsQ+EXgcIKfn02JotLVUnoQiKEO6j02fydirmkXU2cHZN7ILNq0NvyGrVOrlCH/JRaNVQNPgghEScaTdJh4PBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r92sdLEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r92sdLEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768676633;
	bh=MvG9k1OjjHRKxPvuzs7hqCbvNtuG1/Spab1jDn3OCF4=;
	h=To:Subject:From:Date:From;
	b=r92sdLEo7dHQzCEcCix1S/r+RA1fu9/78nTcRy/dfnJpf8o4TW35DV7n2Wx2b9ACE
	 yd9aIcpyDBpc2GgI5MFwWDVkN2Fad51raC17hP98Yp0XKxLjlSffGriJhoASR68Og4
	 Z9poUgZLUdVjtn+uhZ8i7Z7EEwxVFwc34SFtJ3BARmXC/b1SET/ANPtcWYsR1kL0Go
	 qxnnNR50nbNOpOi4Tad4JBAr59nOOHVF68Gz7MlZTR0cyI0FYWeSmUEeW1rrgFQCu+
	 y7eslwwzd231ch3Uo+wLGuVQWy7qxVAnLoac+c0Qz4HI6MWzCBBq4fKmpPajqbllEA
	 2CAOWdbWXp1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566DC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867663357.2590.13040669578468650958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8dec2b50123ae20a58c953de369bde16775da1c06763af4cdebc0656cb313d
Date: Sat, 17 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768676633
