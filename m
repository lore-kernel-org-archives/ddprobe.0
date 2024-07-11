Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125B729AB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720679243; cv=none; b=OB91CkjrFW1YkryJmbbVXpksPivyifhTx61Q+i0kV2uUMXEsNjmnVbUL2SOXB9w9d+lCyqoq1oXW99GACkt+sYUu/TUnU62mVdXVIYJ75iXntX1KQVnC3A4PkTCTJSq+kUOkgupY9rITEPKF3ztdRUkUUaAdyihbi1yoyEDqm9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720679243; c=relaxed/simple;
	bh=neTy3eJ95ZQJeNrVDciPPWXmjv7aCZRzReT48MbCog0=;
	h=To:Subject:From:Message-Id:Date; b=suwgoiKaauJjZ81209I4AWjBWaLJyWrqkFtPw38W/J5tSyqwHbl7e0ZubkzdLv/tKmekRgk6sSRGlLe9F9MX5tDJ2ZBCqVQhSnMaXMnCslScxiLMQRziTdCyrbGbX3+NzIi6sMoElWbbidnRhn1UXgfwTe+0mQR+l6jbcyJRA8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApY6rMfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApY6rMfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED35C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720679242;
	bh=neTy3eJ95ZQJeNrVDciPPWXmjv7aCZRzReT48MbCog0=;
	h=To:Subject:From:Date:From;
	b=ApY6rMfU8EO8USDtmwKcKwjoO/B5cO1XN2UvjCi+BsspyWgwbzyj8BiC+bahS/nDI
	 5W2DqHelI4Wo/zP8QNlonJfPkfS9HUCrFWh99hegZ7wjSXZ8Q4uIpnNuiek7XMoMv0
	 o8hqXyXvibeRnIfXDuuTbcx4huCfPOG1ZC45l49Une9WZdNZZ2ZJ7QWqwSmH6EW/hY
	 2PsQihV288FaItXa95M4CC+Uan9E9Bajsxf0k2Wu9qs6KzvxbXKWqAbZLcWb4yiL55
	 xi8/jgOeDoIgpkyTtI21MkvQXa5JPUiKe5/GzaEXdLCEO+RgW3RtU9t0Dhws2quLAc
	 BJoe1dhvjraiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6097C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067924278.29332.13064951023643371599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acdc7bc743098fa78462c3ab13e75530aac3bb26d3a8daefcc7da78a4887256
Date: Thu, 11 Jul 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720679242
