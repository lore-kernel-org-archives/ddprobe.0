Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2085A20E31C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765747374; cv=none; b=uoCR1BP+mLd/bbInsIJKliRtwcs8bt/3S2XX8lIf0/U8LnN5eF1Smfm3yubPXiD4cVKUJ8t2FA8V82StKRs4Ehx/jLoxxDMx2gLgNafHj//8xd5Fq3kjeWsRSH4uDbx4mwrg8t0tGJGUh6o1IykgodyZLwikHzxGQnSBv9ftQGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765747374; c=relaxed/simple;
	bh=ZE7ErdMQ/njBbkaifl2ed0ByzF0U19DkvuuGR/u6Zww=;
	h=To:Subject:From:Message-Id:Date; b=d45ljrn00ZyPNbJXOJrwHQ+OLKy3mgl/7YJcVf52V3mj1RCa4jzKnwutlb1CxxHm18Ph+i95fjaky6NzxlRdTkhVg6pqLGueRQ+52WVhrKwM9LOJz32zn7NZI1PbhTGo2/w6deCOGZjaytrdXIoEDWggrPj/kKQaVHJJNHePNFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGRd0QCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGRd0QCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C06C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765747373;
	bh=ZE7ErdMQ/njBbkaifl2ed0ByzF0U19DkvuuGR/u6Zww=;
	h=To:Subject:From:Date:From;
	b=OGRd0QCD/HfnTfmrAg+EU349Tcnj3Ek484dborsEFXQTIu4Nrd0Bo5fyW/ezGnNnA
	 LSYnTqs5g5S5LeinroVSSA6mzHUo6f6prr+af78C8Bfe3C0jdI5JJlhlftv7omuXe9
	 0sSXd+PdCiBbPxgOdlCAqRtLaaRyGHUBf0DlOVcUEFms/9ZcNRw00PEP6ObGXS8xDT
	 Un8ZySQ9XXuijRqotPtQuzC3Q3ktrm7APUe/VL9SFvLsbcgoqmGevhv68g1E//0wEl
	 qyJgVFmHym0F1UcPnxXgtmb1CRgqXTUqMIfD/Js0X/41PhleBEpU/OTfqrPMWr8e+H
	 SgRvfdZaQw5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E9D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574737358.6466.5493828264583625515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb98c530e7ea8a370a9108fa5cd7460696dae70a36a11882fc01f0ba1687476
Date: Sun, 14 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765747373
