Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6BD2AD16
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745567994; cv=none; b=Y/h+ukU+llReYuyOnFJZpp1wbhmio4zIn3enSCHJAX7LXy4alaLCMgj0diCyobIsVzlMWaLjKWJbw08y5sCtbzWsJdGu95vh26AcWTKh2xMhXei32cbUl51Sp2Lz4dtT3GY1HlkDLG8awDKWPLQydpeJ8qnPzpRqMTMcI6Ka0sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745567994; c=relaxed/simple;
	bh=awyCZuVTbr+363I/dU8jgKAbp5u558sgBw40AuocTq0=;
	h=To:Subject:From:Message-Id:Date; b=XnazzAPLnxO2c5YzzR4z8LN1G5L90aJWB8wdjCGM7qt7r+p64ZOC/brKynmhAWih0JhIMN45b9an8ZlwCs6GEyN9jhtWzZjaHWWlVSO+XWxJDf3CHv99YUHk89YKUgyc9lamreMwnyePWWtd1rnU71Trkai86jF6jJhPUstmhLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGQbwM8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGQbwM8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF55C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745567993;
	bh=awyCZuVTbr+363I/dU8jgKAbp5u558sgBw40AuocTq0=;
	h=To:Subject:From:Date:From;
	b=LGQbwM8mCYNbrLMvv8G1eynZIrS68yY+k05yTcPi+tOpjgRgCLkGG3mjRmBF4Y/da
	 Eu5jT91Y7jwklosidWwMBrEKcmGsSmxcp/PaHPFscL20GEdEyI1h2rn23HgnJnyd6m
	 eupxs3y8MtKZM6oiD/TcaqhbQ60jyRQArBP53k0eyBR62zDW5nUHbr0N/xYvLcDdFO
	 SaZA7hQ5AqqIxcY2lmODJTj4RE4f9WmaRHlcgM0SEPNz7y3A18V4mqkq92r3xs74mE
	 0yjJEztemmJiNGm94sjU4KHXEhJ6Jteo1wU7f3FfsYu0mCGFreE8kgntOI7r95Hrp6
	 3VIYAi+VHAtpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E100C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556799357.21461.15502660880828271978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1869080b512cb1b23182c349a30fc959c96f274eeb610bf2468b3f4b845d69f6
Date: Fri, 25 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745567993
