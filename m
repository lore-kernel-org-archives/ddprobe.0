Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC465A944
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762849193; cv=none; b=lISxKHC9PFPhrCcnpDzDRbIz8nmQhCw1driyYx6BKRv6fRFhiGqbgX5lFed1V5CLZIeFpqakWti62SBjjvW14Zxlu5cukUjre0vXLrx5RUJFGpznFsIacf7H60b/IbIweiILlgRWP5tlFWdzQEZqFKKDQrWuoQeyRXamJsbvZEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762849193; c=relaxed/simple;
	bh=TqbU9a8IehkrxdXzpiSQCDHfhp8HYUMQyw4HcxZ0V+Y=;
	h=To:Subject:From:Message-Id:Date; b=FdSogUr7fCh7PbBhYuN2Ke60tX1Lxtu4S8JGBVFn6VRiDNKScZTYc85949ko6HrG6doQ2lxPp42bLxQQb+27q9zIDpHHNOVRk5hvBS7I+mImnjrLrTDn5ocaMEPs4n33Xw2NII4HMdJIGMQgkXk17U/4Jicd83GjEAqyzo07k5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POct/xl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POct/xl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6FAC116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762849193;
	bh=TqbU9a8IehkrxdXzpiSQCDHfhp8HYUMQyw4HcxZ0V+Y=;
	h=To:Subject:From:Date:From;
	b=POct/xl5j/6uG4wXZpjtGCm0MjKjM8TeykoiYc4tnPaoBoRQw7rmPa2TK1oFdGJWP
	 wJuS1ZNzV0IfWBnbUZ/XhGQ824LMfLQEPUeGQLJ0qzJjLCHJjHc/LTkJItdpJYf4+k
	 nmQtAcIvDwOFkqAQXbipXEKNjg4tEMJKzROzA0Lc0TnkNRoafAJ/HxccsXCHRC2Ykm
	 qoDPb9ohqLSXDZ70svAp1ZkgrFnM/DS8UHki7NRrIHATFcXTpxpVM2pfGHpExsJh/L
	 U+U6U+1fPCvG4CaeuUiIW7NzKsiyas8Y5oZolR78auHOK3nTlSTKWBMzOnxPO0VH8L
	 PRN6fTi4Tlmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A4CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284919371.6735.12264307494438952920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf76eaa66adddb0026094f82cb6b896f08bbc37ca22e9758cc7bebcd5698c74d
Date: Tue, 11 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762849193
