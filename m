Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E3320C
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724523954; cv=none; b=YyhQ/yyJ4aMlRI6uKRRinxQrG2hq80DXshYjySRz62H4JoO3X0Qqwpvy1x5+p6dZMhCrtYrUkx3Kg70asJ4nMzkpVJ8bUdanEVW/4hz4AKdmAArMYt5a8JP0GpHE8GUzx4J6cZbz06GaNHD3uCXoMuQI1K2GYlMBa3LFG3NJvQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724523954; c=relaxed/simple;
	bh=HiIpr926efgMwHD/NrG4I75zIXFmbpdgk0d5VTeNex0=;
	h=To:Subject:From:Message-Id:Date; b=Kjbi+ekL9AjdkzgeK2mb8F0VnHTasqqvRI3EYaLntLYhs41cAQs9sLnVqe7hJXQkUx3+AT5cD8gn3afrgXOHe+yH55PHStC0qlGnEMGIfO34n2DMDBmXNtrO2B+Ut8rZ6XhtoWvQxq0FqX/KsveXddBqKHWVr9RPuMNKVS/iuys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibA51Dmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibA51Dmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10FBC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724523953;
	bh=HiIpr926efgMwHD/NrG4I75zIXFmbpdgk0d5VTeNex0=;
	h=To:Subject:From:Date:From;
	b=ibA51DmgBH1DtDZFkCKBEUuRJo091b970otRdb2m7/nXB9bE8edLPfNkaGdBn7923
	 2bCRUp7q8VvEFK0LlJu8KSk6XJ+KHXW9dQv7W+P15kROVnetGDrAL6PjJOkMXAvb9H
	 rR48m4nPehCqpsL01+D0pdt0DoYw2RufFCh0V+KO8bCSNdxWbqOm7PIFyDjCiN6pKI
	 hegYmH4v5S2XGESIs5etH+u9uMwRkI8n8cf8V9i++oYimg6T+XWLCEhueXJVtIMlGd
	 wJcEMe2ujte4g8mCd6hL23+9gF2mSiRhM7qVAIJsFX70fRthqPx2HIffRVfT70N6C9
	 s2x7EJqRiBMiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96836C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452395359.31273.15829588619628911077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82f4fafe569d837ec71327748c9a1e3aa040a231306d56b167a7f0f51d2d114
Date: Sat, 24 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724523953
