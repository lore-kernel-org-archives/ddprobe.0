Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12807243367
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777306054; cv=none; b=j5TbgeN97Hhoyk1weiWXMh6OKKEpRRVzlLa/bxsdSvE1W+2TiLmyx9ieL16q2ova1mfX/48llDb9s45x8h8WybKWTu8OTvEkmKFZBtrbJksuItjJI+sQg91QuIl834BluawMye0DqT4OQc0+b/DKN+8cEdZg2xtXYWXH+jRuB5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777306054; c=relaxed/simple;
	bh=p7KK8KEEDKamJkUWEHCYW9F8y0RvrF2KVqm/gbczECI=;
	h=To:Subject:From:Message-Id:Date; b=qioV3n+6KehPMaFQgCAzj3zoY8PLRw7ga6NgZFWzJ4a6GgcgvITVi8Ruo5kzlIDIaA2YpD78Kjxn6uLlO41jQWIudQUc7LpI0zDVjnxjOo+yrvTo3OWM+KUGSPgOaT/DAJbI1do1GZ8O+XlZccNpE0dS/52VoZMdIRapVZ03IfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0DjzZ+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0DjzZ+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9483C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777306053;
	bh=p7KK8KEEDKamJkUWEHCYW9F8y0RvrF2KVqm/gbczECI=;
	h=To:Subject:From:Date:From;
	b=F0DjzZ+OgQp/PHBD0jam6j3la+yTcJ9whu9S+20CrBrEineG3wbAez7MEaZt2+hZb
	 dhjBI60AqhMYZyk70q3fwbnhiCaFgWpnPaLqOMevJDHimaLRwJGlzr6f7Tp6jzTqa0
	 nziHWo6mVbHq92tEvNGxdeY9YTXBJHxBy9WnSNIBDj1vBhzOnYnoYhbkBldiYBdzFr
	 klaawcs+3ZsO0ioeCZcSSBCO7wsz8TrlfqZy7g5C9mHOU+hA6kMhVUPr3UvaAIkKnu
	 7z/TN3fTm2l5QNuWRxN2JEOIo5RZCu4yG7QIdxLxx1y1Z5gWloDJVxV6oKHojMqhSq
	 LpnCseFitx+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBFFF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730605368.16384.14066619695994887972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622c9cb54be703513d79d390c57f20241d30dec23ff71dcd673134793b0a4382
Date: Mon, 27 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777306053
