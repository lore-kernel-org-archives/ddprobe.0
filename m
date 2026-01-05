Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC125783A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767645834; cv=none; b=dEakKVC/ZttEkvN8NrwokzGm3Ru4aWjuYlffuaodRhNV7uMiBoX7ZgpjEJHoBOj2qixqlgpFcufsME1RLWEJsvI0KoCAq84suYhvKVgYPBEQ1G8z6S0vYq/ORdTxw8kyWW6Ws15s2Fy3Pl97SmXGy1u1U8kM7PtGF08HTdcZG1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767645834; c=relaxed/simple;
	bh=nxIo1Y4f8XjwFHFL4Mv2ITw9oFmEcBuWvrD1V0SjFwc=;
	h=To:Subject:From:Message-Id:Date; b=YMW5CWRlUfoAy3CODPLwv8Ks0OSKqb+Nyg/tIvsidLGWdBspvkjz7pM5k/TkmJv8NAHuqE7rxxIf5jiSND6L19ZvMkiYB6RT99VhKeNuIdKGnkHUYViCX4AeAzXXXVzhDY+aAQlbMxOlNF9ydd5gV+CdbX0sEvy9GSyvopWNtRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOpfCG1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOpfCG1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F36C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767645833;
	bh=nxIo1Y4f8XjwFHFL4Mv2ITw9oFmEcBuWvrD1V0SjFwc=;
	h=To:Subject:From:Date:From;
	b=SOpfCG1KYV5nS23V8xlWKsbrlvtAdqGvY5FGApJMBsLU4oFWMC5dE/EkX89jqFNSb
	 onTBrqqlHQfju4QG8refNpaCtQTPo3xwlnCr6XavH5skY68ytk9XfLZOJQMuL/JRXh
	 M7vw1L00HnHLzTmwuC7cyxOJQuFgUsH7cA5/Eq946Ni8lsHvQRL4bDtfQF+k3Dy1cy
	 x2PrHrHE3PraY87BJ5Y60sAsci4GK3Vf6Wavkciw7kYMSBiL6GNs1uRTbqZje5ofVq
	 y5mFX5az4dmf6RbAVGKwkS8HhZJ87a9sKF8We/PzNSbSI7o5KdFMfEttYtg0SiTJOu
	 nAdCwpk/cDk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584FC98335
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764583359.15009.5562959734657270848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c7e5f80df2af4890a6c465c0441b7dec9e8b1f9a61d8c83883bd5020a89b45
Date: Mon, 05 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767645833
