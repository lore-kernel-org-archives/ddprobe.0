Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1FB2FC01B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773858293; cv=none; b=kjdtHEsY5LFllmqOwZLRptxOUGakVNrPwriTSSGSOd4YqXkoXP3f5BkLc5s1ynATNxjz7s6qssSuMrOsEkO5EB6zPqaYCIa1Vzy0VYN6/XNO6Oh1NcpCfVih1x9yJufEb5MB2UjEaLe3Pb1HeqpV7Dt6l7y4zCJ8ENEhHxAItqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773858293; c=relaxed/simple;
	bh=xPjbkwvCuXJX+b+vB5a/pcgzkUQY/pIOx7aZis2Owi8=;
	h=To:Subject:From:Message-Id:Date; b=hqEFzGjo02xkWJ7xiW9kij0yp6yRR+8eAohfmy4jk+u8KZkyckC1AVHIHoBrVxAFApGRqG/Z2vMK8mlorn9QiNmQHPx9gtjJIg5lVrn777Kq1p9miNWPcpiZbSlKeAMNzt10rWmF/lowHBVD4Ardzp49KAGomAnP5HfOBKPZQhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVuoyiIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVuoyiIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F93C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773858293;
	bh=xPjbkwvCuXJX+b+vB5a/pcgzkUQY/pIOx7aZis2Owi8=;
	h=To:Subject:From:Date:From;
	b=NVuoyiIRsnaR1fR/zZGNm3L9cfZHzoGWE8Ju4QFWaDykXq7TfF5BRYfENhYfEzAuJ
	 0EwUL8ZplfSf6nx7dzFrSbBxeBHfCwBPT/LSCQWkKqHZruzlySvbNUYeNyYSM609h1
	 qHlGQ0ZWoF2TTq8/eJ4UQxGvxX4jA/Rg7dLKRqbgMrVIEr7lp8udCLx1YVXMvKG84m
	 cieDFxru4z89yhuKj5Ji+PC+lQhuCz6I6eanilZom5ZY7EXWjMC83bSNnJ76okyhlB
	 hnGH4cr5Rpd5oDMv6iL379ZlWL+8s1MJ0jYtgMantdL3P2ClhsGG1vaR8jKuGqIjzc
	 8fp83iLyDPo9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35510775F9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385829357.14916.16639609081534127394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed1a0b2a7975e89c0721b98676e5e159b3419c0060ac23d3ceff97fc97151d3
Date: Wed, 18 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773858293
