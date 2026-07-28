Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4260D38F935
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785257434; cv=none; b=ERLx0YMAJPBftikpcWA4TrqKZFVD4DtSScRtsr4/k9IbUFJwaXVxiOT3/71FHyHFqrRy79IVnMXgAJ0aUMWrV+wnsj9syHK3SntROlzKdpabgNV/7yfsbiQBNNROU+2+PjTiRZoxxRKJuXnlzcVGDzhiY73khB198cWSl79T064=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785257434; c=relaxed/simple;
	bh=vIc125v0eQ6i0yeK1MxJwzCXDQtO+Zip2yxZmCCYHJY=;
	h=To:Subject:From:Message-Id:Date; b=L+rgd5o4vnKjooxqpLND60j+WbEE1pCtpncgtxBBz6qLp1glm4Amv7LIGb/ltVhQX/vXnmQDVAQ5YGprggQbce5Aw4kfAst7r/niBtqHlK6Qha9O7F7lYdNM98RCnSitNmvGmLpTba05oxG5LQnaNGsrU5R/6ZLhn7DbmskTbaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdrF6lfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdrF6lfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB190C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785257433;
	bh=vIc125v0eQ6i0yeK1MxJwzCXDQtO+Zip2yxZmCCYHJY=;
	h=To:Subject:From:Date:From;
	b=QdrF6lfxANlfG/TQIuCvgmajEX5lT/s0zAi7Rw+aHmR0FSwuR6E/T16ix02iHB3tm
	 FKDEI9SEltT+ecyBEL1tiG+S+HCKsqfL6MnjFpSPrUrTuKT+WaJvnZdGlEgq8jeal0
	 B2Rxtwxuej2KG/sKcRCphEo1SgDybCM4fdOUtxnaCAutT2zrCpvRWyZnJOSgumQQ8f
	 /5djyLnjaKjlAGBpI71MPqJ3ew7oto7202W6rJKX2kj13GG4wwZFT29k84IXYC6D2I
	 azqKX2Whm4ubOP7oEgvavjOm5eMuw08D7uLKD09DeTxhSopGz/lpYL1YRCGME7rXLY
	 hM2wW5mYyAbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9503C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525743368.4701.10880567392582948203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1e3e6fc3d73587439a163609a4393afa45e96423f9e1884d6c490ed5337d99
Date: Tue, 28 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785257433
