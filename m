Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F5E38D407
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788528034; cv=none; b=kfOOWR4Eh2p+8nBZhnFsoZwR1aT6YQhpqd+7b8Pswutt1Te7KPoRM0rGpfx63X9CwwDtqfwzkr4sfjuJawTz/F2yJ1vT+rt3g/lsmzDSzyrtL4eZIbZ4FYdUqJNI/An1P92ybZs4qKBi9FHyFYpCg2zipnVDAgjyyJwoUtxm+ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788528034; c=relaxed/simple;
	bh=BWybcjb/3/aHbuZ4difRfILBz0d7HZL6fqpNM+giN30=;
	h=To:Subject:From:Message-Id:Date; b=URoAKWepj0gswvCSPKYI/0FgMbqu8haNL2j8bphrXXh4e8Wqzi/mM7BvemqBSXxoYBPsR+hgq2w2FVqx/88hQgf3aUjCt1eZ4Y3G4t7CXKt16Kqk0s9Yx+Ge5qFXYGQTH1G8nqqBOp/FX+MezpLeSS+Hx5QydPBNUYMo6Yp5H4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYZlZ/tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYZlZ/tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D75C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788528033;
	bh=BWybcjb/3/aHbuZ4difRfILBz0d7HZL6fqpNM+giN30=;
	h=To:Subject:From:Date:From;
	b=MYZlZ/tztV9wdnP8j2jSqjxXkRoovrxEnYnQBBm2BexkiEJ2fQCgThC+q3vZT1DqX
	 jM54gBp3/m//JlGDnljRRAnDGutNhvIkTTT/SyRQ9SfhYzmdqdocQsARDHm8nAeUzR
	 5CubQjanC/SP2qPM0Coc5/2Eysh8WDJEm+oM+6QaCQSbW/0xN7+X4AsvSviycjbq4b
	 jKMaxaACjqrGngK05idfQy5CoykkpD7D5uDoKNvvqmwZPMf71oz8jVBYzB9UAbPJ4J
	 AR1uGHNfCtbeI4D/yANYdqGXIxKsUE77p/0M/ivYnLzZ+p6dYjIz/v1gbAu9pwytej
	 JKHBDzbUh9prg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA4BC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852803370.30441.1478324849093395046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e310ec471ef5fb320878b1b8b9d9f245a04f917eeaae5fcf69af61b702f7a7
Date: Fri, 04 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788528033
