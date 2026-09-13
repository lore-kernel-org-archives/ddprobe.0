Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670EC1BC2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789258834; cv=none; b=ckB7YVYJxS8Fkc59/q6UVQfvLGsiKEsDDP6QGPd77cg42f+EWTmNcjTH1EsUQT5JzDbHZzHC7Cf3JrxhgOJQvMxh+ik1mc6aKrrnmmHIxdsnKPIQg7aZLll0biNUULgq8zzpWA13HlOO1J/aElA6Tz5jat9tx4xdglKqQS2fH/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789258834; c=relaxed/simple;
	bh=QshpiOBaP2u4/aHDop2av1vYtRVnkrRldF+5q5kVC/Y=;
	h=To:Subject:From:Message-Id:Date; b=WDPcnjbV9K9m1JSmH+9/kjs0VSAbHb7ZLxRuxC3OEKSjo+maekg5bHhcupwYXCMrbsSLacHyarLcBGH+SFnhKcujU9J0SZGqaQ2kT5785xwwqDnGz6/7mLdvkafjbbZV37g5O2Ze1clOzjIVBOp54SBLhLv17oazCRiorukVSIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWPhzFFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWPhzFFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEE5EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789258834;
	bh=QshpiOBaP2u4/aHDop2av1vYtRVnkrRldF+5q5kVC/Y=;
	h=To:Subject:From:Date:From;
	b=fWPhzFFFV32qJIw1wJdmgd1AEIb+bYxMt/JSM/FzRw1uwBri9QK8/s0UgZ1Hh8Y3x
	 XYq6nohGaOOOtgGrSHpEOssnThxfxzUW9+3FDBJfm/CeMYQvQ3DLpdCM+TDZzFUW3z
	 QuZD7Emi+2Hrr7JtTu6UNyyQu53SbAAPMBMYtZuX/jI3Ou+WTZ1Y17J7GMnR2FCpq5
	 b9EiITFgymmCmX2X+ZZHnWp95lMk1qRO77FIYQFfzEZeDNRPusEr77jIZPaqosjPwv
	 DGC0TYkof5UiDrBtmPtfkdMnpOPzyDAXhlDhvmLzL9y90HDvhNsZkdnuyPuam5Dzpg
	 FOiNa76XLc9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB909C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925883373.30685.2784240825283902595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b467a321338e845594eea15fa13fe2000424fdaf9d5097d06e22548fe9959af
Date: Sun, 13 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789258833
