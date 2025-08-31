Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA81C27
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756615794; cv=none; b=JHtDMQ7RgQdqMVThZ9h6sEUaMe3Tmj9vsm1SLz9vCLkNh6Y7fr5VRbnrfcr867QgrlgmGa/YqXLTXDvgSOa37RUPSxOGMKUAnvuxy5msNfHLUmkZKYCbyvu5jdG7FCKwm85Fv0nriHD4dEGivptH8eIOIVJOta28UuxhjuBPa1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756615794; c=relaxed/simple;
	bh=IpV9Dw4HwptpEuj/gfGre8V7/pjMwIoymFql/mR5EWU=;
	h=To:Subject:From:Message-Id:Date; b=ChIQLhRAZiRlMwDZcIW1eBuK74d53DxV6uFLS9Ge+020Y1SdHqzm5othXiBWA0qVSJHFsOvfxsP7yjjEq3RxlZDcPXpO2Gp98f7Qb45SpZPJTTBZ5qDCkg0odE53aMtbZkkGkCH4RPKYutInm1K4X2gQQftmZKBWh4rfLWjYHxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u20UyhOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u20UyhOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB87C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756615793;
	bh=IpV9Dw4HwptpEuj/gfGre8V7/pjMwIoymFql/mR5EWU=;
	h=To:Subject:From:Date:From;
	b=u20UyhOKUU+dOgWrGSUA9m9vMZ2KK9BD56JVFQhIuHYgKIRMKK/Kek/PjlM8SuJk5
	 +p38rSwr5atYfnx9AIv3cN1mb8GiW5LyukBfUg0HP3wwzzGweXEhvt1iFJoiSvWNU+
	 S7nJCqoyNg3uh5NQJZ5tw40lJGfZn2Z2kOXfk0+x2SYXieD01wLQrqwn8iQauxwZOc
	 y/2rKIpcyzZKenA11uw4MW6dhqZKqZWz/J6AMjW2nLqusqmJWhamMrd7h30+e2Yze7
	 TalR+ykf1XexLqxIX6J4/QEIARLMos5NtPneW/QAW5TE7XgdFWf2p9bxAcfVQbrHRe
	 kPpL3008a6VbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E7CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661579357.25044.8240838139419045434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261968dda31703434c125abed2114291140277e16101b6c1dd08dbcac696ab07
Date: Sun, 31 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756615793
