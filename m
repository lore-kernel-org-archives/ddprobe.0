Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE4263F36
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757253594; cv=none; b=Cr11HRgIPf/6N807DLTXjEBRoNJAc+9QBsEQBolU2uvLZ8Eedy3vJHvD7yqEywDSOUVBP9Vv75TvppNT0lWvAFJRG0ubcZVkGbZaOu4WURwX4F0Kmg8KWDNyKswa/C8kcYvTZDQl+UElebObweG3qgxOFJc8Gdx6s31z0xhh5uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757253594; c=relaxed/simple;
	bh=Ok3czOWHP/b/5NVoSCEO6tDnmQpcFUxIbjF93xT7SvU=;
	h=To:Subject:From:Message-Id:Date; b=XFjWpiFJCYtYEO7XNV82N9eqV9R3q7SdsUAfbBWSYmtku/0d4pOetxOFbhSnVBRcZ55y5fLEejxdmwOT9SgCtMPiZf4joVJlqwGBAS9geIfICjlpcwmdGo8dpTcI1azyqpeSXr6x5QwqNuG3JBNzKWRvVMnAoKHO+Yc0N2VMf3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK7S+Sf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK7S+Sf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F63C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757253593;
	bh=Ok3czOWHP/b/5NVoSCEO6tDnmQpcFUxIbjF93xT7SvU=;
	h=To:Subject:From:Date:From;
	b=jK7S+Sf6tpD3+dkTsJrfi18rhvZ7LYVP1FAx2yxM+W6cDmkj3N9LTzCQuFxbnobDN
	 Y+bnoMRijwe9BBjjIe6+/v+gaWRjIh265EOBSKIWvyUqGHYFdqFZQ0b0oy9em04zjU
	 5uQANbrhYPTVkB49BEMRMUhbjs4S2TQ/rxLSic77rpZbLWC/zBYvRAYc4n6V6m90jk
	 Rb4ymQ3eW23NIaHXUdwlg/AFloXfGiCwBSmsVsIaDAIl6wSM/Muouk96x+7aucy0vX
	 E+CeRd9prMlIrOaP/0P8RgC5Ob/8dSJozusGzo2MYIG3//MXVE4Np0WuJl9BUwYUh2
	 Lan7TFG3UhRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E426CAC581
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725359357.17907.5214740902984021476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dafa5c662d9e8fdf0bd7feb7d587b3e4fb2c7a29173febc174cfabccd2ce77f
Date: Sun, 07 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757253593
