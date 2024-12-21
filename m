Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7681714A5
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734814554; cv=none; b=fXmFuZ8Wbhn5FeIYrPvjt0Jw27nqKdNS6tw0JqZg5Vl/i5hcZdH92McAz2A/QNGA1PTjrKbGVojug6FEYlO82kv7O3zXHTzFIYzLa2Aq3OrWTC7TQXoyDTCkE4Doqv0N/u7z96cvVAX3vdoS8cbS3XGTkM/4RdjhDhz7WwIak9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734814554; c=relaxed/simple;
	bh=YoQ2B+wKYy4g9mFXgFI+UC8YZDvGvvYDMX6ulemmr04=;
	h=To:Subject:From:Message-Id:Date; b=gSIfPa48dTf1UtCZQHEGRfP5t+ExjC8zQcFV3dIa3P+Jr9fDTAMzEzWE22t6Ws/bL2Y1rSpKRn3hdip4JBpWpxtjsLkntCJHFUkMKpWq87AipO6grk4iKcrKaWNFUV98S5SsYhs4DwjE4W79TuIa/rEW2phvJdYjzWfsWkEvT/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQBc6Bfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQBc6Bfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCC3C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734814553;
	bh=YoQ2B+wKYy4g9mFXgFI+UC8YZDvGvvYDMX6ulemmr04=;
	h=To:Subject:From:Date:From;
	b=aQBc6Bfzxp2oJnxdhfy5q+k1bQftyKCTf3De9WMeNfgxbN8qye+yuzO5u1fUjQEFM
	 yndWdm9wNZ72R/nRiPwAuZzhLr1vnxIuHO1YiUXZOeHUq8YZGyrFVojl7sjAgadhUg
	 Eobnfmrlv1+MiOLGLMjVTK2w8JhRfnRXdXMtrpfylI9rxsKxdA3OWl04o7AHMzhv51
	 9ZBEm9PNGzZIWU2DOb7LuSxukRPlQ49Nclq95NFONvI0urGAd+mn8mCY80MQVlh2HJ
	 9uMp8jbeuBK3awWa03wHfVKe4XdfXU57Csk+oOREl/L9GXz+c0XAsju8hoYB6/XEii
	 dgorAbYsUdTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1567E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481455364.26897.9093266541376571695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a27f007ea7e2a6aee34b032a93bac1d4daf3517510d8e1a5593ba8a37b6bc2
Date: Sat, 21 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734814553
