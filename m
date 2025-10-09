Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251FF1E503D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760009394; cv=none; b=lumlUxaJnhrtUdeqJ2nvoC+HO3McAqaPg7/L51kxsoJBOSQvCPxgL8XuW8AexU3XYnQyDcpNHbYQAh0rIK2E7CwqOTSs2hLJZsbOdvzlAKs5ZaOhvXROdu3K5cjKK9EsjSTKwziqB+m/o0CfHqmUHbF6kpH7YCKmfmyfCsTV+40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760009394; c=relaxed/simple;
	bh=yYqPNJ2iUI+tCO+unPoUpYRzDfQI2ZBa+F9sjBzw7W0=;
	h=To:Subject:From:Message-Id:Date; b=KoKX7xsAqR8dlWqzLsXy0X5+CkKMojNc/jns1j0Mui4w0LBU/hEfTUIF9k+f/zdwBoGLrzaK1DTR6a/uguT2FIIYG3W3I8AUXx3W6rZZpvC0zPVq5Tvr83VF7NxBOmXguC0FBXrEK1QZpW8vjvINazglTaI2voiRjXJimk7D55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1r6spzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1r6spzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760009393;
	bh=yYqPNJ2iUI+tCO+unPoUpYRzDfQI2ZBa+F9sjBzw7W0=;
	h=To:Subject:From:Date:From;
	b=B1r6spzgP32ZhTtBeotfQzNGUNOSSX5J+qbuACFPgA2FMtazfVPcMziGBKn4m1dHS
	 QetYJC2GEpIb1jZrOI0C//Q+bcJFlL2BDdUiIFVdMv1kC2f0nWWMHANkxvlDdkHWIA
	 ADp9o9O20AHXkWATbDVhtp59FjXVN6dMwj5jv3acY46jb+rBwnw5OvtA0H+3p+Fbwa
	 U0dt0t5zImQtLAmSDAQImfLLxDi834ikTm2Kkwt/2MHbheGIwaD4IANxYVgk0FYPv7
	 gyvDNzaLvzpDcJC1Jls5oPIUsqnMIoxciqMcteB88TCzQ9syer0XBX4nNXF1TykCXZ
	 a3gBcgrJN9DlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019BCCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000939358.11247.9297077594986602152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06458fa11ceaa9b2007a5d48fa928defb5b81f0768efd4e9ffe9f9b3d48a6367
Date: Thu, 09 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760009393
