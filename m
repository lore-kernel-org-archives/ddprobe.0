Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C61189BB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746409194; cv=none; b=ACRLmG5X24irKVTa4khznvLMoB4jG6/Tx/OD5otzLioExbNSb3F2jHSaDGWwcrwBIu6xXtuW2k3CnEnEXFlCackqe9bWL7BTY70aPlVmbpE2fd1ud3PIFHa76jF9mj4YJLQnbwbc+3mjBkhtcWLLxiV0K1Zw5I+6xsg5ePej0hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746409194; c=relaxed/simple;
	bh=7kUdc58iDMUfmOdaS/It3aj9F/aXhq9A+141WJAzMq8=;
	h=To:Subject:From:Message-Id:Date; b=ARR1t3CFrWlVwuN+Kv5xAbY4qQPNZSU4XJ4jZs/PCpq3dlw4HLEwzyaylcOzP7w5zEolE8PAUGiTt9wqebutB9q4N4FEQbJJ4/QXZ8D/7iQ6ZOlXJH1nEs3NNhLJBgPF7ryyaf5skEqCuex2CVvz+z3+I8xAbsqv7kmPwkohyjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd0Lg01D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd0Lg01D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4521C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746409193;
	bh=7kUdc58iDMUfmOdaS/It3aj9F/aXhq9A+141WJAzMq8=;
	h=To:Subject:From:Date:From;
	b=Fd0Lg01DoewQT0xAAGVVw9RBYanPsjbXwlbxnLz/GOIw+iWJ1vDR72jI1ojU6y+m+
	 OB8j+L3EH3u4+Uz1j3NL45ld5KD3Qrsq0NqyqrIutAOGWNFA4cIIWNobsANRHGEHfI
	 rmpvrHiSJW9xNygMHoZR/xsUZchfZ/vlaSr8DH49QVEoWx1DWiJV61AMPsrnIS9nKZ
	 nAKJRpX0ufw8Km8hLL5stTHi+KgFFWFvC2Ah+OfqgYtNCKlZuu3WTwNVlgbEEbFiC5
	 1oDlgynH1gd/ycMlQ99IKgDj66Xfmjjzk132Hhn9dkXVtigfALZ5Za3VRL+g6d6Ii9
	 pyGDHnLuLEQWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0768C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640919363.3934.2526257424869294077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc7d2dfc1306df424c33b7d1e645fa69382347dbef099ba605916143f7e42e7
Date: Mon, 05 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746409193
