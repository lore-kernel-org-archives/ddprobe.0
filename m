Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076A348C4C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787941834; cv=none; b=GOtLU12t1GJinnAQnIytBPjjhUYHFTD2d5Q5VzSeZGLn5JOiwrMzb7BQimVCSxaiowSyjyDavWBN8h6w3vdtcQz0akLAi8Biqs8xAlUuUD1FR76suSXHDTrPoleVbmuQb7rLx7locEp6Lz8ryoSXNNZS9jCigSr9goDQzLe6FdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787941834; c=relaxed/simple;
	bh=9+IMFFFapY9gf8Zl6101HO0pGxNzxgE0jaaB3G9IhKw=;
	h=To:Subject:From:Message-Id:Date; b=HEQ+Qe+0m960/qVSDnXKUzpsBPXoj0FmaoT9IH8gwdOezOwN+YUr7xdvs6BFIqDVrCAOgtwiSobdwrs666fkfoQaNlchrqBv/5JCgVb21EnVCLolmmf4NSAFo1nTwThP/pFLmoZI8AjJscHljrNNRvrLs0hTIqBUN8HFiTk196g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nuv6ICm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nuv6ICm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2919C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787941833;
	bh=9+IMFFFapY9gf8Zl6101HO0pGxNzxgE0jaaB3G9IhKw=;
	h=To:Subject:From:Date:From;
	b=Nuv6ICm++0jl2Admjxe3UGBup+YfUXyZYCAcgGDdT2dy44mN7bBaWUgPnpPD61rZv
	 M7o540c3i933z0QoJiqf9w1WODT5d90eUbF9wPPPtpkmABKke7A8gbtRxxsWHjlKfq
	 TufBGux47Sqw1n8cUl8cwlwMJcCs6I0mqTYZToFcBdTMVUoCWslNy9YvZmhynmMa8Z
	 yTNPY49TWeYaaSDUZERauaBYX2F7bAh/lL2xkajpfTWXb+Ts11RNkHEqHmiR3EORM8
	 1n5jwKlUSWEV/dTs1y5Ullw9bo0jcc2PHkmRp41DS7276CxX1gWw8rtZ1gTDqpwuNQ
	 Nm9RUhMwpsKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD26DC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794183370.6059.2173002850291951765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc26fed47ca595edd777d66a60b3319db89f474b7931cbc82bbded00364ca5fe
Date: Fri, 28 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787941833
