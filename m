Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4CA926
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755286194; cv=none; b=sCMCkxMuNzW1bnj2fIZTSFlMXO9U7idGIuZ5eWpdZplSrE3D7SAeXq15NKiT3yfipcJgBMON+YjVo/CLBIoq7pF9FYcme24WvcLvPHz5h6wLVoTF6LuTKUdvvisOlh6MeHpW9ZqYSvEnASuXlYm53j+xoZE5hdNPEOKuuvadbIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755286194; c=relaxed/simple;
	bh=74awucLMYqKbqNy96AUXg4Af9VHsPoP9fKOJQyniAcA=;
	h=To:Subject:From:Message-Id:Date; b=q55fkx74I69bkHYBA1uAHtKG1biDZOzhAP2eg2TphFMm9j6ly+7gXuyC0O4xZXtDVUk87VHqwPCFap99LSqGppydg247K/Q4VzKl0QramBYj+XeNX/uyT0Jf99DhvTEUJ4/oHpLM30e/9Bf7XeLh9a7abhabwSErk/WIdrS1EYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiddOrqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiddOrqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4667C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755286193;
	bh=74awucLMYqKbqNy96AUXg4Af9VHsPoP9fKOJQyniAcA=;
	h=To:Subject:From:Date:From;
	b=uiddOrqC/V+xcBRfUwfmh/fHDUY2xNzOYIkMz41jWLV51Dwrj+P3XS6uGaw0bh2J9
	 9VMGRp1HHMaOsuASl7Jfib0QXs9LIymvAOFh92KdrX4M70E/xy3WadujsNxg1wao4s
	 84JtVAEt9z5hV7s8mlo12OznEcc0oyd9J3kMdXgYq4+eZ+0bSD5dn2IaWCdKT+x6Td
	 I91iTM857x9hge/E5PgzQuwiYM40gU+GG98PoqPbbbm4kIVRFgVBeru/PI9mw/3O3u
	 +dTl2QlQTq5fh6UHJ+MYzOK4vOMoUb65LLRmXKx1ccuViQ49GYZqi6mL1yE2k1sbKR
	 gMaOE+gV2NuLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92914CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528619358.25318.2812342834612327732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33097242ff96c6ec12a94d094660cc18c0791f170acac73b2a7d0179fe35db10
Date: Fri, 15 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755286193
