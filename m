Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C15C1C695
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786839034; cv=none; b=E7ErmqHTJ6JXDMTC4G0NruMyZl1dNkfrYDIGfOACuuWWiP2ow8VRapj7qZDW28pbfOmVnno1zdT4hFTfg/ha/1AxMAKHqPIOxpMM13D8Eu8OoJfJz3fT5ZRgo2TDHLknuPhR9wwemQoVkLA+okDTc5j3b7vkVnLS7til5LWqB10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786839034; c=relaxed/simple;
	bh=CyRXNXzF5rPbIArQc0ZG0qhFPoI5BQkZIZujTudty0c=;
	h=To:Subject:From:Message-Id:Date; b=eKwUYSHYimy8yurs6qWpxKaO+/luckv088SUPnMg88Zl+0V0304f1GADKiOVVHnorxipmqcjtisGyNVdVP9+BVBXIvFwpdQZQtoBKHkUDS7kI3ipQMjfY0yKZuXUiUsQIEdo6pPqbx6KpzlDmoHdGZzrvLBvTobBGBQLwh9Fqfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOTDZkEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOTDZkEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C938BC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786839033;
	bh=CyRXNXzF5rPbIArQc0ZG0qhFPoI5BQkZIZujTudty0c=;
	h=To:Subject:From:Date:From;
	b=hOTDZkEInQ6UHrVd44FZaWtbbzpwBTIw7v+pwzA/riGxD1qdLtxWhlAWN8eqK9s1W
	 HkZZW5Uvw7awNDJ8PaUdXLzPSu8YTShvGNdvywsN036ffeaAeJyqMGUyuAyVQkhakN
	 2BwZRR39arETirI4Wr+4A4ggpOqSbiRYIuAV1A2a4YIZbIv/JYHHxTwYKzuTwNw5Q1
	 6qitTplfMtpiFCOzhxKklv4dPbfEGv1OpiAKAsUpMwXNO1O7THi/xQzqDHt4/xoxvV
	 +sJHSy76croQpbtpz+pqDRyqxofMmNqd8e/SZb22MfckYJX7i6f9P0OJnd6FNJFbB2
	 4XR+4PIX5l0XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7DC5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683903368.11217.4414907309946004520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff2adce7b96ab0c39e73a4835c83f231b41b213bdcad1dbd3e78a5029516e81
Date: Sun, 16 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786839033
