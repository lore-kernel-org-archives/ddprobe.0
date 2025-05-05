Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCD15C15F
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746461394; cv=none; b=YGJLVKXzN17kEDDIz/Q4VEUin5nLH7YGD7CzggulErT2ZI9O8TqCIdebYgB/LybOpsvhH+pw2k9BYiFzexEM0e4FNQIslyo9BbU0sv2SAkPYYc/e/r6acRwU4i8WsssN90LXVWpNEMPSFWQwHYkys3Evc5QqwffyzZPv6rZk42g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746461394; c=relaxed/simple;
	bh=hj0XpYHjofUpXR+OJlNVBcPd+AMg68vPIJDMIz1wLPs=;
	h=To:Subject:From:Message-Id:Date; b=aPMR4/QQavINH/NRyAV2afjwqBvAPuMOaLhzGFcvo3u49YK/RkenJcYvmzQuu3GEpZ5wkhpzV9aOyFao+5oOwY/t6mOZTua3wIvOx28sjDoeJGNOCeEYOk7FXXmfpF29R6x9DO8QLjPazH4Dlgdvtwd1Wsz83zX/8j3ZYGMnh+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJXfGohM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJXfGohM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A487C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746461393;
	bh=hj0XpYHjofUpXR+OJlNVBcPd+AMg68vPIJDMIz1wLPs=;
	h=To:Subject:From:Date:From;
	b=sJXfGohMwJlysgcHAiJLbBz5V1AttSVjlNI9GGZv+RvqgxBfvk+looScTNnlaFgLv
	 xmcmDhD2nlYZfXZpS/CaFNk/WK9MqMEesOzGKqnHsazbs7sJxD0dfXU3+buckulGeK
	 eNjmpyLZYMZNBHOwD5mMLOaRowOAQstEdBcQIfmlkhVOr0ryhKwSFUmVtdlloCKOiY
	 9xrpiwsqMtoOOMTlUcQaExZu9bGRBJ4POvjXxQr5fHCtsEeMEUSTDDz1VaHfLANTbv
	 U4A2ToPubniocNvA6wgtd8s668CpvNHy2LkJu0A5jwFuxndeLyl+83ZgRjUZFqmWmV
	 zOgwDlxv8ts6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEF1C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646139357.2449.17384922626907728222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f6d184bbd388faecaf360255738dcd0170e935333c8f5f665ca69951283a05
Date: Mon, 05 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746461393
