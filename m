Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA2F19CC0C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780239874; cv=none; b=carppFVmehpKyWDgC8kmCcEBRdiKJxw5sjhCJ4Btvp2+e2ePHJUDWt/dgnv/Sqac+rxuVVBsNlzAPL7zcVFVMqH1uPF41DDQEvF61ybjjPVH9cSvxJAGonjAo4lFxmjL41XC9cC8MwRWIYwVU64wxkgvbDHT3o556sufBt/4vNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780239874; c=relaxed/simple;
	bh=xWsFGbRRepOh5ZXlF5MIvGlHyWQsnTL3uz2eCR4fs7s=;
	h=To:Subject:From:Message-Id:Date; b=VgnbyZewEw+QokledVMTvTqYSn36kSqLBbHC1e6HiY4tyNptmhM0u3v1ZYDXME8+KPz+0RDfXL3mUWoCIxT6qkMvWNahjDj8G3it7j4dyw1RlPyWlbfxiia+K7n6bDBOMLQvExj9HRdnCbKrQF66iyNXH11KqPgmOoXPQKkqULs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFgy/JA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFgy/JA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B4DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780239873;
	bh=xWsFGbRRepOh5ZXlF5MIvGlHyWQsnTL3uz2eCR4fs7s=;
	h=To:Subject:From:Date:From;
	b=AFgy/JA/s028tLuBsxT2hkadH4ag6gLRuzvWh0wJdMKV4Y0Wfg7He3Kf8h1+pi+97
	 R572UulDDy+QsG0+rhQQQz732XCJvv3yImukcpN9KsT9F3bbJQvbIuBA6FKyuImJhO
	 jjxYQ8LjyNzxnl/eL0VZZwYt6ofLD3W5jJrlJX2FQcliyH8ibYlF8IoTu/pHP1WQ9o
	 y4CtWhE+GXDunJbflO05fLWe+VzaG6SPXn7cuF7n2YjXZd5cQcBv63B13K0ynTXQB2
	 vJv7ZbTACkVHXqS2i5goTR44TG413omM4krRK6WNZNKFXcVU1FDNvQZHweD24Ep2UK
	 rufRgHgpDAo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE511CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023987369.29768.14316544986398834983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850b38718f44f51d4e16ab1071f9cd63b4dff4f45f28afbf2d0cfcab274408f6
Date: Sun, 31 May 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780239873
