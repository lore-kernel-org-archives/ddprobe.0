Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282DB18DB02
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751608194; cv=none; b=g5S6yCNHjmaLMKFdvGc7yyeMT5XJ5fwCKRV5EVPdqjWlTCOm3aRVo7xG8vJL+j1AVHsZki4I3jlFkNMa8zLeWEWl/OoTpOkhyDHgnimhyn7Nlft25Ev/m3JuA6NbtDLXvpJE2Ov39P0IDrxPs9gcClJTCMnfvSbkvTEufViALME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751608194; c=relaxed/simple;
	bh=YWNG31SMoEHB0CYwle0JyliUe+RxE10/0kcbmZ5jjZA=;
	h=To:Subject:From:Message-Id:Date; b=Def+nQZaTSNqRdfuiq7zBrNbT0d5uQRK/6Ex8K7QJhXJopZH+x+8ZpmpKfVhMcDA8hfF4Mld4YnEYGXVVY6bfBEyToov9XhMki8Jsd/AJSkqT0Q4m2KE/84MntzUq44PUftHwvV+qQM7MBCxoQuJJ4mgJKNjZFuhLqAXE7lHdx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGBZK6kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGBZK6kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0387C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751608193;
	bh=YWNG31SMoEHB0CYwle0JyliUe+RxE10/0kcbmZ5jjZA=;
	h=To:Subject:From:Date:From;
	b=pGBZK6kxZjDoGaVRWS1nVDJ2xDhudL67KGpW13G0jm8UydQJ30NE/K/kYal5GXVuh
	 SojRkjdeEmyeH+LFj8GDWFFjhJC7kwrtvgYjLluyKH0ouYx1OeHSyDCo3mowqnbPR2
	 2QKePVP+ERNZaEIq/dgibXlSih1HTxlZoZdJvAp+0ZWabr6IGMwQ+kAy8sX1USOOqC
	 DJX0apQ2KNfaGuf8cmsxOGS4WssHeFQ5o0jZbQ96p4VaZ7EYLyePa41ku6S3KwARp9
	 ChvKaHp7ecqJGIVzA6JVnFUc4xZH82jdUb/f322ei7hji6EkZ7xyEmfEu/pyRjLzmo
	 TrXpPOAnP/pVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6DBC83F09
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160819357.16661.13538704511596521762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e347000ff4b8fd6b7776cecf1a57104ea33029a42e345abf449c0c4534254f
Date: Fri, 04 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751608193
