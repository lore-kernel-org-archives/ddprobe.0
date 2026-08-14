Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DBA43E07D
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786708834; cv=none; b=JdmxkISPLJgpA+mQ7fnGi2FhenbQdlQvkzsk1mv6DvJSx9uIbGkvinjOxNIpcuBKhoex8a51aZdF02+/uwKxiwdkke/VTAU6alLEXYP+UXYpTiFsFhhXYYy34m69MfvkdwHSQZOI/7NjTjyrn/3bcq210PnI8J/UY+K9oWv8zeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786708834; c=relaxed/simple;
	bh=pY15oWfVWNdA0Tq8iKsEm4MtBEHzebLZMPbzZUoTbOY=;
	h=To:Subject:From:Message-Id:Date; b=cuawhJH7tDhw0xzkroxeKmA/csFqyVeo/ISJsZ/LrNTrJ8hsnHTJhuT2sy4B8QY1ABxU3Vp2shGCEIxXWddG0AgDdG6YbBViJvV1mHxaC0dSE9CyRCQfQ928O7LlyL+SHaeGhprU4bU1uEqah/lWKNZMmDLoojymyMUvDsddPJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dolrdqQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dolrdqQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA79C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786708833;
	bh=pY15oWfVWNdA0Tq8iKsEm4MtBEHzebLZMPbzZUoTbOY=;
	h=To:Subject:From:Date:From;
	b=dolrdqQp4miB0XiuHFhadZFjrcvcbXaw0A+HP1KHL9sBzHzgha0obLWi6wn4XeSUm
	 b2H1Wm5pWq4ervBFqrhYhs7VhapjpS5IEiizcRlusBGQAWkL5++sBkuw3iujPi3l7E
	 o8l4qvumTeHf7qMF3lRBQufX0X9XnEtXHzbMsL0zTJ9vspAFRwdmiPnzBD0WKubyw4
	 U6XL1d3zw0ZRb9QdzcM1sxX5OA/JzJzfhXFFDluuoWlFC1Lm9WWtNexgcNyZ8hQucz
	 mTmpwOEqQTKdg6qPFfPCz2ZaYCeyQtOZXMRg5kXtWXkoefLsf5vBFI6jXH6/JPY2V0
	 9KLJCaXR0Y3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81ACC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670883368.16130.15831092748236376324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c6a43f0907f801c1b193c852408df6feb8f899fe7053162103ebc34ebf802d
Date: Fri, 14 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786708833
