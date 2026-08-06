Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF953B47F0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785996634; cv=none; b=Ug0MRKc+gdqk3CmlEoFQ3zFZqNBtoaTEsfxHKyL9iJXN7xTw8gqfx13hDrHmIBO8YN0L36SavK4oUiS/nPR/nZfAe4ZZnuHEL5Tj3cendtpv24KHsRFONw5BUyEstowyJZGJ0YRaAWCaOkxSUmhxvtxKEga/oiZB7dvqKK2wLog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785996634; c=relaxed/simple;
	bh=eZkqzbtSx+wcn3m/8WEbY/TxtQbPntaoLXLm/Nc0h1Y=;
	h=To:Subject:From:Message-Id:Date; b=rVqQXPzr0dqdazZBc8cTP5XAl+Z3wwKyBOKCHDSOz3VaYuhBf+M7H20JgsjFupxuWeiN5zbLSK6w3raN1ukTz+TkRqOMN7/O1/6KB6Ei61yITuJ6/Xn7JhYSgTCxh16FUSm6gehaU00qSBvfdwXTB/O7B1hLvph5d0POrIRNYqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th3svAJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th3svAJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B6AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785996633;
	bh=eZkqzbtSx+wcn3m/8WEbY/TxtQbPntaoLXLm/Nc0h1Y=;
	h=To:Subject:From:Date:From;
	b=th3svAJnV9smFjgtdvRs5676EeCslTNA3WbRUQMqoTI3K2V3Eeaq77rryVHtxWlmP
	 hwltiJHGsMdBuzdzIlR5mnsLqN+RRFR5RlfA9pdUjv6GYPT8rku/0Oib9QMwHfls5b
	 vb+ftYssi2No5G9uob2EsGh0vDNLFr9Tuo558AKfJYYxVNtADYPJv6ZAvIbO1vgcc1
	 iczpwHjOsrNij89WX2ysq4Oj7ZBhGwMGPEztuqCc7hTDyBaH2vz8lbOeGq7Bj14RUr
	 dgRtDg/dIi1PtXsOEiZVrnZ3+j0O94Yo8axLY544D72MaJnDcatWjWvIOZV3i0piZR
	 aIQAMumDuVWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B12C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599663372.22330.16339735785150611456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a87962c43f17f14c0b7bb56639a070e0420ab7cc6fda6af1ca7c7ae0bfcebb0
Date: Thu, 06 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785996633
