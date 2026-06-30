Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE623EAAD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782847114; cv=none; b=FNx3LKZE60dihr/tu/ZPCWjunkCrPRiJxV9LjDvZpVyfjChwPWvT2LsH7g3kcxuhX8mwVdQP9FO0o3tQzK4GcWktX1elzSRkTQu9P6f83uCHeYv5F7bFybPyLqB2qvlofRT12g3ng/PWJSAz8krUzmvlfEDK8DOoBxHiboyl8YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782847114; c=relaxed/simple;
	bh=41r4dBVpUwjnpS+wQPtW2sCZTuM7BEJUf8qc2X8kgBo=;
	h=To:Subject:From:Message-Id:Date; b=skwfQxThUK6pdTyXfjCRugdFmXshmZS/MJQWF/UQgJRkqlbuES3aMNUK08+4jX575F7kLzo/m98TBesNuM86IvxhsqbuO2BXHXanxglj6irPSEK5+ZywqAFhm35Uu3eEr2Gjl4nxQuXP/FfmSvNTjaOPdaCleCWgzNiyTwawZ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3V6/UeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3V6/UeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6390C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782847113;
	bh=41r4dBVpUwjnpS+wQPtW2sCZTuM7BEJUf8qc2X8kgBo=;
	h=To:Subject:From:Date:From;
	b=t3V6/UePg1AVfdEs220gdlsrwIh5cCQrNaOYL32BZni9fdhoini2NHFeTthVfwxvi
	 AgzFmzLBMwHPijjAHO/6nMcbswMthH8GvMZcsBcLz5qBF+k7xAsKd4+ocqZQXgEWYL
	 G3DWSS8bYHdyXhAF2DptX5+Q2Zwn3Zq9/PGLd8ePiEOKqWND/x/M8419eTN4a7Cw/s
	 vM3Pl2psX+ssg5Pes1SgMhl5waU5oUHlQ81TweJSxCf6PSnJoK3a0I5jGHBqZnWdxV
	 jVsa3FfBSHeRutMwLy2tPYM7RCgUBRwovs2mpL3gHopV9T9fSAbpBdAErQYO9T9m6M
	 NmyULxwo/Cmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB096C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284711368.24892.12892322299773027289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d082d675f4e45bc7ab112903f2cb690cf6f4638f9dd7f68ce87104a4d88ac70
Date: Tue, 30 Jun 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782847113
