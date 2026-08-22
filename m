Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533DC2EBDE9
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787433034; cv=none; b=uICRE4mdogmHYo/dFx8/IapmUIc6PVLJDRqJbW5idKIHQUCjta+n4nJavqKmSoQjaPWvWdJz8g5bJTe77jV9e3Vt0atRVhtvTT/CvUSIfHE2+4ymOErNi2XA8OmkiB3cd60FBJkiKDstMs5y53Q2BjKMFi2An2peN7FUMspqHLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787433034; c=relaxed/simple;
	bh=uAyeF0VXmAfLTQh40bzqdsEYJC8oGUDMq4fdPAtTSS8=;
	h=To:Subject:From:Message-Id:Date; b=lqhKncjrUDRRR4S9IkGvsfgadgevCMLzpI9HQonhKDAiNB56wA2YPFK6oEVWKytYGH2iX7VpI806LkhYm8qgNV+dt/0xCVyyv1LmFNAo8GaGl5Wd8zi4Lthpcbbeks5TtfMlwyA9txlPC+5fbXpbGStfVNyQwr41M2sNGLxh9Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf9L3dxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf9L3dxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE2DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787433033;
	bh=uAyeF0VXmAfLTQh40bzqdsEYJC8oGUDMq4fdPAtTSS8=;
	h=To:Subject:From:Date:From;
	b=Kf9L3dxO1Mjm95jripkKVFQaPbIwgk1z7bctxyPaaVBYch5YjkaKDO+p5yGbNHDNV
	 /j10dhI/YE1mqwF1Nn05WK7cvUrAaYKAIDhMed034wN0bcqCdt6rO7ngQKhDe7PKFq
	 zZ+gpDRUUEpkvcMe4uxo/k/Bl8wOOkZnqZNubPsAK14mAO7sUbeUIAIIrNEcW2smno
	 QplGknNeQkvldGU6bJX9iXV90WKuC/OhHOOIsk37bYozdrCKglk2xrwZ3XzeOXshP4
	 nPzytakGvI0KnP3URTplVQExwzVMYFVOBHd2OE+sj81h6rcHwYcHGYoJWFM2+4+cVt
	 DAvlSmMyC8e2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D99C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743303372.22666.3455008267842031725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307fcba3153a41caa87a051416924b1e2297f31d08e3828d60c9bff8be975c8c
Date: Sat, 22 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787433033
