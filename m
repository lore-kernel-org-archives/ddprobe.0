Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4B233E4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748161193; cv=none; b=m6XNI0g4+boV0KSH7cL0+WNi31g2E/Hetbio3UXyc44r+Su54QGLCV3tfoXSw8KtwCZL2BhpFFtolHVXKA4h1Flr8VjaoL+qS1rWZNVUTwq+9/eyc4kUSo5+bC5Zglu7m0nMLN8hcy76ktYMvbAJLDqbm6QQ9bW88SmwpH/FqfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748161193; c=relaxed/simple;
	bh=vUoleSCugdsr9RN+CS9uqJrq3RhBKSWlgTfQlMUoK/s=;
	h=To:Subject:From:Message-Id:Date; b=c7r5tnAURFNjnXGrS9ghcQQA1EZjQXpMM2VrlZLyl6bB5Vud4O+zl1meK60X/ODBGNOBfXrDq+Tenwn9NG3u0WdREVc3mBmWoaiQasghMBJ2eEMaUQgdnYyENWk3SFWzOqkHXGntamjPE4NCRzCxBxVgCS/ts+67hVvCcz1+Ddg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZRoFjMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZRoFjMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F248C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748161193;
	bh=vUoleSCugdsr9RN+CS9uqJrq3RhBKSWlgTfQlMUoK/s=;
	h=To:Subject:From:Date:From;
	b=MZRoFjMKhFPWQsHAcqsy9xI3nYzXJ/amc7t7mDLmWcsJCIhc1mv7TnwfODOxSVMMm
	 yn++ThGgP0BuverVLyt+O/U94vmP/INIWpOmsRrKbC1Cz0Omoxz+frqXqT2odpEL7I
	 IH3x8hZ0ujxi+2jzFLWijUU5Tb9Uk7rT4aM1p4lTgAjNYNYf0a8Ie8KiWrRHhanYaZ
	 N1NJ3rPUy8EOziOAoO4JNUKiHBybYDkjudTGUzgu0uvNjPg0fuWlcGJGbTMc5HTZb4
	 qLGNL3ZtV9tpH2bt8L+85xoSWWuIjMRSvG2UtsSBrtL2rOKOu/toKtBgllkiG1syUf
	 uXqAGwzi5tgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E6C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816119358.31935.16444346239305886739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85cfcccbb41a7b0427a7c1f1f1f3383fafc03de081b311713b98c7ac49b6e70a
Date: Sun, 25 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748161193
