Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBD22E3706
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753332594; cv=none; b=QpPGylQMfXPLkkOVWtFiaUhEhR7NVGWTHJeRudQ65cmYmKfPZ+Ab5b1d6oog+XQOrrZDLD3bj+9gPEyZ+spyUNGI9HCKMhryvuX/cAcpqBs0OSqtsQEDO3c0DSFTvBULr2W76FjCaPCCKl6iAY4vOfSs2kQOnTH6/SnKgthNryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753332594; c=relaxed/simple;
	bh=H4rm+sduTdgyHiXjZeBD6tltOyRAyqpt2VJFso7/x8U=;
	h=To:Subject:From:Message-Id:Date; b=XgWIjpgIm+JKkfCjAHiBz9zi1mk9dW71ur9t6lxN7D5JyYQX12rNUBIxkIVI+KbYnu2kXeV+hCiCFAucPoP9vk3v89gNaxI5FfGb7oNcDDEBqItQv/L/ghh2b+7tQ7VQS9B6zh6iuoObAqI3Xakn+DXrpJl/Vvon4617hK6KMto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya81h2j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya81h2j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753332593;
	bh=H4rm+sduTdgyHiXjZeBD6tltOyRAyqpt2VJFso7/x8U=;
	h=To:Subject:From:Date:From;
	b=Ya81h2j8c0vOMiJmcGIq418yJdj1PS87RjUNb025McHKI58YIKj9p59fZHP8aDVLD
	 qLp1CSRmD1n7tglybASuuPl14ixr96bq4lmvTi5Gk9PriM1dkLl5xGFU0uA1hP1Lep
	 N+ZxsRzL+Hex7zJMVL+woSMUTMzaka0EPHK18o77EynIMSB3Wk6FUkjhDSIn0G9+o2
	 wmXa00LBBOYKk0kKJO0drCbqQKMhnRAm+h+ACU45q4kac2vbJSnmvsxSOCDmzn2Z+G
	 UAnI2v53Om+LP627LrlpjzjItYLm3SURvx7ohwnA3o7yIGYvoNkKYdW1tDyf1CUwNB
	 aSDhyOm7YAk1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91433C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333259357.21891.4316631415747982864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d583625b1398eb0dda22499f9640dd9153ffef6529b7df45c567daca5e8cb4e
Date: Thu, 24 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753332593
