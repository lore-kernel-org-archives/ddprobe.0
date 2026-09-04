Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED714CC267
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788536434; cv=none; b=uHIA1j5D+wrDp3PYJTKSc7yoaUPaySBV8pPvr3oAHXzu9jLndf0Q/gJqkJb0DiOD3i1IWoT7faCtzOGfkzqTj/X/JgAFWF+0KnfUkDlYt4S6o5kH8S5/o/JWQUFFI5nAlZ3P2Jf53hW1EX/J1Bs7D4WH+GpEBdQuk8Djd9Idit4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788536434; c=relaxed/simple;
	bh=xN9TuabjiOeB/wvmnN0unWmLrMK4X++M250GBfL2O9E=;
	h=To:Subject:From:Message-Id:Date; b=f4+bE6fIwx6dJodBj8LOKol3dyPlSqtjYIWETdCMSukoHbEhgNelSOLPIeGROAqbAjyOaOm+tmnqboLWfzkAUDBMmJJU+T77VZKwGjENAQYvyCwzrGtw57fdnSfBI1+L22ZqfzFDiCC7PH6+WI9gfBG3I9PfVLXGwqQIIMQ/04U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EirxDM/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EirxDM/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F20C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788536433;
	bh=xN9TuabjiOeB/wvmnN0unWmLrMK4X++M250GBfL2O9E=;
	h=To:Subject:From:Date:From;
	b=EirxDM/46vE9jFhgL2ZCyskjjaGUVDUf0KjOPTv9To8tMTvXbs5jWM7pS7zeKnMDL
	 iCcUrwKdDkOvZepzKFyh72Mqrbofnlo/4PUQ7hYutcj2+cnuGjuxCZ2vJBDp4w3eHg
	 aj6J/E146MKQ2O0spd+JLiWOgIpV80L2VVDow+6kax0PRkdudBmCXzksquaY7uJVZy
	 Zvw8qF3r3MiZC91QvzmicUk+Y7irJFX52T6NP9ivK3tI6HSvRviB0EXomtYV2ncAUp
	 wTVIxBomZVYTJapZKhckD+I2YAvTx7ZwrDqbUVE+DQUElIrt8mTsNvT1nFFDNKUYrz
	 6MCMqf+DZzvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD865C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853643370.3593.10394844653335727786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9629899bc5eb26168bf084dd78822b45083c36f53703a6064a555404db58ae
Date: Fri, 04 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788536433
