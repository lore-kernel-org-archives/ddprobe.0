Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F6C3451D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768991634; cv=none; b=fA4zU3ej2d+XX4WCLMuf85odOvMrvXpucKKSz545sPTL89q69/Yx9Yi5TDd6IFGiJvKvf+AOAMCaLoB5kM6gldTd05sQLPwaMCJ9OSRDw7y41+dpM2NOefKL2trRF+ZGDgo4MI6JtTEQtiCjudGP+anCJeXym7yStKHDvDcOQW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768991634; c=relaxed/simple;
	bh=rBg7f02DKRCG6Wf1slumcJGpPRU3RwglAnRfzDxYY24=;
	h=To:Subject:From:Message-Id:Date; b=BNZGasp8c2divUbUEbuiFht8yd0DN/836hb3HhSbKWFzWmOxwQRHqoeeK7Y/mUMXMjjJ38/N2xWAptlnIUOCNgrL5hRHmrP6mkbAZvLpd84lbNB8efPKWORzAqzbUef8BrkkIY8Io3/LLnoeyxuPgPO6owSeRDG5Uen16ThArew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJyhAa3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJyhAa3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1DEC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768991633;
	bh=rBg7f02DKRCG6Wf1slumcJGpPRU3RwglAnRfzDxYY24=;
	h=To:Subject:From:Date:From;
	b=uJyhAa3gaGihs30Gvt4Mc4Few7eIAU7iONf7S0uoTZCID3meUDUxX7Rp8WBXpQz6R
	 kqF77kaksZ5PDfKb6TkMUdAHIHaO8qIInjZcDUkP8HEd9FFZZvbdtCK/hp0lijEgT4
	 7Ugro+aZNiEmGvGCFfzTqKhDanvGVz4ZNrAEWY7tohutZe4tYu7aPZhttu6o/qJD90
	 7JdgQcJwIUy33eZ5GID9s8axA++RK8rfqtI6aPUnXhssmQ8L/azXO300FVie8o3cTb
	 fGIqWd+cPTXHUYgefUvFqjQXwR0pEkQbOsoATRLLwJHuLpJMicrHEkFwMvpA1KqQaF
	 vCkkFCaSkFkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA9C44503
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899163358.30802.13898020241791338734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6c2ed9ac95650716d27e45d0b6b50ae3a72a767220de2c00931c779598b74e
Date: Wed, 21 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768991633
