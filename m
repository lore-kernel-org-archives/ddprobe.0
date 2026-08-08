Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1059017BED0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786179634; cv=none; b=V7jHHEiRO8DP9izWZj6ihiDWsSUa9ak5DCvjKS/fbMyaFXRxKiU0b/N0rLxrVJM9Xvif5qdJgtuZ9Zg8IUOVrW65qlgSz7/qCuqP1gQUO8Ar0XSIg1Zz4QbPVYG8JsHZt+TtbXRtB9cLJy2PbWi/hFelHGenYVvCUR+pwjXecpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786179634; c=relaxed/simple;
	bh=HNjFGHb0955ltJfy72mqRp9CZ8hgP/ClaKTtV3t8URU=;
	h=To:Subject:From:Message-Id:Date; b=JSUPCb4x0BUExhhcMet4IsSoZMtgzsPAViUMmBR/ymdvRBCJLalD2EzxPa1G7thF7siRM2O8Gr3tk/pVYZROiFOURCBGdMAhACOz51jKX4N+9uz4P2JLxrF9wn4W7RnuF3aCDe1JyE2394jseVqnKbAsNuv8uwq5B/ilx2nKV4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZV86r+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZV86r+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786179633;
	bh=HNjFGHb0955ltJfy72mqRp9CZ8hgP/ClaKTtV3t8URU=;
	h=To:Subject:From:Date:From;
	b=SZV86r+EM6CSg4QkN9pvF4Dw236eVVGxmZChnNl+Lrg+qZS6pK30EKdtCg58smXJ1
	 l0GY2o//4br2Quni0p5lx6iW5YUPzYXDoZ46nRaE2qDSfqJUUKV5MT88WWRzpc0hCa
	 J4Gx1s5YQXk60blQYOT2/wq8Hu9L60f78vpidhSUWBjo+GM1MSZ5hfTgM7s086udem
	 VqV00l9DzH0Nju2lWDRBbg3f4JRcGs3Elj4G2Q4Z4FLGb/sjqDfmxh2u6AMlS5p9zW
	 f89M5cHb9R5c7qXx4BQllKUWBCd9KmQ9eAltwJb0Xr+/XQgpTpG2tAzOr+WjKFRnyz
	 qMu5S8GcRdZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20E2C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617963371.527.15200225970010435522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab57ed50ebfa823e478fb1ff2a41a76b63362810f1f44eab6344f7104a53fe0f
Date: Sat, 08 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786179633
