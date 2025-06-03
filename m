Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098A2745E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956194; cv=none; b=AehfxupGEpuvkYfW6eenrBxJb+0IFiWCQDjNihkA0Hc9K/oOYKUFE2TIGG9rtBoIuGznqwMM00YdQNcpL++TgPDD2/2yR+SxhJSRdY2zvUFDQsIjgMabtICCvpcCUK55ULAwGqrY0sELJcgUqkpZeQEIiAazNZZeDhldTsTK2kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956194; c=relaxed/simple;
	bh=o0BAvmScMENFNc1yjrr8mSXCr5p2FHTvpOAyOFGlDRw=;
	h=To:Subject:From:Message-Id:Date; b=sW6uxOMAak7Ed3K2xLiJl1mff8vnCl+PgaX2SoBs94QAfTPOMX9w4x4KI4e7VJ76oDfkSa1mt+94XvDRpZgbBarPVj1nudbyL4Siwnt+3cTzJ5FUvyk0af2KRkLQnR22p+4+pvjbqNoz1VhStUkXL7avArAhBZds35WIJRiYx8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qma/i1qG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qma/i1qG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4388C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748956193;
	bh=o0BAvmScMENFNc1yjrr8mSXCr5p2FHTvpOAyOFGlDRw=;
	h=To:Subject:From:Date:From;
	b=qma/i1qG+iL6WTCsfrKNHIha6Pbko08XqWnORISiLEpMnYU+v4CA4MlcnatEQSxPl
	 1BtgTbDBZFzxCeM9PWMSgfko5fVo7MHsY9gB3iT51kPbZQAA1Be4RKQokwCLjphxNm
	 A8CgBzTwJsanwFhX04GAxMm7kHocX+OWK6/I52nHXUOdJqLbueWm9RcA99T/g2FPuS
	 88qN1fvQdpaGZZyVrn/va2/wTo3MHUA5Hrw3P0nhll8FnPag1gZ6FiCzVePg2xQdg+
	 /f3gfnAVQp1FSm+KNYtfZsWfpR/nd8NzWqqZ3dnzQK2GpE/vJp31jECTXppfS8+wb2
	 W2/h4OLhzSUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFDC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895619357.17402.17988168105668133020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c8a2ad134f6951e189ae9f24cfe5b850df9969e81c2f6832764c67da467281
Date: Tue, 03 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748956193
