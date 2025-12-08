Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCAC224D6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765195374; cv=none; b=WhNeW2LGVjvuVhCksyfHQu7Mhqzasof+HD0GThk2XSRvk83BMILmeaeN4pL94TGdNrmuJw1P5ELfH2Wo2jefsDD8+kZB81MXfrnF0eObLnMuOeNhM/aUIAvybh+F1OUJr18i5OqCnk7//XvoagIBF24PUbJf8XDIfnpSRz5Vxac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765195374; c=relaxed/simple;
	bh=1F2kAURnj1hSzIVhzayToHdkkPIigY7ZTxTxza/NiHE=;
	h=To:Subject:From:Message-Id:Date; b=Hx/J/voINn3DlDFep9/KzvXW3cuMvNwX2mGE99HC0oQlRCHM1WMxwAplVcZkGu6kW/eYVTYvUdR3HFHMbEjvG9/+56loNzEwL4xYBK8PDYfv43v3jW+L20PDVg2TtzWFpVCsGbspOLS52xaPz1viHQorIhDdlDAYxdL1jBH+UZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+s1ofhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+s1ofhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B058CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765195373;
	bh=1F2kAURnj1hSzIVhzayToHdkkPIigY7ZTxTxza/NiHE=;
	h=To:Subject:From:Date:From;
	b=m+s1ofhKICUagcEY5EuFoYc7xkntBTTV3b3/4flLEAycHNtfJVTpJkdP46Lq75zAZ
	 Zu2V9Lwr6qVlaHAJVT8G10/XFAH8o3TKZNcbZCpIw7RtXCQuo31Afv7esi3pDkwJht
	 g6gV8TviFZl4l+k1EWbHQanuWUxiYhm+0lW0CNl4RsqJj81JMuPNoZ3/2pFqpCS03g
	 w+31qV89W9mwzZ7hA0XxQD63a99aa7YZzEao5fCNa65F1m7wH2SiVzq+BogF31gZmc
	 wlpqBximp1+onCtjyWTUCFGYxsJO5JjKetVukL+gQ4mVmVvY8HlbPwWREUQpnSxL7l
	 2/x7YCBsfXl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B271D3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519537359.29262.12003755741116210126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec7776ce7679da202bff3068e24033dfe1fa1152d2e4f343a42b3e13f3e9ce3
Date: Mon, 08 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765195373
