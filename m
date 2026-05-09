Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411DA1607A4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778309254; cv=none; b=mW1EYxHahqxJKqFRydUsBzBcb7XSuIhF+28N++kFKJqC+XCXrDWwoHG1ljivRmM5RTA1CO2atLP4k2SJuOu/2/t082HncHOBR55idRo8Ris6DlaRfp5+eeSXF377zCEnhJWqC9b+TMumxPjFdGGd2fE+AbZtVwzrBTPov/fenQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778309254; c=relaxed/simple;
	bh=NogX/FrC6k1QG9SXvxBUM43qa/DCQzhlMPoAA7pXKJw=;
	h=To:Subject:From:Message-Id:Date; b=j38COPaHXgBFMutoImGD5DXSVGo4rpwaCeW7pBFfwjYv6n6JmepfQ6Kl46St5EWor1sgo02hzcfTRlsyfNmvebQ6/SERtIouFzOaL6F5D5HQP01w9wyKo3Ps1KsMu1qF34J2CWxOGL2eaKPG8ke3rJ8J6Fs2JjW8B2wThifKzQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEaih6hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEaih6hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36D5C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778309253;
	bh=NogX/FrC6k1QG9SXvxBUM43qa/DCQzhlMPoAA7pXKJw=;
	h=To:Subject:From:Date:From;
	b=gEaih6hy8up9yNR51ThQ5Tf06ILDtL8Y4jPstg9Ih824woXBqNNdE4glUFr+YUJqv
	 aGxzCdoc1lGaNuVM+3cnT5HYFfVC1LSZIbutXuAcp/IN1QuzjMNAQ55jCLLdObPgyE
	 i1lslZicdfTWRknNoYiWc5lQptnGJrAkqa0Zpg1EJdwy+jeKYEw/B2Hk3/54lK7u3p
	 LtFhHVOvSWb5ZFpU7D0XOpNjnPeMYF5hIywksCE1WbnzuzSEDLtuE+hWbaVF0GHaQh
	 OmtlMKqRFx4hudCgQjsJhBY+6hbQr0HC3Z6Q1MAc4tbxSI5O38/BqWeGcAfevFNIIj
	 Iggi205fvrE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F0CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830925369.6033.8888072047069682482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819a7fefec8ec0bd8f4c42404a23873d9945acdd49cf3b89b8496339439c64dc
Date: Sat, 09 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778309253
