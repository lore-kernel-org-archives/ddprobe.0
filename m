Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3115E17736
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746353394; cv=none; b=J4uPfxUUI/ff0Tdjy4V0ORf0M4wlblO0wiOnp6mP9wM/YrZYJbibk6W86d7PbNIi/7aAsd7nc8G7HkYWEdh/tIiJ1tY4WqUoBfXznIoPK5JmwfgPv+z1+UJA/bZeAQLGZa64X6hfXU4Y6cDtoF0olYa53IknC4IhH4HD24OaEFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746353394; c=relaxed/simple;
	bh=u2f3TlabDjl2ZCX35L2/yop/zpg6GkMFs5w35zLIapA=;
	h=To:Subject:From:Message-Id:Date; b=EwWL4Ufv7mqtchfw6g0nlH7VSwBpdylYS8orT8ge/4AJrLJB8MpDeEsj/z4ZRJ7cE73Ak8jKVyBWdV2lnQe19mLQr5PbdAujKWXZsgouGtO4K40Qtu8Za3jY0pTME1+mP1MHWEjdVag92AVPj8XLmrRLNGBoHEpYFchFqLmyhK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiA1Iwiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiA1Iwiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4222C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746353393;
	bh=u2f3TlabDjl2ZCX35L2/yop/zpg6GkMFs5w35zLIapA=;
	h=To:Subject:From:Date:From;
	b=tiA1IwiqAjiXY0KV4wpP1YdIWUjptbL9hu4tzFxq2ivlEkxOvOOc9JtciQsUyk0/Z
	 2Ld9W4Yyv9l9PfFtbPUwxRxrguQjcLfcxfoDW03IdUoFaRoPyuc7RH2T3qzzW20sD+
	 sLx0qlYqMdN944JeAMx2xisD3Rc8Wz/sg7uouTM3R9BNwbZsQUnIbJgl5KG2mr0iTU
	 vBUxoX7BVvIGKkNf0U/76cIBmzPPuoXtvI0E/Iefu8VcoJjNL10RF20fWHPZVmeaYo
	 y+Lxojn/mpGHt5GSSiepJGzY3jj/r5ZaZaTwagTYmtMl7OKsvDGOAcKwK0D5rkjLDI
	 dx7dchWinS6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE3C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635339357.17071.11672539575438085222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73eba59ba7eb504304ce6ada3ebde857fd9e2a0d16f68c009d3f8bd1c7ccef91
Date: Sun, 04 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746353393
