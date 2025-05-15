Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C585E225A2C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747311593; cv=none; b=ZJ9T4x2voaKB+anNbGNO8vVqEMn36xNLGaETNgJ7kMvFg1wyNrls5+hEN8luMmeNC1HrvwZDBgIy0dXk2e5lCWvH10DeNIcVh1Ll4I9o+a7DzMAfdIZTGFse2UoOifRclZXRL/uG08Fp1I869rWGXuTZdKBweM+Ntu6vtbpa5HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747311593; c=relaxed/simple;
	bh=rNwIEB1yvQotJUjW5I85/JD+aIDgwzH3R1k+vc0o/vI=;
	h=To:Subject:From:Message-Id:Date; b=ZiqLkr3x+g+6GX7UsizxWgg++UvYACnUyxmwJbqVy4Jp/bdYOyStMKwp/emryAFkjbFWjwyoAA1ICY31/gezor7J1splQA29cHdIOffFNrbX3sU1/qi8nSVaEtLeT9isBrtJ1z3DQwq+ZDpd2byi4O05BzHB4x6gjAjEr7YuSEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTe0YI2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTe0YI2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2650C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747311593;
	bh=rNwIEB1yvQotJUjW5I85/JD+aIDgwzH3R1k+vc0o/vI=;
	h=To:Subject:From:Date:From;
	b=YTe0YI2InIT41Kc+WlcxOxpEUWipDlH02dc9zPjKCLcisKkSflrBvWGlTt9zEcDJQ
	 fBW8JWlsgRXyo/R+mlTs2obytWmQun+xik/DG/tSTzI1VwsHE7VVlGHmz0xXPMbKvQ
	 HLN38T9PzCPFLwxuoCbi6tcttBEwthx+CcFVxxp7WUzKB794Zjg0gQtvEtoVSgEjEJ
	 wBuMh7bGd3e19bsCMB4/poSvjK48xNm/BesThNYxK49VohL//ktXXNGBzupWqCv72n
	 u/hSZUUUWOAugqgGHlhKo9KpW4kjkTGgPTs49gXEBHdzuitSILaFNiaXLM5Ks46q/z
	 nxDE18EAJmpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91596C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731159358.21857.18031841305081701967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408d2c5d2eb5d9d84fb70a053a151f7d33c4184095e0eff1eee7b3719240dbe5
Date: Thu, 15 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747311593
