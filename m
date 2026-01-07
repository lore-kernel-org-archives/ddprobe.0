Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21232A3F5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794634; cv=none; b=fiemFcdB0LnbfCmmO8yFlvGSA/BI0ZwwD763CUjsT5Kk2E82wxMC2dpBx12piTBnliljcNy0l+U53jbV/5vdAcLHsEtxWEGibesmYCqaXcHxljuBkI5Vcb0R0nInNyLfOmFxwB7fRL8BQTuC3tOhyC6MjfAdS1J1ovuAOjP37l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794634; c=relaxed/simple;
	bh=+FKo2rdeTvUKtSOmc9tL9zyGEsKqGq6WNPNIKu66ek8=;
	h=To:Subject:From:Message-Id:Date; b=Kz8gXtgQ5mqVwRoig7Iiyvo5wPuPiPO5n8vcD/Ari0bQkFbx4M1jaj1Icn6q8PFMOeIUIlxZEbVj1lwClYvv/T0EkS2/hoaKrvGtBxTwG4XAVJJktkbpDxR3tVBOI7ZK7PR6BOCbDt8vCZaV2Atu5KyKdurNFqDy7bUPM601khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFHb+CZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFHb+CZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A359C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767794633;
	bh=+FKo2rdeTvUKtSOmc9tL9zyGEsKqGq6WNPNIKu66ek8=;
	h=To:Subject:From:Date:From;
	b=NFHb+CZJMLFoaaxfUWV+uzGqinEOAmSs0b/yTSRfVYpYoz8sgtlRxMqWZcrtoWVv8
	 gmhI6XIZ/I6jHcAoZGXBnZnP/QKxC5CIh+J+1g1LADbu/NwiTifA50p74sxEOBDr/H
	 TRaflE+8wEP4A4shyxRFWNHGEFIO4sUGQ3/CWXaGzuAn1PqZvh4/rqprYuyBQL9bON
	 DImFfiTOHRmv9C74m0/k+xmIaPu5QevXXTEfvTT4N0qBb0Z8e+kpiSsLQLhVH4HLcu
	 LvzObrsr5T0iIO1mrZL+h8ETWZvDs05Im7RK388+toKiIOIzl/bBvRd+YxYMr8szmY
	 RtEwIzA7wM/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC4CFD637
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779463357.25524.17710250126096826812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba059fb02a00f8571aec407081c7998edaab85471fc8ad11f9c37ffdae0d8f7
Date: Wed, 07 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767794633
