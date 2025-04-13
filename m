Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F72481B1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744527594; cv=none; b=MT9dwbW0IQSpEX34dBVtlSZ5bB7ksnsR3CsNCcBCf41HL7jZ20vyZZ0lbHp3gAJicPg/n9ay/+hyxStjhbsUW8aGgvIeMQj5oviliCdb29DAUzpBa4zhGKXOoDKzEeRQLp70HoHSKyEDCGo1H6t1N9uJlw0pcOUEAJQsowd6f9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744527594; c=relaxed/simple;
	bh=xQLcCaNr+W/XkZRp4xQwM+dvQphPqtjoBr6Ee0ls3AU=;
	h=To:Subject:From:Message-Id:Date; b=Tz8JhqJHuVhdDBcEuPtTGsV2JpgKwrjK8YRCnl8ScYyW6TdJmRh9GxHOwy2OqynMwdqbGyCPRhForjcKTxBlBWZUnazmwb7i0NTo0mOoEM/aM86PdBaOuQgyYUtim8YN7IT0JaGqhk0B4eAgvW+Iq0N9RiAQI/xmLJHc9LdHpH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRg/NE4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRg/NE4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B291FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744527593;
	bh=xQLcCaNr+W/XkZRp4xQwM+dvQphPqtjoBr6Ee0ls3AU=;
	h=To:Subject:From:Date:From;
	b=dRg/NE4HPOZof7UvcfUH0owanGaY9Yx4qoAGKj6bOVBGMXK/cqaHvEm/cwfkgti8c
	 ZgGfmiHnNWpnU/tPzs19QtLB/VfohC50Mh3uaSrLhaAIa2fPH+BUoON6ZMZ3hVE0Ai
	 tyWJcQ/35JxyLSAEyJ9639GrhQ6ggUngRkgqEILb19ONRB9aG6GIWZJDBikNy+Czm+
	 HxNdH1xlXPmOfjU3I6GZa+GWx1fToyhZp2O7eXS8zBqn9QUpOaEX4vyWeGJvbobLN8
	 dNvHfxuE5zuRVcIzljHhog73wmLJ6jELWxLMxLfutT5bYqYcBQer011pB7qFmy5BHj
	 13oc0uwizhU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE5C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452759361.12080.4334231704715288555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e68fc96030297ded8aee456d1a186c2a6a2c0acae1ca1df1246c368b2437fd
Date: Sun, 13 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744527593
